object Form1: TForm1
  Left = 249
  Top = 214
  BorderStyle = bsToolWindow
  Caption = 'Form1'
  ClientHeight = 271
  ClientWidth = 839
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 817
    Height = 121
    Caption = 'M'#220#350'TER'#304' B'#304'LG'#304'LER'#304
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 31
      Top = 24
      Width = 86
      Height = 13
      Caption = 'M'#220#350'TER'#304' ADI:'
    end
    object Label2: TLabel
      Left = 6
      Top = 48
      Width = 111
      Height = 13
      Caption = 'M'#220#350'TER'#304' SOYADI:'
    end
    object Label3: TLabel
      Left = 24
      Top = 72
      Width = 93
      Height = 13
      Caption = 'TOPLAM BOR'#199':'
    end
    object Label4: TLabel
      Left = 400
      Top = 16
      Width = 109
      Height = 13
      Caption = #350#304'FRELEME T'#220'R'#220
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 209
      Height = 21
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 120
      Top = 48
      Width = 209
      Height = 21
      TabOrder = 1
      OnKeyPress = Edit2KeyPress
    end
    object Edit3: TEdit
      Left = 120
      Top = 72
      Width = 209
      Height = 21
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 368
      Top = 32
      Width = 177
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      OnChange = ComboBox1Change
      OnKeyPress = ComboBox1KeyPress
    end
    object Button1: TButton
      Left = 368
      Top = 56
      Width = 177
      Height = 25
      Caption = #350#304'FRE T'#220'RET'
      TabOrder = 4
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 368
      Top = 88
      Width = 177
      Height = 21
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 584
      Top = 32
      Width = 209
      Height = 65
      Caption = 'S'#304'STEME Y'#220'KLE'
      ModalResult = 1
      TabOrder = 6
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 136
    Width = 825
    Height = 121
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Color = clYellow
        Expanded = False
        FieldName = 'OZEL_SIFRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Color = clInactiveCaption
        Expanded = False
        FieldName = 'ADI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Color = clInactiveCaption
        Expanded = False
        FieldName = 'SOYADI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Color = clInactiveCaption
        Expanded = False
        FieldName = 'TOPLAM_BORC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Color = clInactiveCaption
        Expanded = False
        FieldName = 'KALAN_BORC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Color = clYellow
        Expanded = False
        FieldName = 'YUKLEME_TARIHI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Width = 140
        Visible = True
      end>
  end
  object ADOQuery1: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from duzey')
    Left = 536
    Top = 16
  end
  object PopupMenu1: TPopupMenu
    Left = 776
    Top = 136
    object demeYap1: TMenuItem
      Bitmap.Data = {
        32030000424D3203000000000000760000002800000024000000230000000100
        040000000000BC020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFC4CCC4
        48FFFFFFFFFFFFFF0000FFFFFFFFFFF744CCCCCCCC448FFFFFFFFFFF0000FF8F
        FFFFF74CCCCCCCCCCCCCCC8FFFFFFFFF0000FFFFFFFF7CCCCCCCCCCCCCCCCC48
        FFFFFFFF0000FFFFFFF7CCCCCCCCCCCCCCCCCCC48FFFFFFF0000FFFFFF74CCCC
        CCCCC44CCCCCCCCC48FFFFFF0000FFFFFC4CCCCCCCC8FFFFCCCCCCCCC48FFFFF
        0000F8FF7CCCCCCCCC48FFFFCCCCCCCCCC48FFFF0000FFFFCCCCCCCCCCC8FFFF
        CCCCCCCCCCC8FFFF0000FFF7CCCCCCCCCC48FFFFCCCCCCCCCCC4FFFF0000FFF7
        CCCCCCCCCC48FFFFCCCCCCCCCCC48FFF0000FFFCCCCCCCCCC448FFFFCCCCCCCC
        CCCC8FFF0000FF7CCCCCCCC44448FFFF744444CCCCCC48FF0000FFCCCCCC8FFF
        FFFFFFFFFFFFFFFCCCCC48FF0000FF7CCCCC8FFFFFFFFFFFFFFFFFFCCCCC48FF
        0000FF7CCCCC8FFFFFFFFFFFFFFFFFFCCCCC4FFF0000FFCCCCCC8FFFFFFFFFFF
        FFFFFFF4CCCC4FFF0000FF7CCCCC8FFFFFFFFFFFFFFFFFFCCCCC4FFF0000FF74
        CCCCCCCCC448FFFF744CC4CCCCCC48FF0000FFFCCCCCCCCCCC48FFFFCCCCCCCC
        CCCC8FFF0000FFF7CCCCCCCCCC48FFFFCCCCCCCCCCCC8FFF0000FFF7CCCCCCCC
        CC48FFFFCCCCCCCCCCC48FFF00008FFFCCCCCCCCCCC8FFFFCCCCCCCCCCC8FFFF
        0000FFFF74CCCCCCCCC8FFFFCCCCCCCCCC48FFFF0000FFFFF7CCCCCCCCC8FFFF
        CCCCCCCCC48FFFFF0000FFFFFF74CCCCCCC4C444CCCCCCCC48FFFFFF0000FFFF
        FFF74CCCCCCCCCCCCCCCCCC48FFFFFFF0000FFFFFFFF7CCCCCCCCCCCCCCCCC48
        FFFFFFFF0000FFFFFFFFF444CCCCCCCCCCCCC48FFFFFFFFF0000FFFFFFFFFFF7
        4CCCCCCCCCC48FFFFFFFFFFF0000FFFFFFFFFFFFFF74444448FFFFFFFF8FFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
      Caption = #214'deme Yap'
      OnClick = demeYap1Click
    end
    object Raporla1: TMenuItem
      Bitmap.Data = {
        1E030000424D1E03000000000000760000002800000022000000220000000100
        040000000000A8020000C40E0000C40E00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFF8
        FFFFFFF8FFFFFFFFFFFFFF000000FFFFFFFFFFFFF70000008FFFFFFFFFFFFF00
        0000FFFFFFFFFF00000000000008FFFFFFFFFF000000FFFFFFFF700000000000
        000008FFFFFFFF000000FFFFFFF7000008FFFFFF0000008FFFFFFF000000FFFF
        FF700008FFFF08FFFF000008FFFFFF000000FFFFF70008FFFFFF08FFFFFF0000
        8FFFFF000000FFFF70008FF78FFF08FFF08FF00008FFFF000000FFF70008FFFF
        FFFF78FFFFFFFF00008FFF000000FFF7008FFFFFFFFFFFFFFFFFFFF0008FFF00
        0000FF70008FFFFFFFFFFFF08FFFFFF00008FF000000FF7008F78FFFFFFFFFF7
        08FFF08F0008FF000000FF7008FFFFFFFFFFFF0808FFFFFF0008FF000000F700
        8FFFFFFFFFFFFF008FFFFFFFF0008F000000F7008FFFFFFFFFFFF7808FFFFFFF
        F0008F000000F7008FFFFFFFFFFFF708FFFFFFFFF0008F0000008700870008FF
        FFFF7808FFFF000080008F000000F7007FFFFFFFFFF7808FFFFFFFFFF0008F00
        0000F7007FFFFFFFFF780878FFFFFFFFF0008F000000F7008FFFFFFFF7878FF7
        FFFFFFFFF000FF000000FF7008FFFFFF7878FFFF78FFFFFF0008FF000000FF70
        08F78FF7878FFFFFF78FF08F0008FF000000FF70008FFF0878FFFFFFFF78FFF0
        0008FF000000FFF7007FFFF08FFFFFFFFFF7FFF0008FFF000000FFF70008FFFF
        FFFF78FFFFFFFF00008FFF000000FFFF70008FF78FFF08FFF18FF00008FFFF00
        0000FF8FF70008FFFFFF08FFFFFF00008FFFFF000000FFFFFF700007FFFF28FF
        FF000008FFFFFF000000FFFFFFF7000008FFFFFF0000008FFFFFFF000000FFFF
        FFFF700000000000000008FFFFFFFF000000FFFFFFFFFF00000000000008FFFF
        8FFFFF000000FFFFFFFFFFFFF00000008FFFFFFFFFFFFF000000F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000}
      Caption = 'Raporla'
      OnClick = Raporla1Click
    end
  end
  object ADOQuery2: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from musteriler')
    Left = 768
    Top = 40
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    OnCalcFields = ADOTable1CalcFields
    TableName = 'musteriler'
    Left = 776
    Top = 168
    object ADOTable1OZEL_SIFRE: TWideStringField
      FieldName = 'OZEL_SIFRE'
      Size = 255
    end
    object ADOTable1ADI: TWideStringField
      FieldName = 'ADI'
      Size = 255
    end
    object ADOTable1SOYADI: TWideStringField
      FieldName = 'SOYADI'
      Size = 255
    end
    object ADOTable1TOPLAM_BORC: TIntegerField
      FieldName = 'TOPLAM_BORC'
    end
    object ADOTable1KALAN_BORC: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'KALAN_BORC'
      Calculated = True
    end
    object ADOTable1YUKLEME_TARIHI: TWideStringField
      FieldName = 'YUKLEME_TARIHI'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 768
    Top = 200
  end
  object ADOTable2: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    TableName = 'odemeler'
    Left = 440
    Top = 216
    object ADOTable2Musterinin_Adi: TWideStringField
      FieldName = 'Musterinin_Adi'
      Size = 255
    end
    object ADOTable2Musterinin_Soyadi: TWideStringField
      FieldName = 'Musterinin_Soyadi'
      Size = 255
    end
    object ADOTable2Odeme_Miktari: TIntegerField
      FieldName = 'Odeme_Miktari'
    end
    object ADOTable2Tarih: TWideStringField
      FieldName = 'Tarih'
      Size = 255
    end
    object ADOTable2Saat: TWideStringField
      FieldName = 'Saat'
      Size = 255
    end
  end
  object ADOQuery3: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=.\bilgiler.mdb;Pers' +
      'ist Security Info=False'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*from odemeler')
    Left = 440
    Top = 160
  end
end
