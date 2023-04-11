object F_ContaPagarLiquidar: TF_ContaPagarLiquidar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Liquidar Contas a Pagar'
  ClientHeight = 607
  ClientWidth = 704
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlGrid: TPanel
    Left = 0
    Top = 0
    Width = 704
    Height = 273
    Align = alTop
    TabOrder = 0
    object GridCpagar: TDBGrid
      Left = 1
      Top = 1
      Width = 702
      Height = 271
      Align = alClient
      Color = clBtnFace
      DataSource = DSContasPagar
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = GridCpagarDrawColumnCell
      OnDblClick = GridCpagarDblClick
      OnTitleClick = GridCpagarTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMDOC'
          Title.Caption = 'Numero Documento'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClienteC'
          Title.Caption = 'Cliente'
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ClassCont'
          Title.Caption = 'Classe Contabil'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VENC'
          Title.Caption = 'Data Venc.'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPARCELA'
          Title.Caption = 'Parcela'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTALPARCELA'
          Title.Caption = 'Total de Parcelas'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALORPARCELA'
          Title.Caption = 'Valor Parcela'
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLTOTAL'
          Title.Caption = 'Valor Total'
          Width = 74
          Visible = True
        end>
    end
  end
  object pnlLabels: TPanel
    Left = 0
    Top = 312
    Width = 704
    Height = 185
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 30
      Top = 16
      Width = 134
      Height = 15
      Caption = 'Data do Lan'#231'amento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 211
      Top = 16
      Width = 149
      Height = 15
      Caption = 'Numero do Documento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 30
      Top = 76
      Width = 47
      Height = 15
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 395
      Top = 16
      Width = 102
      Height = 15
      Caption = 'Classe Contabil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 587
      Top = 136
      Width = 71
      Height = 15
      Caption = 'Valor Total'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 176
      Top = 136
      Width = 108
      Height = 15
      Caption = 'Valor da Parcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 30
      Top = 136
      Width = 51
      Height = 15
      Caption = 'Parcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 379
      Top = 136
      Width = 113
      Height = 15
      Caption = 'Total de Parcelas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 577
      Top = 16
      Width = 78
      Height = 15
      Caption = 'Vencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object lblDtLancamento: TLabel
      Left = 30
      Top = 41
      Width = 93
      Height = 15
      Caption = 'lblDtLancamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumDoc: TLabel
      Left = 211
      Top = 41
      Width = 61
      Height = 15
      Caption = 'lblNumDoc'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblClassContabil: TLabel
      Left = 395
      Top = 41
      Width = 91
      Height = 15
      Caption = 'lblClassContabil'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
    end
    object lblFornec: TLabel
      Left = 112
      Top = 77
      Width = 52
      Height = 15
      Caption = 'lblFornec'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNumParcela: TLabel
      Left = 30
      Top = 161
      Width = 82
      Height = 15
      Caption = 'lblNumParcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorParcela: TLabel
      Left = 198
      Top = 161
      Width = 86
      Height = 15
      Alignment = taRightJustify
      Caption = 'lblValorParcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTotalParcela: TLabel
      Left = 395
      Top = 161
      Width = 83
      Height = 15
      Caption = 'lblTotalParcela'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblValorTotal: TLabel
      Left = 587
      Top = 161
      Width = 71
      Height = 15
      Alignment = taRightJustify
      Caption = 'lblValorTotal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblVencimento: TLabel
      Left = 577
      Top = 41
      Width = 78
      Height = 15
      Caption = 'lblVencimento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRs2: TLabel
      Left = 565
      Top = 161
      Width = 16
      Height = 15
      Alignment = taCenter
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRs: TLabel
      Left = 176
      Top = 161
      Width = 16
      Height = 15
      Alignment = taCenter
      Caption = 'R$'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlDetalhes: TPanel
    Left = 0
    Top = 273
    Width = 704
    Height = 39
    Align = alTop
    TabOrder = 2
    object Label11: TLabel
      Left = 24
      Top = 6
      Width = 83
      Height = 13
      Caption = 'QTDE de Contas:'
    end
    object Label12: TLabel
      Left = 461
      Top = 6
      Width = 84
      Height = 13
      Caption = 'Total em Parcelas'
    end
    object Label13: TLabel
      Left = 611
      Top = 6
      Width = 52
      Height = 13
      Caption = 'Total Geral'
    end
    object Label14: TLabel
      Left = 58
      Top = 21
      Width = 6
      Height = 13
      Caption = '0'
    end
    object Label15: TLabel
      Left = 488
      Top = 21
      Width = 13
      Height = 13
      Caption = 'R$'
    end
    object Label16: TLabel
      Left = 630
      Top = 21
      Width = 13
      Height = 13
      Caption = 'R$'
    end
    object Label5: TLabel
      Left = 461
      Top = 21
      Width = 13
      Height = 13
      Caption = 'R$'
    end
    object Label17: TLabel
      Left = 611
      Top = 21
      Width = 13
      Height = 13
      Caption = 'R$'
    end
  end
  object pnlGrava: TPanel
    Left = 0
    Top = 499
    Width = 704
    Height = 108
    Align = alBottom
    BevelOuter = bvNone
    BevelWidth = 2
    Caption = 'PAGAR'
    Color = clMaroon
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnClick = pnlGravaClick
    ExplicitLeft = -1
    ExplicitTop = 503
  end
  object ADOFornec: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_FORNECEDOR'
      '')
    Left = 596
    Top = 36
    object ADOFornecID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOFornecSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOFornecINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOFornecDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOFornecDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOFornecDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOFornecRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 100
    end
    object ADOFornecNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 100
    end
    object ADOFornecCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object ADOFornecIE: TStringField
      FieldName = 'IE'
      Size = 18
    end
    object ADOFornecTELEF_COMERCIAL: TStringField
      FieldName = 'TELEF_COMERCIAL'
      Size = 13
    end
    object ADOFornecATENDENTE: TStringField
      FieldName = 'ATENDENTE'
      Size = 100
    end
    object ADOFornecSITE: TStringField
      FieldName = 'SITE'
      Size = 100
    end
  end
  object ADOClasse: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *  from TB_CLASSCONTABIL'
      '')
    Left = 606
    Top = 111
    object ADOClasseID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOClasseSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOClasseINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOClasseDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOClasseDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOClasseDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOClasseDESC_CLASSCONT: TStringField
      FieldName = 'DESC_CLASSCONT'
      Size = 100
    end
  end
  object ADOContasPagar: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Data_Final_Busca'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT * FROM TB_CONTAPAGAR where LIQUIDADO = '#39'N'#39' AND DATA_VENC ' +
        '<= :Data_Final_Busca order by DATA_VENC')
    Left = 417
    Top = 110
    object ADOContasPagarID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOContasPagarSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOContasPagarINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOContasPagarDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOContasPagarDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOContasPagarDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOContasPagarNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Size = 200
    end
    object ADOContasPagarID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object ADOContasPagarID_CLASSCONT: TIntegerField
      FieldName = 'ID_CLASSCONT'
    end
    object ADOContasPagarNUMPARCELA: TStringField
      FieldName = 'NUMPARCELA'
      FixedChar = True
      Size = 3
    end
    object ADOContasPagarTOTALPARCELA: TStringField
      FieldName = 'TOTALPARCELA'
      FixedChar = True
      Size = 3
    end
    object ADOContasPagarVLTOTAL: TBCDField
      FieldName = 'VLTOTAL'
      Precision = 12
      Size = 2
    end
    object ADOContasPagarVALORPARCELA: TBCDField
      FieldName = 'VALORPARCELA'
      Precision = 12
      Size = 2
    end
    object ADOContasPagarLIQUIDADO: TStringField
      FieldName = 'LIQUIDADO'
      FixedChar = True
      Size = 1
    end
    object ADOContasPagarDTPAGMENTO: TWideStringField
      FieldName = 'DTPAGMENTO'
      Size = 27
    end
    object ADOContasPagarFORMA_PGTO: TStringField
      FieldName = 'FORMA_PGTO'
      Size = 50
    end
    object ADOContasPagarVLPAGO: TBCDField
      FieldName = 'VLPAGO'
      Precision = 12
      Size = 2
    end
    object ADOContasPagarDATA_VENC: TDateTimeField
      FieldName = 'DATA_VENC'
    end
    object ADOContasPagarOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object ADOContasPagarClienteC: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteC'
      LookupDataSet = ADOFornec
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME_FANTASIA'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object ADOContasPagarClassCont: TStringField
      FieldKind = fkLookup
      FieldName = 'ClassCont'
      LookupDataSet = ADOClasse
      LookupKeyFields = 'ID'
      LookupResultField = 'DESC_CLASSCONT'
      KeyFields = 'ID_CLASSCONT'
      Size = 100
      Lookup = True
    end
  end
  object DSContasPagar: TDataSource
    DataSet = ADOContasPagar
    Left = 415
    Top = 39
  end
  object ADOCaixaHistorico: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_CAIXAMOVIMENTACAO')
    Left = 61
    Top = 63
    object ADOCaixaHistoricoID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOCaixaHistoricoID_CAIXAMOV: TIntegerField
      FieldName = 'ID_CAIXAMOV'
    end
    object ADOCaixaHistoricoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOCaixaHistoricoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOCaixaHistoricoDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOCaixaHistoricoDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOCaixaHistoricoDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOCaixaHistoricoSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object ADOCaixaHistoricoCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object ADOCaixaHistoricoHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object ADOCaixaHistoricoVLMOVIMENTO: TBCDField
      FieldName = 'VLMOVIMENTO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaHistoricoESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 100
    end
    object ADOCaixaHistoricoTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object ADOCaixa: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from TB_CAIXA_ABREFECHA where DATA_FINAL is null and HO' +
        'RA_FINAL is null')
    Left = 37
    Top = 127
    object ADOCaixaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOCaixaDATA_INICIO: TDateTimeField
      FieldName = 'DATA_INICIO'
    end
    object ADOCaixaDATA_FINAL: TDateTimeField
      FieldName = 'DATA_FINAL'
    end
    object ADOCaixaHORA_INICIO: TWideStringField
      FieldName = 'HORA_INICIO'
      Size = 16
    end
    object ADOCaixaHORA_FINAL: TWideStringField
      FieldName = 'HORA_FINAL'
      Size = 16
    end
    object ADOCaixaUSER_INICIO: TIntegerField
      FieldName = 'USER_INICIO'
    end
    object ADOCaixaUSER_FINAL: TIntegerField
      FieldName = 'USER_FINAL'
    end
    object ADOCaixaVL_INICIO: TBCDField
      FieldName = 'VL_INICIO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaVL_FECHAMENTO: TBCDField
      FieldName = 'VL_FECHAMENTO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaVLTOTALRECEBIDO: TBCDField
      FieldName = 'VLTOTALRECEBIDO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaVLTOTALSAIDA: TBCDField
      FieldName = 'VLTOTALSAIDA'
      Precision = 12
      Size = 2
    end
    object ADOCaixaVLTOTALGERAL: TBCDField
      FieldName = 'VLTOTALGERAL'
      Precision = 12
      Size = 2
    end
    object ADOCaixaVLSAIDACONTAS: TBCDField
      FieldName = 'VLSAIDACONTAS'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSALDO_DINHEIRO: TBCDField
      FieldName = 'SALDO_DINHEIRO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSALDO_BOLETO: TBCDField
      FieldName = 'SALDO_BOLETO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSALDO_CHEQUE: TBCDField
      FieldName = 'SALDO_CHEQUE'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSALDO_CARTAO: TBCDField
      FieldName = 'SALDO_CARTAO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSAIDA_DINHEIRO: TBCDField
      FieldName = 'SAIDA_DINHEIRO'
      Precision = 12
      Size = 2
    end
    object ADOCaixaSAIDA_CHEQUE: TBCDField
      FieldName = 'SAIDA_CHEQUE'
      Precision = 12
      Size = 2
    end
  end
end
