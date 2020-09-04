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
  gridad,gridsoyad: string; //gerekli deðiþkenleri tanýmlýyoruz
  miktar:integer ;      //gerekli deðiþkenleri tanýmlýyoruz
  girilen:string;       //gerekli deðiþkenleri tanýmlýyoruz
  kalanborc:integer;     //gerekli deðiþkenleri tanýmlýyoruz
implementation

{$R *.dfm}
uses unit2;  //form2 yi form1 e baðlýyoruz







function temizle: string;  //kayýt yaptýktan sonra alanlarý temizlemek için temizle function u tanýmlýyoruz
begin                //baþla
form1.edit1.clear;  //edit1 tamizle
form1.edit2.clear;  //edit2 temizle
form1.edit3.clear;  //edit3 temizle
form1.edit4.clear;   //edit4 temizle
form1.combobox1.itemindex:=-1 //combobox1 i seçilmemiþ olarak ayarlýyor
end;      //bitir

function dusukduzey: string;   //random þifre oluþturmayý fonksiyon ile yaptým düþükdüzey fomkisyonu
var
  metin: string;  //metin adýnda string tanýmladýk
begin   //baþla
  Randomize;  //karýþtýrma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';  //varolacak harfleri ekliyoruz
  Result := '';  //sonuç
  repeat  //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];   //her tekrarda randon bir karakter ekletip uzunluða 1 ekliyoruz
  until (Length(Result) = 4) ;  //þifre 4 haneli olacaðýndan uzunluðu 4 olana kadar devam edecek
  form1.edit4.text:=result  //edit 4 ün textine result u yazdýrýyoruz
end;   //bitiþ


function ortaduzey: string;    //random þifre oluþturmayý fonksiyon ile yaptým ortadüzey fomkisyonu
var
  metin: string;    //metin adýnda string tanýmladýk
begin   //baþla
  Randomize;           //karýþtýrma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';     //varolacak harfleri ekliyoruz
  Result := '';          //sonuç
  repeat           //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];  //her tekrarda randon bir karakter ekletip uzunluða 1 ekliyoruz
  until (Length(Result) = 6) ;     //þifre 6 haneli olacaðýndan uzunluðu 4 olana kadar devam edece
   form1.edit4.text:=result       //edit 4 ün textine result u yazdýrýyoruz
end;    //bitiþ

function yuksekduzey: string;   //random þifre oluþturmayý fonksiyon ile yaptým yüksekdüzey fomkisyonu
var
  metin: string;     //metin adýnda string tanýmladýk
begin     //baþla
  Randomize;          //karýþtýrma komutu
  metin:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789+-*^+%<>!';   //varolacak harfleri ekliyoruz
  Result := '';            //sonuç
  repeat                    //tekrarlama komutu
    Result := Result + metin[Random(Length(metin)) + 1];  //her tekrarda randon bir karakter ekletip uzunluða 1 ekliyoruz
  until (Length(Result) = 8) ;    //þifre 8 haneli olacaðýndan uzunluðu 4 olana kadar devam edece
  form1.edit4.text:=result        //edit 4 ün textine result u yazdýrýyoruz
end;   //bitiþ







procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);     //edit1 in keypress i
begin         //baþla
if (key=#13) then begin        //edit1 de enter e bastýðýmýzda edit2 ye gemek için #13 enter ascii kodu
edit2.SetFocus;  //edit2 ye git
end;  //bitir
end;  //bitir
procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);   //edit2 in keypress i
begin      //baþla
  if (key=#13) then begin //edit1 de enter e bastýðýmýzda edit2 ye gemek için #13 enter ascii kodu
edit3.SetFocus;   //edit3 ye git
end;end;


procedure TForm1.FormCreate(Sender: TObject);    //form create si
begin
form1.Caption:='BÝLGÝ GÝRÝÞ EKRANI  |  '+datetostr(date)+'  '+timetostr(time);  //form caption ýna tarih saat ve metin ekliyoruz
 if combobox1.text='' then button1.enabled:=false; //combobox tan þifre düzeyi seçilmesi button false olur
while NOT ADOQuery1.Eof do begin    //adoquery1 den combobox1 e þehirleri çekiyoruz
   ComboBox1.Items.Add(ADOQuery1['duzeyler']);   //düzeyler tablosundan þifre düzey isimlerini çekiyoruz
   ADOQuery1.Next;     //next komutuyla sýrasýyla çekiyoruz

   end;

end;


 procedure TForm1.ComboBox1Change(Sender: TObject);     //combobox change i
begin
 if combobox1.text='' then button1.enabled:=false   //combo boþþsa buton deaktif olur
else
button1.enabled:=enabled;    //doluysa buton aktif olur
end;


procedure TForm1.ComboBox1KeyPress(Sender: TObject; var Key: Char);   //combobox1 in keypressi
begin
Key := #0;    //elle yazýlmasýný engelliyoruz key ine 0 yapýyoruz yaný hiçbiþey
end;



procedure TForm1.BitBtn1Click(Sender: TObject);   //button clicki  (butona basýldýðýnda)
var
sayac2 :integer;  //ad soyad borç girmeden kayýt yapmamasý için garantiye almak için sayaç ekledik
begin
sayac2:=0  ;  //sayaca 0 verdik
if edit1.text=''then begin showmessage('AD GÝRÝLMESÝ ZORUNLUDUR') ;sayac2:=sayac2+1  //edit boþssa sayaca 1 ekler  ve kendine ait mesaj verir
end
else
if edit2.text=''then begin showmessage('SOYAD GÝRÝLMESÝ ZORUNLUDUR'); sayac2:=sayac2+1  //edit boþssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else
if edit3.text=''then begin showmessage('BORÇ GÝRÝLMESÝ ZORUNLUDUR'); sayac2:=sayac2+1 //edit boþssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else
if edit4.text=''then begin showmessage('ÞÝFRE TÜRETÝLMESÝ ZORUNLUDUR') ; sayac2:=sayac2+1  //edit boþssa sayaca 1 ekler  ve kendine ait mesaj verir
 end
else //deðilse yani üsttekiler tamamsa
 ADOQuery2.close;  //adoquery i kapat
ADOQuery2.SQL.Clear;  //müþteri adý ve soyadý ile filtreleme için sql kodu yazýyorum
ADOQuery2.SQL.Add('select * from musteriler where');   //sql kodu ekliyoruz
ADOQuery2.SQL.Add('ADI="'+Trim(Edit1.text)+'" and SOYADI="'+trim(edit2.text)+'"');  //adý ve soyadýyla tarama yapma sql komutu
ADOQuery2.Open;      //adoquery i aç
if (ADOQuery2.RecordCount >0) then ShowMessage('SÝSTEMDE BU ÝSÝMDE KAYIT VAR KAYIT TEKRAR YAPILAMAZ ')  //eðer adoquey de sonuç bulunursa hata mesajý verir
else   //deðilse
  if (sayac2<=0) then begin //eðer editler tamsa ve bu sayede sayac iþlemediyse çalýþýr
case MessageDlg(edit1.text+' '+edit2.text+' '+edit3.text+         //onay penceresi açýlýr
' Borç kaydý yapýlsýn mý?',mtConfirmation,[mbYes,mbNo],0) of   //isim soyisim yazarak kayýt onayý ister
mrYes: begin  //eðer onay verilirse yap
 ADOTable1.Insert;   //adotrable1 e griþ
ADOTable1.FieldByName('OZEL_SIFRE').AsString:=edit4.text;     //þifreyi edit 4 den strþng çeker
ADOTable1.FieldByName('ADI').AsString:=edit1.text;             //adýný edit1 den string çker
ADOTable1.FieldByName('SOYADI').AsString:=edit2.text;           //soyadýný edit2 den string çeker
ADOTable1.FieldByName('TOPLAM_BORC').AsInteger:=StrToInt(edit3.Text); //toplam borcu //edit3 den integer e çevirerek çeker
ADOTable1.FieldByName('YUKLEME_TARIHI').AsString:=datetostr(date);     //yükleme tarihini datetostr ile çektitiririz
ADOTable1.post;

ShowMessage('BÝLGÝLER KAYIT EDÝLDÝ.'); //onay mesajý veriyor
end;  //mryes endi
mrno: //eðer onay penceresine hayýr denilirse
begin
temizle;     //temizle adýndaki fonksiyonumuzla tüm alanþar temizlenir
end;
end;
end;
end;





procedure TForm1.Button1Click(Sender: TObject);     // þifre türetme buton clicki
begin
  if combobox1.itemindex=0 then dusukduzey     //eðer index 0 sa düþükdüzey þifre function umuza gönderir
  else
  if combobox1.itemindex=1 then ortaduzey     //eðer index 1 sa ortadüzey þifre function umuza gönderir
  else
  if combobox1.itemindex=2 then yuksekduzey    //eðer index 2 sa yüksekdüzey þifre function umuza gönderir
end;






procedure TForm1.demeYap1Click(Sender: TObject);  //borç öde popup menüsü
     var
musad,mussoy:string;  //gerekli deðiþkenlerimizi oluþturuyoruz
f: Textfile;     //textfile f olarak alýyoruz
begin
girilen:= InputBox('Ne kadar ödeme yapacaksýnýz?', 'BORÇ ÖDEME',''); //inputboz caption ve metinleri düzenine göre yazýyoruz
miktar:=strtoint(girilen);  //girilen deðiþjenini integer olara miktar aktarýyoruz

musad:=ADOTable1.Fieldvalues['Adi'] ;  //mouse ile seçilen kiþinin ismini musad a ekliyoruz
mussoy:=ADOTable1.Fieldvalues['Soyadi'];  //mouse ile seçilen kiþinin soyadýný mussoy a aktarýyoruz

             //müþterilerin ödemelerini ödemeler tablosuna kaydý için
ADOTable2.Insert; //adotable 2 ye giriþ
ADOTable2.FieldByName('Musterinin_adi').Asstring:=(musad);  //adý sekmesini string olarak musad dan çektik
ADOTable2.FieldByName('Musterinin_soyadi').Asstring:=(mussoy);  // soyadý sekmesini string olarak mussoy dan çektik
ADOTable2.FieldByName('Odeme_miktari').AsInteger:=(miktar);   // miktar sekmesini integer olarak miktar dan çektik
ADOTable2.FieldByName('Tarih').Asstring:=datetostr(date);   //tarih sekmesini string olarak datetostr dan çektik
ADOTable2.FieldByName('Saat').Asstring:=timetostr(time);   //saat sekmesini string olarak timetostr dan çektik
ADOTable2.post;

AssignFile(f, '.\soru\odeme.txt'); //ayný zamanda yapýlan ödemeyi txt ye de kaydedeceðiz
append(f); //dosyayý açýyoruz
Writeln(f,musad+' '+mussoy+' '+inttostr(miktar)+' '+datetostr(date)+' '+timetostr(time));  //kaydededicek bilgileri aralarýnda boþluk ile yazdýrýyoruz
Closefile(f); //dosyayý kapatýyoruz

end;


procedure TForm1.ADOTable1CalcFields(DataSet: TDataSet); //kalan borcu yazdýrmak için onclacfields özelliðini kullanýyoruz

begin
ADOTABLE1KALAN_BORC.ASinteger:=ADOTABLE1TOPLAM_BORC.ASinteger ;//toplam borcu kalan borca aktardým

end;



procedure TForm1.Raporla1Click(Sender: TObject); //popup da raporla ya týkladýðmýzda
begin
tform2.create(self)  //form2 ye yani raporlama formuna yönledirioruz
end;




end.
