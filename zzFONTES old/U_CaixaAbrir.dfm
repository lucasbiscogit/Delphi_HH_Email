object F_CaixaAbrir: TF_CaixaAbrir
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'ABRIR CAIXA'
  ClientHeight = 252
  ClientWidth = 199
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 190
    Width = 199
    Height = 62
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    object btnFechar: TBitBtn
      Left = 16
      Top = 22
      Width = 75
      Height = 25
      Caption = '&Fechar'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA0AADDB9C1E6FFFFFFFFFFFFFFFFFFFFFFFF8E9DDF7D8EDBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9BD50003B10007B5C6CBEAFF
        FFFFFFFFFF90A0E00007B30007AF7187DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        93A0D9000EBD022BC9022CCB0015C0D4D8EF9AA9E30015C4032AC80126C3000F
        BA7D94E4FFFFFFFFFFFFFFFFFFFFFFFF2F50C60029CD0838CE0A3BD0093CD100
        31CA0032CD0939CF0737CE0631CC001FC75F7DDFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF2C53CA003ED50E48D4104AD60F4AD61049D60F47D50C43D20034D05A7C
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C66D20E53DB1557DB16
        58DC1457DA1354D9094DD96385E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9FADE30D5DE01A64E11A65E01A64E01961DF0452DBD8DEF7FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93A6E1015CE11E6EE42071E620
        73E61F71E61E6EE41B67E20052DEC8D4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        90A5E30461E22276E8247CEA247FEC1D7CEB207EEC237AEA2175E71C6CE40055
        DFC3D2F5FFFFFFFFFFFFFFFFFFFFFFFF4573D81879ED2683ED2686EF1B80EE8D
        A4E95386E62085F02580EC1D76E81068E4B8CBF3FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF527DDC2289F22887EF879EE7FFFFFFFFFFFF5888E61E85F02B81EBBCCB
        F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6288E294A9EAFFFFFFFF
        FFFFFFFFFFFFFFFF799FEABFCDF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      TabStop = False
      OnClick = btnFecharClick
    end
    object btnAbrir: TBitBtn
      Left = 97
      Top = 22
      Width = 75
      Height = 25
      Caption = 'Abrir'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000EB0A0000EB0A00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EA1773A
        8B48B0C1B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8AC69C2E964C2D954B54AA6DFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF86CAA12DA1592DA25A2D
        A25A2DA15AA2D5B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF86D0A82DAC672DAD682AAD672BAD672DAD6832AF6BE8F5EEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE82D3AD2BB4712AB47128B47041BD8035
        B97928B4702BB47163C897FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFB
        38C08325BB7A25BB7A44C48BE4F6EEA7E3C82BBD7D27BC7B28BC7BABE5CCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7F3E73DC68D40C790DDF5EAFFFFFFFF
        FFFF5ACF9E23C08225C1822AC184DDF5EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE2F6EEE4F7F0FFFFFFFFFFFFFFFFFFE0F6ED2EC68D1DC28721C3883DCA
        97F3FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFADE8D324C7901AC58D1CC58D43CFA2EEFBF7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80DEBF1DC99519C8
        942DCB98DDF6EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF77DDBD69DAB6E2F7F0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      OnClick = btnAbrirClick
    end
  end
  object pnlCampos: TPanel
    Left = 0
    Top = 0
    Width = 199
    Height = 190
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 39
      Top = 140
      Width = 54
      Height = 13
      Caption = 'Valor Inicial'
    end
    object Label2: TLabel
      Left = 39
      Top = 91
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label3: TLabel
      Left = 39
      Top = 42
      Width = 69
      Height = 13
      Caption = 'Data Abertura'
      FocusControl = DBEdit1
    end
    object lblCaixa: TLabel
      Left = 16
      Top = 4
      Width = 167
      Height = 15
      Alignment = taCenter
      Caption = 'O CAIXA JA ESTA ABERTO'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Visible = False
      WordWrap = True
    end
    object edtUser: TEdit
      Left = 39
      Top = 109
      Width = 121
      Height = 21
      Alignment = taCenter
      Color = clBtnFace
      Enabled = False
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 39
      Top = 60
      Width = 121
      Height = 21
      Color = clBtnFace
      DataField = 'DATA_INICIO'
      DataSource = DSAbreCaixa
      Enabled = False
      TabOrder = 2
    end
    object edtValor: TDBEdit
      Left = 39
      Top = 158
      Width = 121
      Height = 21
      DataField = 'VL_INICIO'
      DataSource = DSAbreCaixa
      TabOrder = 0
      OnEnter = edtValorEnter
      OnExit = edtValorExit
    end
  end
  object DSAbreCaixa: TDataSource
    DataSet = ADOAbreCaixa
    Left = 8
  end
  object ADOAbreCaixa: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_CAIXA_ABREFECHA')
    Top = 104
    object ADOAbreCaixaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOAbreCaixaDATA_INICIO: TDateTimeField
      Alignment = taCenter
      FieldName = 'DATA_INICIO'
    end
    object ADOAbreCaixaDATA_FINAL: TDateTimeField
      FieldName = 'DATA_FINAL'
    end
    object ADOAbreCaixaHORA_INICIO: TWideStringField
      FieldName = 'HORA_INICIO'
      Size = 16
    end
    object ADOAbreCaixaHORA_FINAL: TWideStringField
      FieldName = 'HORA_FINAL'
      Size = 16
    end
    object ADOAbreCaixaUSER_INICIO: TIntegerField
      FieldName = 'USER_INICIO'
    end
    object ADOAbreCaixaUSER_FINAL: TIntegerField
      FieldName = 'USER_FINAL'
    end
    object ADOAbreCaixaVL_INICIO: TFloatField
      Alignment = taCenter
      FieldName = 'VL_INICIO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaVL_FECHAMENTO: TFloatField
      FieldName = 'VL_FECHAMENTO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaVLTOTALRECEBIDO: TFloatField
      FieldName = 'VLTOTALRECEBIDO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaVLTOTALSAIDA: TFloatField
      FieldName = 'VLTOTALSAIDA'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaVLTOTALGERAL: TFloatField
      FieldName = 'VLTOTALGERAL'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaVLSAIDACONTAS: TFloatField
      FieldName = 'VLSAIDACONTAS'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSALDO_DINHEIRO: TFloatField
      FieldName = 'SALDO_DINHEIRO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSALDO_BOLETO: TFloatField
      FieldName = 'SALDO_BOLETO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSALDO_CHEQUE: TFloatField
      FieldName = 'SALDO_CHEQUE'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSALDO_CARTAO: TFloatField
      FieldName = 'SALDO_CARTAO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSAIDA_DINHEIRO: TFloatField
      FieldName = 'SAIDA_DINHEIRO'
      DisplayFormat = '###,##0.00'
    end
    object ADOAbreCaixaSAIDA_CHEQUE: TFloatField
      FieldName = 'SAIDA_CHEQUE'
      DisplayFormat = '###,##0.00'
    end
  end
  object TimerPiscaLabel: TTimer
    Enabled = False
    Interval = 500
    OnTimer = TimerPiscaLabelTimer
    Left = 8
    Top = 144
  end
end
