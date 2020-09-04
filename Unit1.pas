unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ADODB, Menus, ExtCtrls,
  DBCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    ADOQuery1: TADOQuery;
    PopupMenu1: TPopupMenu;
    demeYap1: TMenuItem;
    Raporla1: TMenuItem;
    ADOQuery2: TADOQuery;
    ADOTable1: TADOTable;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1OZEL_SIFRE: TWideStringField;
    ADOTable1ADI: TWideStringField;
    ADOTable1SOYADI: TWideStringField;
    ADOTable1TOPLAM_BORC: TIntegerField;
    ADOTable1YUKLEME_TARIHI: TWideStringField;
    ADOTable1KALAN_BORC: TIntegerField;
    ADOTable2: TADOTable;
    ADOTable2Musterinin_Adi: TWideStringField;
    ADOTable2Musterinin_Soyadi: TWideStringField;
    ADOTable2Odeme_Miktari: TIntegerField;
    ADOTable2Tarih: TWideStringField;
    ADOTable2Saat: TWideStringField;
    ADOQuery3: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);


    procedure BitBtn1Click(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure demeYap1Click(Sender: TObject);
    procedure ADOTable1CalcFields(DataSet: TDataSet);
    procedure Raporla1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);





  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  gridad,gridsoyad: string; //gerekli de�i�kenleri tan�ml�yoruz
  miktar:integer ;      //gerekli de�i�kenleri tan�ml�yoruz
  girilen:string;       //gerekli de�i�kenleri tan�ml�yoruz
  kalanborc:integer;     //gerekli de�i�kenleri tan�ml�yoruz
implementation

{$R *.dfm}
uses unit2;  //form2 yi form1 e ba�l�yoruz







function temizle: string;  //kay�t yapt�ktan sonra alanlar� temizlemek i�in temizle function u tan�ml�yoruz
begin                //ba�la
form1.edit1.clear;  //edit1 tamizle
form1.edit2.clear;  //edit2 temizle
form1.edit3.clear;  //edit3 temizle
form1.edit4.clear;   //edit4 temizle
form1.combobox1.itemindex:=-1 //combobox1 i se�ilmemi� olarak ayarl�yor
end;      //bitir

function dusukduzey: string;   //random �ifre olu�turmay� fonksiyon ile yapt�m d���kd�zey fomkisyonu
var
  metin: string;  //metin ad�nda string tan�mlad�k
begin   //ba�la
  Randomize;  //kar��t�rma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';  //varolacak harfleri ekliyoruz
  Result := '';  //sonu�
  repeat  //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];   //her tekrarda randon bir karakter ekletip uzunlu�a 1 ekliyoruz
  until (Length(Result) = 4) ;  //�ifre 4 haneli olaca��ndan uzunlu�u 4 olana kadar devam edecek
  form1.edit4.text:=result  //edit 4 �n textine result u yazd�r�yoruz
end;   //biti�


function ortaduzey: string;    //random �ifre olu�turmay� fonksiyon ile yapt�m ortad�zey fomkisyonu
var
  metin: string;    //metin ad�nda string tan�mlad�k
begin   //ba�la
  Randomize;           //kar��t�rma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';     //varolacak harfleri ekliyoruz
  Result := '';          //sonu�
  repeat           //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];  //her tekrarda randon bir karakter ekletip uzunlu�a 1 ekliyoruz
  until (Length(Result) = 6) ;     //�ifre 6 haneli olaca��ndan uzunlu�u 4 olana kadar devam edece
   form1.edit4.text:=result       //edit 4 �n textine result u yazd�r�yoruz
end;    //biti�

function yuksekduzey: string;   //random �ifre olu�turmay� fonksiyon ile yapt�m y�ksekd�zey fomkisyonu
var
  metin: string;     //metin ad�nda string tan�mlad�k
begin     //ba�la
  Randomize;          //kar��t�rma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*^+%<>!';   //varolacak harfleri ekliyoruz
  Result := '';            //sonu�
  repeat                    //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];  //her tekrarda randon bir karakter ekletip uzunlu�a 1 ekliyoruz
  until (Length(Result) = 8) ;    //�ifre 8 haneli olaca��ndan uzunlu�u 4 olana kadar devam edece
  form1.edit4.text:=result        //edit 4 �n textine result u yazd�r�yoruz
