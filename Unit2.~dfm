object Form2: TForm2
  Left = 195
  Top = 233
  BorderStyle = bsToolWindow
  Caption = 'RAPORLAMA EKRANI'
  ClientHeight = 336
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 873
    Height = 321
    Caption = 'RAPORLAMALAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 672
      Top = 40
      Width = 116
      Height = 13
      Caption = 'BA'#350'LANGI'#199' TAR'#304'H'#304
    end
    object Label2: TLabel
      Left = 680
      Top = 136
      Width = 79
      Height = 13
      Caption = 'B'#304'T'#304#350' TAR'#304'H'#304
    end
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 641
      Height = 297
      Color = clLime
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 129
        Color = clMoneyGreen
        TabOrder = 0
        object CheckBox1: TCheckBox
          Left = 8
          Top = 16
          Width = 609
          Height = 17
          Caption = 'ARTAN SIRALI OLARAK BOR'#199'LUNUN AD,SOYAD ve TOPLAM BORCU G'#214'STER'
          TabOrder = 0
          OnClick = CheckBox1Click
        end
        object CheckBox2: TCheckBox
          Left = 8
          Top = 40
          Width = 625
          Height = 17
          Caption = 
            'KALAN BOR'#199' BAKIMINDAN EN Y'#220'KSEKTEN EN D'#220#350#220#286'E AD,SOYAD ve KALAN B' +
            'ORCU G'#214'STER'
          TabOrder = 1
          OnClick = CheckBox2Click
        end
        object CheckBox3: TCheckBox
          Left = 8
          Top = 64
          Width = 609
          Height = 17
          Caption = #214'DEME YAPAN M'#220#350'TER'#304'LER'#304'N TOPLAM '#214'DEME M'#304'KTARLARINI G'#214'STER'
          TabOrder = 2
          OnClick = CheckBox3Click
        end
        object CheckBox4: TCheckBox
          Left = 8
          Top = 88
          Width = 593
          Height = 17
          Caption = 
            #214'DEMES'#304' YAPILMI'#350' M'#220'STERiLER'#304'N SON '#214'DEMES'#304' NE ZAMAN YAPILMI'#350' G'#214'ST' +
            'ER'
          TabOrder = 3
          OnClick = CheckBox4Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 128
        Width = 641
        Height = 169
        Color = clLime
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Color = clYellow
            Expanded = False
            FieldName = 'OZEL_SIFRE'
            Width = 100
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'ADI'
            Width = 100
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'SOYADI'
            Width = 100
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'TOPLAM_BORC'
            Width = 112
            Visible = True
          end
          item
            Color = clYellow
            Expanded = False
            FieldName = 'YUKLEME_TARIHI'
            Width = 116
            Visible = True
          end>
      end
    end
    object BitBtn1: TBitBtn
      Left = 656
      Top = 224
      Width = 185
      Height = 73
      Caption = 'RAPORLA'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 672
      Top = 72
      Width = 186
      Height = 21
      Date = 44001.721396689810000000
      Time = 44001.721396689810000000
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 672
      Top = 168
      Width = 186
      Height = 21
      Date = 44001.721624641210000000
      Time = 44001.721624641210000000
      TabOrder = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 624
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from musteriler ')
    Left = 592
    Top = 144
  end
  object RvProject1: TRvProject
    ProjectFile = 'report1.rav'
    Left = 600
    Top = 24
  end
  object RvProject2: TRvProject
    Left = 600
    Top = 48
  end
  object RvProject3: TRvProject
    Left = 600
    Top = 72
  end
  object RvProject4: TRvProject
    Left = 600
    Top = 96
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 624
    Top = 24
  end
  object RvDataSetConnection2: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 624
    Top = 48
  end
  object RvDataSetConnection3: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 624
    Top = 72
  end
  object RvDataSetConnection4: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    Left = 624
    Top = 96
  end
end
