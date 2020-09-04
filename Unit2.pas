unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB, Grids, DBGrids, ComCtrls,
  RpCon, RpConDS, RpDefine, RpRave, RpBase, RpSystem;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery1: TADOQuery;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    RvProject1: TRvProject;
    RvProject2: TRvProject;
    RvProject3: TRvProject;
    RvProject4: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    RvDataSetConnection2: TRvDataSetConnection;
    RvDataSetConnection3: TRvDataSetConnection;
    RvDataSetConnection4: TRvDataSetConnection;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses unit1, Math; //unit 1 i ekliyoruz

procedure TForm2.CheckBox1Click(Sender: TObject);   //checkbox1 in clicki
begin
if CheckBox1.Checked  then  //check atýlýnca
checkbox2.checked:=false ;  //checki kaldýr
checkbox3.checked:=false;   //checki kaldýr
checkbox4.checked:=false ;   //checki kaldýr
end;

procedure TForm2.CheckBox2Click(Sender: TObject);  //checkbox2 in clicki
begin
if CheckBox2.Checked  then    //check atýlýnca
checkbox1.checked:=false ;     //checki kaldýr
checkbox3.checked:=false;       //checki kaldýr
checkbox4.checked:=false ;      //checki kaldýr
end;

procedure TForm2.CheckBox3Click(Sender: TObject);   //checkbox3 in clicki
begin
if CheckBox3.Checked  then    //check atýlýnca
checkbox1.checked:=false ;     //checki kaldýr
checkbox2.checked:=false;     //checki kaldýr
checkbox4.checked:=false ;    //checki kaldýr
end;

procedure TForm2.CheckBox4Click(Sender: TObject);   //checkbox4 in clicki
begin
if CheckBox4.Checked  then  //check atýlýnca
checkbox1.checked:=false ;   //checki kaldýr
checkbox2.checked:=false;    //checki kaldýr
checkbox3.checked:=false ;  //checki kaldýr
end;

procedure TForm2.BitBtn1Click(Sender: TObject);//buton un click i
begin
if CheckBox1.Checked then begin    //eðer checkbox1 seçilirse

with ADOQuery1 do //adoquery1 baþla
begin
close;   //kapat
sql.Text:=  'select * from musteriler where YUKLEME_TARIHI between "'+datetostr(dateTimePicker1.date)+'"and"'+datetostr(dateTimePicker2.date)+'" order by TOPLAM_BORC  asc' ;  //sql textini ekliyoruz filtrelemek için
open;  //yenidn açýyoruz query i
end;

RvProject1.execute; //raveproject i baþlatarak raporumuzu görüntülüyoruz

end;

end;





end.