end;   //biti�







procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);     //edit1 in keypress i
begin         //ba�la
if (key=#13) then begin        //edit1 de enter e bast���m�zda edit2 ye gemek i�in #13 enter ascii kodu
edit2.SetFocus;  //edit2 ye git
end;  //bitir
end;  //bitir
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);   //edit2 in keypress i
begin      //ba�la
  if (key=#13) then begin //edit1 de enter e bast���m�zda edit2 ye gemek i�in #13 enter ascii kodu
edit3.SetFocus;   //edit3 ye git
end;end;


procedure TForm1.FormCreate(Sender: TObject);    //form create si
begin
form1.Caption:='B�LG� G�R�� EKRANI  |  '+datetostr(date)+'  '+timetostr(time);  //form caption �na tarih saat ve metin ekliyoruz
 if combobox1.text='' then button1.enabled:=false; //combobox tan �ifre d�zeyi se�ilmesi button false olur
while NOT ADOQuery1.Eof do begin    //adoquery1 den combobox1 e �ehirleri �ekiyoruz
   ComboBox1.Items.Add(ADOQuery1['duzeyler']);   //d�zeyler tablosundan �ifre d�zey isimlerini �ekiyoruz
   ADOQuery1.Next;     //next komutuyla s�ras�yla �ekiyoruz

   end;

end;


 procedure TForm1.ComboBox1Change(Sender: TObject);     //combobox change i
begin
 if combobox1.text='' then button1.enabled:=false   //combo bo��sa buton deaktif olur
else
button1.enabled:=enabled;    //doluysa buton aktif olur
end;


procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);   //combobox1 in keypressi
begin
Key := #0;    //elle yaz�lmas�n� engelliyoruz key ine 0 yap�yoruz yan� hi�bi�ey
end;



procedure TForm1.BitBtn1Click(Sender: TObject);   //button clicki  (butona bas�ld���nda)
var
sayac2 :integer;  //ad soyad bor� girmeden kay�t yapmamas� i�in garantiye almak i�in saya� ekledik
begin
sayac2:=0  ;  //sayaca 0 verdik
if edit1.text=''then begin showmessage('AD G�R�LMES� ZORUNLUDUR') ;sayac2:=sayac2+1  //edit bo�ssa sayaca 1 ekler  ve kendine ait mesaj verir
end
else
if edit2.text=''then begin showmessage('SOYAD G�R�LMES� ZORUNLUDUR'); sayac2:=sayac2+1  //edit bo�ssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else
if edit3.text=''then begin showmessage('BOR� G�R�LMES� ZORUNLUDUR'); sayac2:=sayac2+1 //edit bo�ssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else
if edit4.text=''then begin showmessage('��FRE T�RET�LMES� ZORUNLUDUR') ; sayac2:=sayac2+1  //edit bo�ssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else //de�ilse yani �sttekiler tamamsa
 ADOQuery2.close;  //adoquery i kapat
ADOQuery2.SQL.Clear;  //m��teri ad� ve soyad� ile filtreleme i�in sql kodu yaz�yorum
ADOQuery2.SQL.Add('select * from musteriler where');   //sql kodu ekliyoruz
ADOQuery2.SQL.Add('ADI="'+Trim(Edit1.text)+'" and SOYADI="'+trim(edit2.text)+'"');  //ad� ve soyad�yla tarama yapma sql komutu
ADOQuery2.Open;      //adoquery i a�
if (ADOQuery2.RecordCount >0) then ShowMessage('S�STEMDE BU �S�MDE KAYIT VAR KAYIT TEKRAR YAPILAMAZ ')  //e�er adoquey de sonu� bulunursa hata mesaj� verir
else   //de�ilse
  if (sayac2<=0) then begin //e�er editler tamsa ve bu sayede sayac i�lemediyse �al���r
case MessageDlg(edit1.text+' '+edit2.text+' '+edit3.text+         //onay penceresi a��l�r
' Bor� kayd� yap�ls�n m�?',mtConfirmation,[mbYes,mbNo],0) of   //isim soyisim yazarak kay�t onay� ister
mrYes: begin  //e�er onay verilirse yap
 ADOTable1.Insert;   //adotrable1 e gri�
ADOTable1.FieldByName('OZEL_SIFRE').AsString:=edit4.text;     //�ifreyi edit 4 den str�ng �eker
ADOTable1.FieldByName('ADI').AsString:=edit1.text;             //ad�n� edit1 den string �ker
ADOTable1.FieldByName('SOYADI').AsString:=edit2.text;           //soyad�n� edit2 den string �eker
ADOTable1.FieldByName('TOPLAM_BORC').AsInteger:=StrToInt(edit3.Text); //toplam borcu //edit3 den integer e �evirerek �eker
ADOTable1.FieldByName('YUKLEME_TARIHI').AsString:=datetostr(date);     //y�kleme tarihini datetostr ile �ektitiririz
ADOTable1.post;

ShowMessage('B�LG�LER KAYIT ED�LD�.'); //onay mesaj� veriyor
end;  //mryes endi
mrno: //e�er onay penceresine hay�r denilirse
begin
temizle;     //temizle ad�ndaki fonksiyonumuzla t�m alan�ar temizlenir
end;
end;
end;
end;





procedure TForm1.Button1Click(Sender: TObject);     // �ifre t�retme buton clicki
begin
  if combobox1.itemindex=0 then dusukduzey     //e�er index 0 sa d���kd�zey �ifre function umuza g�nderir
  else
  if combobox1.itemindex=1 then ortaduzey     //e�er index 1 sa ortad�zey �ifre function umuza g�nderir
  else
  if combobox1.itemindex=2 then yuksekduzey    //e�er index 2 sa y�ksekd�zey �ifre function umuza g�nderir
end;






procedure TForm1.demeYap1Click(Sender: TObject);  //bor� �de popup men�s�
     var
musad,mussoy:string;  //gerekli de�i�kenlerimizi olu�turuyoruz
f: Textfile;     //textfile f olarak al�yoruz
begin
girilen:= InputBox('Ne kadar �deme yapacaks�n�z?', 'BOR� �DEME',''); //inputboz caption ve metinleri d�zenine g�re yaz�yoruz
miktar:=strtoint(girilen);  //girilen de�i�jenini integer olara miktar aktar�yoruz

musad:=ADOTable1.Fieldvalues['Adi'] ;  //mouse ile se�ilen ki�inin ismini musad a ekliyoruz
mussoy:=ADOTable1.Fieldvalues['Soyadi'];  //mouse ile se�ilen ki�inin soyad�n� mussoy a aktar�yoruz

             //m��terilerin �demelerini �demeler tablosuna kayd� i�in
ADOTable2.Insert; //adotable 2 ye giri�
ADOTable2.FieldByName('Musterinin_adi').Asstring:=(musad);  //ad� sekmesini string olarak musad dan �ektik
ADOTable2.FieldByName('Musterinin_soyadi').Asstring:=(mussoy);  // soyad� sekmesini string olarak mussoy dan �ektik
ADOTable2.FieldByName('Odeme_miktari').AsInteger:=(miktar);   // miktar sekmesini integer olarak miktar dan �ektik
ADOTable2.FieldByName('Tarih').Asstring:=datetostr(date);   //tarih sekmesini string olarak datetostr dan �ektik
ADOTable2.FieldByName('Saat').Asstring:=timetostr(time);   //saat sekmesini string olarak timetostr dan �ektik
ADOTable2.post;

AssignFile(f, '.\soru\odeme.txt'); //ayn� zamanda yap�lan �demeyi txt ye de kaydedece�iz
append(f); //dosyay� a��yoruz
Writeln(f,musad+' '+mussoy+' '+inttostr(miktar)+' '+datetostr(date)+' '+timetostr(time));  //kaydededicek bilgileri aralar�nda bo�luk ile yazd�r�yoruz
Closefile(f); //dosyay� kapat�yoruz

end;


procedure TForm1.ADOTable1CalcFields(DataSet: TDataSet); //kalan borcu yazd�rmak i�in onclacfields �zelli�ini kullan�yoruz

begin
ADOTABLE1KALAN_BORC.ASinteger:=ADOTABLE1TOPLAM_BORC.ASinteger ;//toplam borcu kalan borca aktard�m

end;



procedure TForm1.Raporla1Click(Sender: TObject); //popup da raporla ya t�klad��m�zda
begin
tform2.create(self)  //form2 ye yani raporlama formuna y�nledirioruz
end;




end.
