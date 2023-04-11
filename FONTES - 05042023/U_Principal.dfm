object F_Principal: TF_Principal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'E-mails dos Hora-Hora'
  ClientHeight = 833
  ClientWidth = 927
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object statPesquisa: TStatusBar
    Left = 0
    Top = 807
    Width = 927
    Height = 26
    Panels = <
      item
        Alignment = taCenter
        Width = 400
      end
      item
        Alignment = taCenter
        Width = 50
      end>
    ExplicitTop = 775
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 49
    Align = alTop
    TabOrder = 1
    object pnlImagemLogado: TPanel
      Left = 766
      Top = 50
      Width = 66
      Height = 58
      BevelOuter = bvNone
      TabOrder = 0
    end
    object tlbCadPadrao1: TToolBar
      Left = 1
      Top = 1
      Width = 925
      Height = 44
      Hint = 'Barra de Bot'#245'es do Cadastro'
      ButtonHeight = 38
      ButtonWidth = 57
      DisabledImages = imgDesabilitado
      DrawingStyle = dsGradient
      EdgeBorders = [ebTop, ebBottom]
      GradientEndColor = clGray
      GradientStartColor = clMoneyGreen
      Images = imgHabilitado
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object btnSeparador21: TToolButton
        Left = 0
        Top = 0
        Width = 60
        Caption = 'btnSeparador2'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object btn51: TToolButton
        Left = 60
        Top = 0
        Width = 8
        Caption = 'btn5'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object btnVoltar: TToolButton
        Left = 68
        Top = 0
        Cursor = crHandPoint
        Hint = 'Voltar'
        Caption = 'Voltar'
        Enabled = False
        ImageIndex = 5
        OnClick = btnVoltarClick
      end
      object btn61: TToolButton
        Left = 125
        Top = 0
        Width = 244
        Caption = 'btn6'
        Style = tbsSeparator
      end
      object btn7: TToolButton
        Left = 369
        Top = 0
        Width = 8
        Caption = 'btn7'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object btnStatusConexao: TToolButton
        Left = 377
        Top = 0
        Cursor = crNoDrop
        Hint = 'Status da Conex'#227'o'
        Caption = 'Conexao'
        Enabled = False
        ImageIndex = 4
        OnClick = btnStatusConexaoClick
      end
      object lblConexao: TLabel
        Left = 434
        Top = 0
        Width = 60
        Height = 38
        Caption = 'lblConexao'
      end
      object btnSeparador31: TToolButton
        Left = 494
        Top = 0
        Width = 258
        Caption = 'btnSeparador3'
        ImageIndex = 10
        Style = tbsSeparator
      end
      object btn8: TToolButton
        Left = 752
        Top = 0
        Width = 8
        Caption = 'btn8'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object btnSalvar1: TToolButton
        Left = 760
        Top = 0
        Cursor = crHandPoint
        Hint = 'Minimizar Janela'
        Caption = 'Minimizar'
        ImageIndex = 6
        OnClick = btnSalvar1Click
      end
      object btn41: TToolButton
        Left = 817
        Top = 0
        Width = 8
        Caption = 'btn4'
        ImageIndex = 13
        Style = tbsSeparator
      end
      object btnCancelar1: TToolButton
        Left = 825
        Top = 0
        Cursor = crHandPoint
        Hint = 'Sair do Programa'
        Caption = 'Sair'
        ImageIndex = 7
        OnClick = btnCancelar1Click
      end
      object btnSeparador41: TToolButton
        Left = 882
        Top = 0
        Width = 8
        Caption = 'btnSeparador4'
        ImageIndex = 12
        Style = tbsSeparator
      end
    end
  end
  object pgc_Geral: TPageControl
    Left = 0
    Top = 49
    Width = 927
    Height = 758
    Hint = 'Fechar'
    ActivePage = SheetPesquisa
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 2
    StyleName = 'Windows'
    object SheetPesquisa: TTabSheet
      Caption = 'Pesquisa'
      OnShow = SheetPesquisaShow
      object pnlCabecPesquisa: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 192
        Align = alTop
        TabOrder = 0
        object pnlBotoesPesquisa: TPanel
          Left = 1
          Top = 133
          Width = 917
          Height = 58
          Align = alBottom
          TabOrder = 0
          object lblPesquisa: TLabel
            Left = 169
            Top = 15
            Width = 73
            Height = 15
            Caption = 'Pesquisa por: '
          end
          object lblPesquisaDesc: TLabel
            Left = 202
            Top = 27
            Width = 37
            Height = 15
            Alignment = taRightJustify
            Caption = 'TODOS'
          end
          object edtPesquisa: TEdit
            Left = 245
            Top = 16
            Width = 492
            Height = 29
            BevelInner = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            TextHint = 'Pesquisa Por Nome'
            OnKeyPress = edtPesquisaKeyPress
          end
          object RadioButonRecebe: TRadioButton
            Left = 259
            Top = 22
            Width = 98
            Height = 17
            Caption = 'Recebe'
            TabOrder = 1
            Visible = False
            OnClick = RadioButonRecebeClick
          end
          object RadioButonNRecebe: TRadioButton
            Left = 363
            Top = 22
            Width = 113
            Height = 17
            Caption = 'N'#227'o Recebe'
            Checked = True
            TabOrder = 2
            TabStop = True
            Visible = False
            OnClick = RadioButonNRecebeClick
          end
        end
        object pnlBotoes: TPanel
          Left = 496
          Top = 1
          Width = 422
          Height = 132
          Align = alRight
          TabOrder = 1
          object btnExcluirEmail: TButton
            Left = 223
            Top = 37
            Width = 199
            Height = 25
            Caption = 'Tirar e-mail de recebimento'
            TabOrder = 0
            OnClick = btnExcluirEmailClick
          end
          object btnAddEmail: TButton
            Left = 0
            Top = 68
            Width = 422
            Height = 25
            Hint = 
              'Para adicionar Pesquise para Verificar se n'#227'o existe o e-mail ca' +
              'dastratado.'
            Caption = 'Adicionar E-mail'
            TabOrder = 1
            OnClick = btnAddEmailClick
          end
          object btnADDNovoHH: TButton
            Left = 240
            Top = 6
            Width = 183
            Height = 25
            Caption = 'ADD Novo HH'
            Enabled = False
            TabOrder = 2
          end
          object btnArqCadastrado: TButton
            Left = 0
            Top = 99
            Width = 422
            Height = 25
            Hint = 
              'Para adicionar Pesquise para Verificar se n'#227'o existe o e-mail ca' +
              'dastratado.'
            Caption = 'Verificar Arquivos Cadastrados'
            TabOrder = 3
            OnClick = btnArqCadastradoClick
          end
          object btnVoltarEmails: TButton
            Left = 0
            Top = 37
            Width = 217
            Height = 25
            Caption = 'Voltar e-mail de recebimento'
            TabOrder = 4
            OnClick = btnVoltarEmailsClick
          end
        end
        object pnlModoPesquisa: TPanel
          Left = 1
          Top = 1
          Width = 408
          Height = 132
          Align = alLeft
          TabOrder = 2
          object RGPesquisaGeral: TRadioGroup
            Left = 1
            Top = 1
            Width = 406
            Height = 112
            Hint = 'Escolher o Tipo de Pesquisa'
            Align = alTop
            Caption = 'Modo de Pesquisa'
            Columns = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ItemIndex = 0
            Items.Strings = (
              'Todos'
              'Nome'
              'Email'
              'HH_Excel'
              'Grupo_Carteira'
              'ONOFF')
            ParentFont = False
            TabOrder = 0
            OnClick = RGPesquisaGeralClick
          end
        end
        object btnArqEmail: TButton
          Left = 496
          Top = 7
          Width = 218
          Height = 25
          Caption = 'E-mails que Recebem o Hora-Hora'
          TabOrder = 3
          OnClick = btnArqEmailClick
        end
      end
      object pnlGridPEsquisa: TPanel
        Left = 0
        Top = 192
        Width = 919
        Height = 533
        Align = alClient
        TabOrder = 1
        object GridLista: TDBGrid
          Left = 12
          Top = 38
          Width = 875
          Height = 267
          Align = alCustom
          DataSource = DS_Pesquisa
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = GridListaDrawColumnCell
          OnMouseMove = GridListaMouseMove
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'E-mail'
              Width = 190
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HH_Excel'
              Title.Caption = 'Arquivo Excel (HH)'
              Width = 154
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GCarteira'
              Title.Caption = 'Grupo Carteira'
              Width = 137
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Recebe'
              Width = 73
              Visible = True
            end>
        end
      end
    end
    object SheetExclusao: TTabSheet
      Caption = 'Excluir'
      ImageIndex = 3
      object pnlEdicao: TPanel
        Left = 0
        Top = 243
        Width = 919
        Height = 253
        Align = alTop
        TabOrder = 0
        Visible = False
        object GridExcluir1: TDBGrid
          Left = 1
          Top = 25
          Width = 917
          Height = 227
          Align = alClient
          Color = clHighlight
          DataSource = DS_Excluir
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = GridExcluir1DrawColumnCell
          OnMouseMove = GridListaMouseMove
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'E-mail'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HH_Excel'
              Title.Caption = 'Arquivo Excel (HH)'
              Width = 162
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GCarteira'
              Title.Caption = 'Grupo Carteira'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Recebe'
              Title.Caption = 'N'#227'o Recebe'
              Width = 75
              Visible = True
            end>
        end
        object pnlLabelMudado: TPanel
          Left = 1
          Top = 1
          Width = 917
          Height = 24
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lblMudanca: TLabel
            Left = 0
            Top = 0
            Width = 848
            Height = 24
            Align = alClient
            Alignment = taCenter
            Caption = 'Resultado da Mudan'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            ExplicitWidth = 748
            ExplicitHeight = 21
          end
          object lblMudancaRegistros: TLabel
            AlignWithMargins = True
            Left = 851
            Top = 3
            Width = 63
            Height = 18
            Align = alRight
            Alignment = taCenter
            Anchors = [akLeft, akTop, akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = ' 00 Registros '
            ParentBiDiMode = False
            ExplicitLeft = 848
            ExplicitTop = 0
            ExplicitWidth = 69
            ExplicitHeight = 15
          end
        end
      end
      object pnlPesqExcluir: TPanel
        Left = 0
        Top = 49
        Width = 919
        Height = 97
        Align = alTop
        Enabled = False
        TabOrder = 1
        Visible = False
        object lbl12: TLabel
          Left = 38
          Top = 6
          Width = 34
          Height = 15
          Caption = 'E-mail'
        end
        object lbl13: TLabel
          Left = 345
          Top = 6
          Width = 37
          Height = 15
          Caption = 'Cliente'
        end
        object lbl14: TLabel
          Left = 540
          Top = 6
          Width = 72
          Height = 15
          Caption = 'Arquivo Excel'
        end
        object lbl15: TLabel
          Left = 735
          Top = 6
          Width = 77
          Height = 15
          Caption = 'Grupo Carteira'
        end
        object edtPesqExluir: TEdit
          Left = 38
          Top = 27
          Width = 257
          Height = 23
          CharCase = ecLowerCase
          TabOrder = 0
          TextHint = 'pesquisa o e-mail para excluir'
          OnEnter = edtPesqExluirEnter
          OnExit = edtPesqExluirExit
          OnKeyPress = edtPesqExluirKeyPress
        end
        object ComboExcluirHH: TComboBox
          Left = 540
          Top = 27
          Width = 145
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 2
          OnEnter = ComboExcluirHHEnter
          OnExit = ComboExcluirHHExit
          OnSelect = ComboExcluirHHSelect
        end
        object ComboExcluirCliente: TComboBox
          Left = 345
          Top = 27
          Width = 145
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 1
          OnEnter = ComboExcluirClienteEnter
          OnExit = ComboExcluirClienteExit
          OnSelect = ComboExcluirClienteSelect
        end
        object ComboExcluirCarteira: TComboBox
          Left = 735
          Top = 27
          Width = 145
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 3
          OnEnter = ComboExcluirCarteiraEnter
          OnExit = ComboExcluirCarteiraExit
          OnSelect = ComboExcluirCarteiraSelect
        end
        object btnExcluir: TButton
          Left = 403
          Top = 59
          Width = 113
          Height = 28
          Caption = 'Desativar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnExcluirClick
        end
      end
      object pnlGridEscluir: TPanel
        Left = 0
        Top = 496
        Width = 919
        Height = 229
        Align = alClient
        TabOrder = 2
        Visible = False
        object GridExcluir: TDBGrid
          Left = 1
          Top = 25
          Width = 917
          Height = 203
          Align = alClient
          DataSource = DS_Pesquisa
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = GridExcluirDrawColumnCell
          OnDblClick = GridExcluirDblClick
          OnMouseMove = GridListaMouseMove
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Email'
              Title.Caption = 'E-mail'
              Width = 198
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HH_Excel'
              Title.Caption = 'Arquivo Excel (HH)'
              Width = 162
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'GCarteira'
              Title.Caption = 'Grupo Carteira'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Width = 112
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Recebe'
              Width = 75
              Visible = True
            end>
        end
        object pnlRegistrosMudanca: TPanel
          Left = 1
          Top = 1
          Width = 917
          Height = 24
          Align = alTop
          TabOrder = 1
          object lblMudancaRegistrosAntes: TLabel
            AlignWithMargins = True
            Left = 844
            Top = 4
            Width = 69
            Height = 16
            Align = alRight
            Alignment = taCenter
            Anchors = [akLeft, akTop, akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = ' 00 Registros '
            ParentBiDiMode = False
            Visible = False
            ExplicitLeft = 850
            ExplicitHeight = 15
          end
          object lblAntesMudanca: TLabel
            Left = 1
            Top = 1
            Width = 840
            Height = 22
            Align = alClient
            Alignment = taCenter
            Caption = 'Antes da Mudan'#231'a'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
            ExplicitWidth = 141
            ExplicitHeight = 21
          end
        end
      end
      object pnlSemEmail: TPanel
        Left = 0
        Top = 146
        Width = 919
        Height = 97
        Align = alTop
        Enabled = False
        TabOrder = 3
        Visible = False
        object lbl131: TLabel
          Left = 170
          Top = 4
          Width = 37
          Height = 15
          Caption = 'Cliente'
        end
        object lbl141: TLabel
          Left = 380
          Top = 4
          Width = 72
          Height = 15
          Caption = 'Arquivo Excel'
        end
        object lbl151: TLabel
          Left = 590
          Top = 4
          Width = 77
          Height = 15
          Caption = 'Grupo Carteira'
        end
        object ComboExcluirClienteCL: TComboBox
          Left = 170
          Top = 25
          Width = 160
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          OnEnter = ComboExcluirClienteCLEnter
          OnExit = ComboExcluirClienteCLExit
          OnSelect = ComboExcluirClienteCLSelect
        end
        object ComboExcluirArqExcCL: TComboBox
          Left = 380
          Top = 25
          Width = 160
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 1
          OnEnter = ComboExcluirArqExcCLEnter
          OnExit = ComboExcluirArqExcCLExit
          OnSelect = ComboExcluirArqExcCLSelect
        end
        object ComboExcluirGCarteiraCL: TComboBox
          Left = 590
          Top = 25
          Width = 160
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 2
          OnEnter = ComboExcluirGCarteiraCLEnter
          OnExit = ComboExcluirGCarteiraCLExit
          OnSelect = ComboExcluirGCarteiraCLSelect
        end
        object btnExcluir1: TButton
          Left = 403
          Top = 54
          Width = 113
          Height = 28
          Caption = 'Desativar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnExcluir1Click
        end
      end
      object pnlOpcaoExcluir: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 49
        Align = alTop
        BevelInner = bvSpace
        BevelKind = bkTile
        BevelOuter = bvLowered
        TabOrder = 4
        object rbExcluirEmail: TRadioButton
          Left = 244
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Excluir Por E-mail'
          TabOrder = 0
          OnClick = rbExcluirEmailClick
        end
        object rbExcluirArquivo: TRadioButton
          Left = 557
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Excluir Por Cliente'
          TabOrder = 1
          OnClick = rbExcluirArquivoClick
        end
      end
    end
    object SheetAdd: TTabSheet
      Caption = 'Adicionar Contas'
      ImageIndex = 2
      object pnlAddConta: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 725
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object btn3: TButton
          Left = 817
          Top = 0
          Width = 75
          Height = 25
          Caption = 'btn3'
          TabOrder = 6
          OnClick = btn3Click
        end
        object pnlManual: TPanel
          Left = 0
          Top = 265
          Width = 919
          Height = 112
          Align = alTop
          Enabled = False
          TabOrder = 2
          Visible = False
          object lbl: TLabel
            Left = 18
            Top = 5
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = edtCod
          end
          object lblNome: TLabel
            Left = 80
            Top = 5
            Width = 33
            Height = 15
            Caption = 'Nome'
            FocusControl = edtNome
          end
          object lblemail: TLabel
            Left = 496
            Top = 5
            Width = 29
            Height = 15
            Caption = 'Email'
            FocusControl = edtEmail
          end
          object lblArqExcel: TLabel
            Left = 18
            Top = 56
            Width = 89
            Height = 15
            Caption = 'Arquivo do Excel'
          end
          object lblCarteira: TLabel
            Left = 271
            Top = 56
            Width = 41
            Height = 15
            Caption = 'Carteira'
          end
          object lblCliente: TLabel
            Left = 524
            Top = 56
            Width = 37
            Height = 15
            Caption = 'Cliente'
          end
          object lbl5: TLabel
            Left = 795
            Top = 41
            Width = 40
            Height = 28
            Caption = '1 - 1'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtCod: TDBEdit
            Left = 18
            Top = 21
            Width = 56
            Height = 23
            Color = clBtnFace
            DataField = 'ID'
            DataSource = DS_ADD
            Enabled = False
            TabOrder = 0
          end
          object edtNome: TDBEdit
            Left = 80
            Top = 21
            Width = 410
            Height = 23
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'Nome'
            DataSource = DS_ADD
            TabOrder = 1
            OnEnter = edtNomeEnter
            OnExit = edtNomeExit
          end
          object edtEmail: TDBEdit
            Left = 496
            Top = 21
            Width = 410
            Height = 23
            CharCase = ecLowerCase
            DataField = 'Email'
            DataSource = DS_ADD
            TabOrder = 2
            OnEnter = edtEmailEnter
            OnExit = edtEmailExit
          end
          object CheckRecebe: TDBCheckBox
            Left = 777
            Top = 75
            Width = 121
            Height = 17
            Caption = 'Recebe os E-mails'
            DataField = 'ONOFF'
            DataSource = DS_ADD
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = CheckRecebeEnter
            OnExit = CheckRecebeExit
          end
          object ComboArqExcel: TComboBox
            Left = 18
            Top = 72
            Width = 239
            Height = 23
            Style = csDropDownList
            TabOrder = 3
            OnEnter = ComboArqExcelEnter
            OnExit = ComboArqExcelExit
          end
          object ComboCarteira: TComboBox
            Left = 271
            Top = 72
            Width = 239
            Height = 23
            Style = csDropDownList
            Enabled = False
            TabOrder = 4
            OnEnter = ComboCarteiraEnter
            OnExit = ComboCarteiraExit
          end
          object ComboCliente: TComboBox
            Left = 524
            Top = 72
            Width = 239
            Height = 23
            Style = csDropDownList
            Enabled = False
            TabOrder = 5
            OnEnter = ComboClienteEnter
            OnExit = ComboClienteExit
          end
        end
        object pnlPorCliente: TPanel
          Left = 0
          Top = 377
          Width = 919
          Height = 112
          Align = alTop
          Enabled = False
          TabOrder = 3
          Visible = False
          object lblemailpc: TLabel
            Left = 496
            Top = 13
            Width = 29
            Height = 15
            Caption = 'Email'
          end
          object lbl1: TLabel
            Left = 18
            Top = 13
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = dbedtID
          end
          object lblclientepc: TLabel
            Left = 80
            Top = 13
            Width = 33
            Height = 15
            Caption = 'Nome'
          end
          object lblClientepc1: TLabel
            Left = 18
            Top = 57
            Width = 37
            Height = 15
            Caption = 'Cliente'
          end
          object lbl4: TLabel
            Left = 795
            Top = 72
            Width = 11
            Height = 28
            Caption = '2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dbedtID: TDBEdit
            Left = 18
            Top = 29
            Width = 56
            Height = 23
            Color = clBtnFace
            DataField = 'ID'
            DataSource = DS_ADD
            Enabled = False
            TabOrder = 3
          end
          object ComboClientePC: TComboBox
            Left = 18
            Top = 73
            Width = 239
            Height = 23
            Style = csDropDownList
            TabOrder = 2
            OnEnter = ComboClientePCEnter
            OnExit = ComboClientePCExit
          end
          object edtNomePC: TEdit
            Left = 80
            Top = 29
            Width = 410
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 0
            OnEnter = edtNomePCEnter
            OnExit = edtNomePCExit
          end
          object edtEmailPc: TEdit
            Left = 496
            Top = 29
            Width = 410
            Height = 23
            CharCase = ecLowerCase
            TabOrder = 1
            OnEnter = edtEmailPcEnter
            OnExit = edtEmailPcExit
          end
        end
        object pnlBaseOutro: TPanel
          Left = 0
          Top = 489
          Width = 919
          Height = 112
          Align = alTop
          Enabled = False
          TabOrder = 4
          Visible = False
          object lblemailpc1: TLabel
            Left = 496
            Top = 13
            Width = 29
            Height = 15
            Caption = 'Email'
          end
          object lblclientepc2: TLabel
            Left = 80
            Top = 13
            Width = 33
            Height = 15
            Caption = 'Nome'
          end
          object lbl11: TLabel
            Left = 18
            Top = 13
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = dbedtID1
          end
          object lblClientepc11: TLabel
            Left = 18
            Top = 57
            Width = 138
            Height = 15
            Caption = 'E-mail do Usu'#225'rio Modelo'
          end
          object lblemailmod: TLabel
            Left = 271
            Top = 77
            Width = 67
            Height = 15
            Caption = 'lblemailmod'
            Visible = False
          end
          object lbl3: TLabel
            Left = 795
            Top = 58
            Width = 11
            Height = 28
            Caption = '3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object edtEmailMod: TEdit
            Left = 496
            Top = 29
            Width = 410
            Height = 23
            CharCase = ecLowerCase
            TabOrder = 1
            OnEnter = edtEmailModEnter
            OnExit = edtEmailModExit
          end
          object edtNomeMod: TEdit
            Left = 80
            Top = 29
            Width = 410
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 0
            OnEnter = edtNomeModEnter
            OnExit = edtNomeModExit
          end
          object dbedtID1: TDBEdit
            Left = 18
            Top = 29
            Width = 56
            Height = 23
            Color = clBtnFace
            DataField = 'ID'
            DataSource = DS_ADD
            Enabled = False
            TabOrder = 2
          end
          object ComboUsuario: TComboBox
            Left = 18
            Top = 73
            Width = 239
            Height = 23
            Style = csDropDownList
            TabOrder = 3
            OnEnter = ComboUsuarioEnter
            OnExit = ComboUsuarioExit
            OnSelect = ComboUsuarioSelect
          end
        end
        object pnlCabecalho: TPanel
          Left = 0
          Top = 0
          Width = 919
          Height = 73
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object lblPesquisaADD: TLabel
            Left = 408
            Top = 13
            Width = 103
            Height = 15
            Caption = 'Nome Que incluir'#225' '
          end
          object RadioGroupADDContas: TRadioGroup
            Left = 2
            Top = 34
            Width = 915
            Height = 37
            Align = alBottom
            Color = clBtnFace
            Columns = 3
            Items.Strings = (
              'Manual'
              'Por Cliente'
              'Base Outro Usu'#225'rio')
            ParentBackground = False
            ParentColor = False
            TabOrder = 0
            Visible = False
            OnClick = RadioGroupADDContasClick
          end
          object RadioButtonManual: TRadioButton
            Left = 18
            Top = 11
            Width = 113
            Height = 17
            Caption = 'Adicionar Manual'
            TabOrder = 1
            OnClick = RadioButtonManualClick
          end
          object RadioButtonPorCliente: TRadioButton
            Left = 261
            Top = 11
            Width = 137
            Height = 17
            Caption = 'Adicionar por Cliente'
            TabOrder = 2
            OnClick = RadioButtonPorClienteClick
          end
          object RadioButtonBaseOutUser: TRadioButton
            Left = 621
            Top = 11
            Width = 190
            Height = 17
            Caption = 'Adicionar Com Base em Outro'
            TabOrder = 3
            OnClick = RadioButtonBaseOutUserClick
          end
        end
        object pnlBotoesManipulacao: TPanel
          Left = 0
          Top = 108
          Width = 919
          Height = 45
          Align = alTop
          Enabled = False
          TabOrder = 1
          Visible = False
          object tlbCadPadrao: TToolBar
            Left = 1
            Top = 1
            Width = 917
            Height = 48
            Hint = 'Barra de Bot'#245'es do Cadastro'
            ButtonHeight = 40
            ButtonWidth = 57
            DisabledImages = imgDesabilitado
            DrawingStyle = dsGradient
            EdgeBorders = [ebTop, ebBottom]
            GradientEndColor = clGray
            GradientStartColor = clMoneyGreen
            Images = imgHabilitado
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            object btnSeparador2: TToolButton
              Left = 0
              Top = 0
              Width = 329
              Caption = 'btnSeparador2'
              ImageIndex = 6
              Style = tbsSeparator
            end
            object btn5: TToolButton
              Left = 329
              Top = 0
              Width = 8
              Caption = 'btn5'
              ImageIndex = 13
              Style = tbsSeparator
            end
            object btnAdicionar: TToolButton
              Left = 337
              Top = 0
              Hint = 'Adicionar novo Registro'
              Caption = 'Adicionar'
              Enabled = False
              ImageIndex = 0
              OnClick = btnAdicionarClick
            end
            object btn6: TToolButton
              Left = 394
              Top = 0
              Width = 8
              Caption = 'btn6'
              ImageIndex = 13
              Style = tbsSeparator
            end
            object btnEditar: TToolButton
              Left = 402
              Top = 0
              Hint = 'Editar Registro'
              Caption = 'Editar'
              Enabled = False
              ImageIndex = 1
              OnClick = btnEditarClick
            end
            object btnSeparador3: TToolButton
              Left = 459
              Top = 0
              Width = 8
              Caption = 'btnSeparador3'
              ImageIndex = 10
              Style = tbsSeparator
            end
            object btnSalvar: TToolButton
              Left = 467
              Top = 0
              Hint = 'Salvar Registro'
              Caption = 'Salvar'
              Enabled = False
              ImageIndex = 2
              OnClick = btnSalvarClick
            end
            object btn4: TToolButton
              Left = 524
              Top = 0
              Width = 8
              Caption = 'btn4'
              ImageIndex = 13
              Style = tbsSeparator
            end
            object btnCancelar: TToolButton
              Left = 532
              Top = 0
              Hint = 'Cancelar Opera'#231#227'o'
              Caption = 'Cancelar'
              Enabled = False
              ImageIndex = 3
              OnClick = btnCancelarClick
            end
            object btnSeparador4: TToolButton
              Left = 589
              Top = 0
              Width = 8
              Caption = 'btnSeparador4'
              ImageIndex = 12
              Style = tbsSeparator
            end
          end
        end
        object pnlGridEdicao: TPanel
          Left = 0
          Top = 601
          Width = 919
          Height = 124
          Align = alClient
          Enabled = False
          TabOrder = 5
          Visible = False
          object GridListaAdicao: TDBGrid
            Left = 1
            Top = 1
            Width = 917
            Height = 122
            Align = alClient
            DataSource = DS_ADD
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            OnDrawColumnCell = GridListaAdicaoDrawColumnCell
            OnMouseMove = GridListaMouseMove
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ID'
                Title.Caption = 'C'#243'digo'
                Width = 62
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Nome'
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Email'
                Title.Caption = 'E-mail'
                Width = 198
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'HH_Excel'
                Title.Caption = 'Arquivo Excel (HH)'
                Width = 154
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Grupo_Carteira'
                Title.Caption = 'Grupo Carteira'
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cliente'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Recebe'
                Width = 73
                Visible = True
              end>
          end
        end
        object pnlManualADDNovos: TPanel
          Left = 0
          Top = 153
          Width = 919
          Height = 112
          Align = alTop
          Enabled = False
          TabOrder = 7
          Visible = False
          object lbl2: TLabel
            Left = 18
            Top = 5
            Width = 39
            Height = 15
            Caption = 'C'#243'digo'
            FocusControl = dbedtID2
          end
          object lblNome1: TLabel
            Left = 80
            Top = 5
            Width = 33
            Height = 15
            Caption = 'Nome'
            FocusControl = dbedtNome
          end
          object lblemail1: TLabel
            Left = 496
            Top = 5
            Width = 29
            Height = 15
            Caption = 'Email'
            FocusControl = dbedtEmail
          end
          object lblArqExcel1: TLabel
            Left = 18
            Top = 56
            Width = 89
            Height = 15
            Caption = 'Arquivo do Excel'
          end
          object lblCarteira1: TLabel
            Left = 271
            Top = 56
            Width = 41
            Height = 15
            Caption = 'Carteira'
          end
          object lblCliente1: TLabel
            Left = 524
            Top = 56
            Width = 37
            Height = 15
            Caption = 'Cliente'
          end
          object lbl6: TLabel
            Left = 795
            Top = 50
            Width = 40
            Height = 28
            Caption = '1 - 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
          end
          object dbedtID2: TDBEdit
            Left = 18
            Top = 21
            Width = 56
            Height = 23
            Color = clBtnFace
            DataField = 'ID'
            DataSource = DS_ADD
            Enabled = False
            TabOrder = 0
          end
          object dbedtNome: TDBEdit
            Left = 80
            Top = 21
            Width = 410
            Height = 23
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'Nome'
            DataSource = DS_ADD
            TabOrder = 1
            OnEnter = dbedtNomeEnter
            OnExit = dbedtNomeExit
          end
          object dbedtEmail: TDBEdit
            Left = 496
            Top = 21
            Width = 410
            Height = 23
            CharCase = ecLowerCase
            DataField = 'Email'
            DataSource = DS_ADD
            TabOrder = 2
            OnEnter = dbedtEmailEnter
            OnExit = dbedtEmailExit
          end
          object checkONOFF: TDBCheckBox
            Left = 777
            Top = 77
            Width = 121
            Height = 17
            Caption = 'Recebe os E-mails'
            DataField = 'ONOFF'
            DataSource = DS_ADD
            TabOrder = 6
            ValueChecked = '1'
            ValueUnchecked = '0'
            OnEnter = checkONOFFEnter
            OnExit = checkONOFFExit
          end
          object dbedtHHExcel: TDBEdit
            Left = 18
            Top = 74
            Width = 239
            Height = 23
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'HH_Excel'
            DataSource = DS_ADD
            TabOrder = 3
            OnEnter = dbedtHHExcelEnter
            OnExit = dbedtHHExcelExit
          end
          object dbedtCarteira: TDBEdit
            Left = 271
            Top = 74
            Width = 239
            Height = 23
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'Grupo_Carteira'
            DataSource = DS_ADD
            TabOrder = 4
            OnEnter = dbedtCarteiraEnter
            OnExit = dbedtCarteiraExit
          end
          object dbedtGrupo_Carteira: TDBEdit
            Left = 525
            Top = 74
            Width = 239
            Height = 23
            CharCase = ecUpperCase
            Color = clWhite
            DataField = 'Grupo_Carteira'
            DataSource = DS_ADD
            TabOrder = 5
            OnEnter = dbedtGrupo_CarteiraEnter
            OnExit = dbedtGrupo_CarteiraExit
          end
        end
        object pnlAddManualOpcao: TPanel
          Left = 0
          Top = 73
          Width = 919
          Height = 35
          Align = alTop
          TabOrder = 8
          Visible = False
          object RadioGroupArquiExist: TRadioButton
            Left = 256
            Top = 9
            Width = 201
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Usu'#225'rio Novo, Arquivo j'#225' Existente'
            TabOrder = 0
            OnClick = RadioGroupArquiExistClick
          end
          object RadioGroupArquiNovo: TRadioButton
            Left = 473
            Top = 9
            Width = 174
            Height = 17
            Caption = 'Usu'#225'rio Novo, Arquivo Novo'
            TabOrder = 1
            OnClick = RadioGroupArquiNovoClick
          end
        end
      end
    end
    object SheetArquivos: TTabSheet
      Caption = 'Arquivos Cadastrados'
      ImageIndex = 3
      OnShow = SheetArquivosShow
      object pnlArqCadastrados: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 725
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object GridArqCadastrados: TDBGrid
          Left = 0
          Top = 0
          Width = 919
          Height = 725
          Align = alClient
          DataSource = DS_Grid
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnCellClick = GridArqCadastradosCellClick
          OnDrawColumnCell = GridArqCadastradosDrawColumnCell
          OnTitleClick = GridArqCadastradosTitleClick
          Columns = <
            item
              Expanded = False
              FieldName = 'HH_Excel'
              Width = 291
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Grupo_Carteira'
              Width = 285
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cliente'
              Visible = True
            end>
        end
      end
    end
    object SheetArqEmail: TTabSheet
      Caption = 'E-mails Enviado'
      ImageIndex = 4
      OnShow = SheetArqEmailShow
      object pnlArqEmail: TPanel
        Left = 0
        Top = 65
        Width = 919
        Height = 288
        Align = alTop
        Enabled = False
        TabOrder = 0
        object MemoEmail: TMemo
          Left = 1
          Top = 1
          Width = 917
          Height = 286
          Align = alClient
          Color = cl3DLight
          ReadOnly = True
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
      object pnlEmailEnviadoBotoes: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 65
        Align = alTop
        TabOrder = 1
        object lblArqExcelEmail: TLabel
          Left = 59
          Top = 8
          Width = 89
          Height = 15
          Caption = 'Arquivo do Excel'
        end
        object lblCarteiraEmail: TLabel
          Left = 469
          Top = 8
          Width = 41
          Height = 15
          Caption = 'Carteira'
        end
        object ComboEmailEnviado: TComboBox
          Left = 59
          Top = 29
          Width = 391
          Height = 23
          Style = csDropDownList
          TabOrder = 0
          OnEnter = ComboEmailEnviadoEnter
          OnExit = ComboEmailEnviadoExit
          OnSelect = ComboEmailEnviadoSelect
        end
        object ComboCarteiraEmailEnviado: TComboBox
          Left = 469
          Top = 29
          Width = 391
          Height = 23
          Style = csDropDownList
          Enabled = False
          TabOrder = 1
          OnEnter = ComboCarteiraEmailEnviadoEnter
          OnExit = ComboCarteiraEmailEnviadoExit
          OnSelect = ComboCarteiraEmailEnviadoSelect
        end
      end
      object pnlEmailPesq: TPanel
        Left = 0
        Top = 672
        Width = 919
        Height = 53
        Align = alBottom
        Enabled = False
        TabOrder = 2
        object lblPesMemo: TLabel
          Left = 230
          Top = 18
          Width = 106
          Height = 15
          Caption = 'Texto para Pesquisa:'
        end
        object btnPesqMemo: TButton
          Left = 558
          Top = 14
          Width = 131
          Height = 25
          Caption = 'Pesquisar'
          TabOrder = 1
          OnClick = btnPesqMemoClick
        end
        object EditPesqMemo: TEdit
          Left = 354
          Top = 14
          Width = 185
          Height = 23
          CharCase = ecLowerCase
          TabOrder = 0
          OnEnter = EditPesqMemoEnter
          OnExit = EditPesqMemoExit
          OnKeyPress = EditPesqMemoKeyPress
        end
      end
    end
    object SheetEdicao: TTabSheet
      Caption = 'Editar'
      ImageIndex = 5
      object pnlOpcaoExcluir1: TPanel
        Left = 0
        Top = 0
        Width = 919
        Height = 49
        Align = alTop
        BevelInner = bvSpace
        BevelKind = bkTile
        BevelOuter = bvLowered
        TabOrder = 0
        object rbVoltarEmail1: TRadioButton
          Left = 245
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Voltar Por E-mail'
          TabOrder = 0
          OnClick = rbVoltarEmailClick
        end
        object rbVoltarArquivo1: TRadioButton
          Left = 558
          Top = 14
          Width = 113
          Height = 17
          Caption = 'Voltar Por Cliente'
          TabOrder = 1
        end
      end
    end
  end
  object con_Geral: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Lucas123;Persist Security Info=True' +
      ';User ID=sa;Initial Catalog=Testesss;Data Source=PCLUCAS\SERVERL' +
      'UCAS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 216
    Top = 8
  end
  object AdoQ_Pesquisa: TADOQuery
    Connection = con_Geral
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Clie' +
        'nte,  case onoff when 1 then '#39'Verdadeiro'#39' else '#39'Falso'#39' end Receb' +
        'e from hh.Lista_Email')
    Left = 136
    Top = 8
    object AdoQ_PesquisaID: TIntegerField
      FieldName = 'ID'
    end
    object strngfldAdoQ_PesquisaNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object strngfldAdoQ_PesquisaEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object strngfldAdoQ_PesquisaHH_Excel: TStringField
      FieldName = 'HH_Excel'
      Size = 50
    end
    object strngfldAdoQ_PesquisaGCarteira: TStringField
      FieldName = 'GCarteira'
      Size = 50
    end
    object strngfldAdoQ_PesquisaRecebe: TStringField
      FieldName = 'Recebe'
      ReadOnly = True
      Size = 10
    end
    object AdoQ_PesquisaCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
  end
  object DS_Pesquisa: TDataSource
    DataSet = AdoQ_Pesquisa
    Left = 168
    Top = 8
  end
  object imgHabilitado: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 312
    Top = 8
    Bitmap = {
      494C010108001800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090382AFF90382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000006500FF006500FF006500FF006500FF006500FF006500FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007D3125FF000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF00000000000000000000000000000000000000000000
      0000000000000000000090382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000007800FF0076
      00FF007400FF007100FF006D00FF006800FF006500FF006500FF006500FF0065
      00FF006500FF006500FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007D3125FF0000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF000000000000000000000000000000009038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000008800FF008700FF008600FF0084
      00FF008200FF007D00FF007900FF007400FF006F00FF006900FF006500FF0065
      00FF006500FF006500FF006500FF006500FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090382AFF7D3125FF0101010A90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF000000000000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000009400FF009500FF009400FF009300FF0091
      00FF008E00FF008B00FF008600FF008100FF007B00FF007500FF006E00FF0066
      00FF006500FF006500FF006500FF006500FF006500FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090382AFF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000A000FF00A100FF00A200FF00A100FF00A000FF009E
      00FF009B00FF009700FF009300FF008D00FF008700FF008100FF007900FF0071
      00FF006900FF006500FF006500FF006500FF006500FF006500FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000090382AFF90382AFF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000AA00FF01AB01FF03AB03FF03AB03FF03AB03FF02AB02FF00AA
      00FF00A800FF00A400FF009F00FF009900FF009300FF008C00FF008500FF007C
      00FF007300FF006A00FF006500FF006500FF006500FF006500FF006500FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000090382AFF90382AFF90382AFF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007AD07FF0AAE0AFF0DAF0DFF0EAF0EFF0FAF0FFF0FAF0FFF0DAF0DFF0BAE
      0BFF08AD08FF04AC04FF00AA00FF00A500FF009E00FF009700FF008F00FF0087
      00FF007D00FF007400FF006A00FF006500FF006500FF006500FF006500FF0065
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009038
      2AFF90382AFF90382AFF90382AFF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000EAF
      0EFF12B012FF15B115FF18B218FF1AB31AFF1AB31AFF1AB31AFF19B319FF17B2
      17FF13B113FF0FAF0FFF0AAE0AFF05AC05FF00A900FF00A200FF009900FF0091
      00FF008700FF007D00FF007300FF006900FF006500FF006500FF006500FF0065
      00FF006500FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009038
      2AFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000018B2
      18FF1DB41DFF21B521FF24B624FF25B725FF26B726FF26B726FF24B624FF22B6
      22FF1FB51FFF1AB31AFF15B115FF0FAF0FFF08AD08FF01AB01FF00A400FF009A
      00FF009100FF008700FF007B00FF007100FF006600FF006500FF006500FF0065
      00FF006500FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF8B3628FF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001CB41CFF22B6
      22FF27B727FF2CB92CFF2FBA2FFF31BB31FF32BB32FF31BB31FF30BA30FF2DB9
      2DFF29B829FF25B725FF1FB51FFF19B319FF12B012FF0AAE0AFF02AB02FF00A4
      00FF009900FF008F00FF008400FF007800FF006D00FF006500FF006500FF0065
      00FF006500FF006500FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090382AFF90382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000893527F290382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF7D3125FF7D3125FF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000026B726FF2CB9
      2CFF32BB32FF37BD37FF3ABE3AFF3CBE3CFF3DBF3DFF3DBF3DFF3BBE3BFF38BD
      38FF34BC34FF2FBA2FFF29B829FF22B622FF1BB31BFF13B113FF0AAE0AFF01AB
      01FF00A200FF009700FF008C00FF008100FF007400FF006800FF006500FF0065
      00FF006500FF006500FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000090382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF7D3125FF0000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002FBA2FFF36BC
      36FF3CBE3CFF41C041FF45C145FF48C248FF49C349FF49C349FF47C247FF44C1
      44FF3FBF3FFF39BD39FF33BB33FF2BB92BFF23B623FF1BB31BFF12B012FF08AD
      08FF00A900FF009E00FF009300FF008700FF007A00FF006F00FF006500FF0065
      00FF006500FF006500FF00000000000000000000000000000000000000000000
      000000000000000000000000000090382AFF90382AFF90382AFF90382AFF9038
      2AFF000000000000000000000000000000000000000000000000000000009038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF7D3125FF0000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000008B7C5FFF8B7C5FFF000000000000
      000000000000000000000000000000000000000000000000000038BD38FF3FBF
      3FFF46C246FF4CC44CFF50C550FF53C653FF55C755FF54C654FF52C652FF4FC5
      4FFF49C349FF43C143FF3CBE3CFF34BC34FF2BB92BFF22B622FF19B319FF0FAF
      0FFF05AC05FF00A500FF009900FF008D00FF008100FF007400FF006800FF0065
      00FF006500FF006500FF006500FF000000000000000000000000000000000000
      0000000000000000000090382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF7D3125FF7D3125FF0000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF0000
      0000000000000000000000000000000000000000000037BD37FF40C040FF48C2
      48FF50C550FF56C756FF5BC95BFF5FCA5FFF60CA60FF60CA60FF5DC95DFF59C8
      59FF54C654FF4DC44DFF45C145FF3CBE3CFF33BB33FF29B829FF1FB51FFF15B1
      15FF0BAE0BFF00AA00FF009F00FF009300FF008600FF007900FF006C00FF0065
      00FF006500FF006500FF006500FF000000000000000000000000000000000000
      00000000000090382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF7D3125FF000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF00000000000000000000000000000000000000003DBF3DFF47C247FF50C5
      50FF58C858FF60CA60FF67CD67FF71D071FF75D175FF74D174FF6ECF6EFF64CC
      64FF5DC95DFF56C756FF4DC44DFF44C144FF3ABE3AFF30BA30FF25B725FF1BB3
      1BFF10B010FF05AC05FF00A400FF009700FF008B00FF007D00FF007000FF0065
      00FF006500FF006500FF006500FF000000000000000000000000000000000000
      000090382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF7D3125FF7D3125FF000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FF0000000000000000000000000000
      0000000000000000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF0000000000000000000000000000000043C143FF4DC44DFF57C7
      57FF60CA60FF6ECF6EFF80D580FF8CD98CFF92DB92FF91DA91FF89D889FF7AD3
      7AFF68CD68FF5ECA5EFF54C654FF4AC34AFF40C040FF35BC35FF2AB82AFF1FB5
      1FFF14B114FF09AD09FF00A800FF009B00FF008E00FF008200FF007400FF0067
      00FF006500FF006500FF006500FF000000000000000000000000000000009038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF7D3125FF00000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FF000000000000000000000000000000000000
      0000000000000000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF00000000000000000000000048C248FF53C653FF5DC9
      5DFF6BCE6BFF82D582FF96DC96FFA6E1A6FFAEE4AEFFADE4ADFFA2E0A2FF91DA
      91FF7BD37BFF65CC65FF5AC85AFF50C550FF45C145FF3ABE3AFF2EBA2EFF23B6
      23FF17B217FF0CAE0CFF00AA00FF009F00FF009100FF008400FF007600FF0069
      00FF006500FF006500FF006500FF00000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF7D31
      25FF7D3125FF00000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FF0000000000000000000000008B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF00000000000000000000000056C756FF62CB
      62FF77D277FF92DB92FFA9E2A9FFBDE9BDFFC9EDC9FFC7ECC7FFB9E8B9FFA4E1
      A4FF8CD98CFF71D071FF5FCA5FFF54C654FF48C248FF3DBF3DFF31BB31FF26B7
      26FF1AB31AFF0EAF0EFF02AB02FF00A100FF009400FF008700FF007800FF006B
      00FF006500FF006500FF006500FF000000000000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF7D3125FF7D31
      25FF0000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FF00000000000000008B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF000000000000000059C859FF64CC
      64FF80D580FF9BDE9BFFB7E7B7FFD0EFD0FFE3F6E3FFE1F5E1FFCBEECBFFB2E5
      B2FF96DC96FF7AD37AFF62CB62FF56C756FF4BC34BFF3FBF3FFF33BB33FF27B7
      27FF1BB31BFF10B010FF04AC04FF00A200FF009500FF008800FF007A00FF006C
      00FF006500FF006500FF000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF7D3125FF7D3125FF0000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FF0000000000000000000000008B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF8B7C5FFF000000000000000059C859FF65CC
      65FF82D582FF9EDF9EFFBAE8BAFFD6F1D6FFF3FBF3FFEFFAEFFFD2F0D2FFB6E7
      B6FF9ADD9AFF7DD47DFF63CB63FF57C757FF4BC34BFF40C040FF34BC34FF28B8
      28FF1CB41CFF10B010FF04AC04FF00A300FF009600FF008800FF007A00FF006D
      00FF006500FF006500FF00000000000000005D251AA490382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF7D3125FF7D3125FF0703010E0000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FF000000000000000000000000000000000000
      0000000000000000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF8B7C5FFF00000000000000000000000058C858FF63CB
      63FF7DD47DFF99DD99FFB3E6B3FFCCEECCFFDEF4DEFFDDF4DDFFC9EDC9FFB1E5
      B1FF96DC96FF7AD37AFF62CB62FF57C757FF4BC34BFF3FBF3FFF33BB33FF28B8
      28FF1CB41CFF10B010FF04AC04FF00A300FF009500FF008800FF007A00FF006D
      00FF006500FF006500FF0000000000000000000000005F241CA890382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF7D3125FF7D3125FF00000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FF0000000000000000000000000000
      0000000000000000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF8B7C5FFF000000000000000000000000000000000000000060CA
      60FF73D173FF8DD98DFFA4E1A4FFB7E7B7FFC3EBC3FFC3EBC3FFB6E7B6FFA3E0
      A3FF8BD88BFF71D071FF5FCA5FFF54C654FF49C349FF3DBF3DFF32BB32FF26B7
      26FF1AB31AFF0FAF0FFF03AB03FF00A200FF009400FF008700FF007900FF006C
      00FF006500FF00000000000000000000000000000000000000005D251AA49038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF8B3628FF7D3125FF7D3125FF0000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FF05030005000000000000
      0000000000000000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF8B7C5FFF0000000000000000000000000000000000000000000000005BC9
      5BFF65CC65FF7BD37BFF90DA90FF9FDF9FFFA8E2A8FFA7E2A7FF9FDF9FFF8FDA
      8FFF7AD37AFF65CC65FF5AC85AFF50C550FF45C145FF3ABE3AFF2FBA2FFF24B6
      24FF18B218FF0DAF0DFF01AB01FF00A000FF009200FF008600FF007700FF006A
      00FF006500FF0000000000000000000000000000000000000000000000005F24
      1CA890382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF7D3125FF7D3125FF7D3125FF000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF8B7C
      5FFF000000000000000000000000000000000000000000000000000000000000
      00005DC95DFF67CD67FF78D278FF85D685FF8CD98CFF8CD98CFF85D685FF78D2
      78FF67CD67FF5ECA5EFF54C654FF4BC34BFF40C040FF36BC36FF2BB92BFF20B5
      20FF15B115FF0AAE0AFF00A900FF009D00FF009000FF008300FF007500FF0068
      00FF000000000000000000000000000000000000000000000000000000000000
      00005D251AA490382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF7D3125FF7D3125FF7D31
      25FF7D3125FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000008B7C5FFF8B7C5FFF8B7C5FFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005CC95CFF63CB63FF6ACE6AFF70D070FF70D070FF6ACE6AFF63CB
      63FF5DC95DFF56C756FF4DC44DFF44C144FF3BBE3BFF31BB31FF26B726FF1CB4
      1CFF11B011FF06AC06FF00A600FF009900FF008C00FF008000FF007200FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F241CA890382AFF90382AFF90382AFF90382AFF90382AFF7D31
      25FF7D3125FF7D3125FF7D3125FF7D3125FF7D3125FF7D3125FF7E3325FC0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000058C858FF5CC95CFF5ECA5EFF5ECA5EFF5CC95CFF58C8
      58FF53C653FF4DC44DFF45C145FF3DBF3DFF34BC34FF2AB82AFF21B521FF17B2
      17FF0CAE0CFF02AB02FF00A100FF009500FF008800FF007B00FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005F241CA890382AFF90382AFF90382AFF90382AFF7D31
      25FF7D3125FF532019A100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000050C550FF52C652FF52C652FF51C551FF4EC4
      4EFF49C349FF43C143FF3CBE3CFF35BC35FF2CB92CFF24B624FF1AB31AFF11B0
      11FF07AD07FF00A700FF009B00FF009000FF008400FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005D251AA490382AFF90382AFF90382AFF7D31
      25FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000047C247FF47C247FF45C145FF43C1
      43FF3FBF3FFF39BD39FF33BB33FF2CB92CFF24B624FF1CB41CFF13B113FF0AAE
      0AFF00AA00FF00A100FF009500FF008A00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D251AA490382AFF90382AFF7D31
      25FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001515157090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF0000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003ABE3AFF37BD
      37FF34BC34FF2FBA2FFF29B829FF23B623FF1CB41CFF14B114FF0CAE0CFF03AB
      03FF00A400FF009900FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005D251AA490382AFF7D31
      25FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF0000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFFF6B5
      63FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025B725FF1FB51FFF19B319FF13B113FF0BAE0BFF04AC04FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005D251AA47D31
      25FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000090382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF000000000000000090382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005621
      18A4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      157090382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF90382AFF9038
      2AFF0101010A0000000000000000000000000000000090382AFF90382AFF9038
      2AFF90382AFFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B5
      63FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FFF6B563FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000030102011F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0021020202430000000B00000001000000020000000300000004000000060000
      000600000008000000090000000A0000000B0000000B0000000B0000000A0000
      0009000000080000000700000005000000040000000300000001000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002300100B7B004E34E9618F80F0A9A9A9D4A9A9A9D4A9A9A9D4AAAA
      AAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4A9A9A9D4A9A9
      A9D4A8A8A8D4A8A8A8D49FA7A5DB337660F7005539F4002B1DAD000100330000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A020302260303032A0303032A0303032A0303032A000000150000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000002B2B2B
      2BBC5A5A5AED1010106F00000007000000090000000C0000000D0000000F0000
      0010000000120000001300000015000000150000001500000015000000140000
      001300000012000000110000000F0000000D0000000B00000009000000060000
      0004000000020000000000000000000000000000000000000000000000000000
      0014003825C5005B3CFB005D3EFF79A999FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
      F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFDFE7E4FF3C836BFF005D3EFF005D3EFF00432DD90007
      044F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000408
      055F2D6747FF2D6747FF2E6848FF2E6848FF2E6748FF2E6748FF2C6345FB1530
      22B4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000454545B34D4D
      4DFF505050FF666666FF1416177D010203340000001700000013000000150000
      0017000000190000001B0000001D0000001D0000001E0000001E0000001C0000
      001B00000019000000170000001500000013000000100000000E0000000B0000
      000800000006000000030000000000000000000000000000000000000015002F
      20B7005D3EFF005D3EFF005D3EFF79AA9AFFF6F6F6FFF0F0F0FFE4E4E4FFE5E5
      E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5
      E5FFE4E4E4FFEAEAEAFFE0E8E5FF3C836BFF005D3EFF005D3EFF005D3EFF0052
      37F0000100220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C1C
      14A62E6B49FF2C6345FF2D6445FF2D6445FF2D6345FF2D6345FF2E6747FF2D67
      47FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222776565
      65F4424242FF4F4F4FFF5082A2F62B75A8D51A445FAF0B1E2881020608410000
      001B000000160000001700000019000000190000001A0000001A000000180000
      0017000000150000001400000012000000100000000E0000000C000000090000
      0006000000040000000100000000000000000000000000000000000705510055
      39F4005D3EFF005D3EFF005D3EFF7AAA9BFFF7F7F7FFF4F4F4FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEF
      EFFFEEEEEEFFF0F0F0FFE1E9E6FF3C846BFF005D3EFF005D3EFF005D3EFF005D
      3EFF001810890000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000405043827453BAA0C16136200000015000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D1D
      15AA2F6F4BFF2D6747FF2E6747FF2E6747FF2E6847FF2E6847FF2F6B49FF2E6A
      49FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000031212
      126256585AF45B7B8AFF67C8F7FF54BFFBFF3DB0FBFF37ABFBFF37AAFAFF369D
      DEF11F5778B50E2734800103023B0000000E0000000D0000000D0000000C0000
      000C0000000A0000000900000007000000060000000400000003000000020000
      00000000000000000000000000000000000000000000000000000022179B005D
      3EFF005D3EFF005D3EFF005D3EFF7BAA9BFFF8F8F8FFF3F3F3FFEDEDEDFFEDED
      EDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDED
      EDFFECECECFFF2F2F2FFE2EAE7FF3C846CFF005D3EFF005D3EFF005D3EFF005D
      3EFF003A27C90202021F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000001002D095337D4128155FF0A6643F000130C7A0000
      001E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D1E
      15AA30734FFF2E6B4AFF2F6C4AFF2F6C4AFF2F6C4AFF2F6C4AFF306F4CFF2F6B
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00034E5C64AD9BD6F2FF71CEFBFF68CBFBFF5DC5FBFF4BBAFBFF39AEFBFF36AC
      FBFF36AAFAFF42B2EAFF4C846CD0030705380000000200000002000000020000
      0002000000010000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000281BA9005E
      3EFF005F3FFF005F3FFF00603FFF7BAC9CFFF9F9F9FFF3F3F3FFEDEDEDFFEEEE
      EEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEDEDEDFFF2F2F2FFE3EBE8FF3C846CFF005D3EFF005D3EFF005D3EFF005D
      3EFF00402BD40405052A000000000000000000000000000000150006044E0007
      0555000705550007055500070555000705550007055500070555000705550008
      0555000805550008055500070555000705550002013100000006000000000000
      0000000000000000000000000003000A075C0E7A51FF076E49FF0B6F49F90640
      2AC0000000150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D1F
      15AA327952FF30714DFF31714DFF31714DFF31714DFF31714DFF32754FFF306F
      4CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001418195DC2E1F1F992D9FBFF7BD2FBFF68CBFBFF64CAFBFF58C3FBFF46B8
      FBFF3CB1FBFF58BECEFF8ED9B7FF5EAA88E90206043600000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002A1BA90162
      41FF016341FF026342FF026442FF7DAE9EFFFAFAFAFFF8F8F8FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7
      F7FFF6F6F6FFF7F7F7FFE4ECE9FF3E876DFF006040FF00603FFF005F3FFF005E
      3EFF00422BD40405052A00000000000000000005034A0E6B47E9168B5BFF178D
      5DFF178D5DFF178D5CFF178C5CFF178C5CFF178C5CFF168B5CFF168B5BFF168A
      5BFF168A5BFF168A5BFF15895AFF15885AFF138457FF07432CBF000000000000
      000000000000000000000000000000000000043222A90B754DFF026342FF0972
      4CFF06442EC60001002700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D1F
      15AA347D55FF327550FF327550FF327650FF327650FF327650FF337952FF3173
      4EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002030336A3B9C3E0B8E6FCFF91D9FBFF7CD2FBFF65CAFAFF62C9FAFF5EC6
      FBFF69C9F4FF9FE2D6FF8BD8B5FF80D3ADFF3B7E60CF02060436000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002B1DA90366
      43FF036644FF036744FF046744FF7EB19FFFFAFAFAFFF1F1F1FFEAEAEAFFEAEA
      EAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEA
      EAFFEAEAEAFFF1F1F1FFE4ECE9FF3F8A70FF026442FF026342FF016241FF0162
      41FF01432DD40405052A0000000000000000052B1D9815895AFF107E54FF107E
      54FF107E53FF107E53FF0F7D53FF0F7D53FF0F7C52FF0F7C52FF0E7B52FF0E7B
      51FF0D7A51FF0D7950FF0C784FFF0C774FFF118054FF0E6A47E9000000000000
      000000000000000000000000000000000000000403460E6A46E9046745FF0365
      43FF0C744DFB0326199400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D20
      16AA368357FF337A53FF347B53FF347B53FF347B53FF347B53FF358055FF3277
      50FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001374848BBDD9F1FDFFAEE3FCFF95DBFCFF87D5FBFF67CBF9FF7CD5
      EFFF8FDABFFF92DCBAFFAAE7CBFF82D3AEFF6DCAA1FF409B72E9010504360000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000012C1EA9056A
      46FF066B46FF066B47FF066C47FF559B82FFFBFBFBFFFBFBFBFFFCFCFCFFFCFC
      FCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFBFB
      FBFFFBFBFBFFFAFAFAFFD1E2DCFF2E8364FF046845FF046844FF036644FF0366
      43FF02462FD40405052A0000000000000000073825AA168A5BFF128356FF1283
      56FF128356FF128356FF128356FF128256FF118255FF118155FF118054FF1080
      54FF107E53FF107D53FF0F7C52FF128256FF13774FED010F0966000000000000
      00000000000000000000000000000000000000000006052E1EA60D7850FF0569
      46FF066C48FF107D53FF00020131000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E21
      17AA37875AFF347E55FF358056FF358056FF358056FF358056FF368458FF337B
      53FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001373F4396E7F6FDFFC9EBFCFFA1DFFCFF94DAFCFF93DCEFFF8EDA
      C2FF71CBA2FF6ECAA0FF8EDAB7FFA0E3C3FF6AC99FFF5DC296FF247250CF0105
      0336000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000022E1FA9076D
      48FF076E49FF076F49FF086F4AFF137652FFB6D6CAFFF8FAF9FFFCFCFCFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFFBFBFBFFF4F7F6FF6EAD96FF0D714DFF066C47FF066B47FF056A46FF0569
      46FF034830D40405052A0000000000000000083927AA188E5EFF148759FF1487
      59FF148759FF148758FF148658FF138658FF138558FF138557FF128457FF1284
      56FF128356FF118255FF138558FF188E5EFF02120C6E0000000A000000000000
      00000000000000000000000000000000000000000000010C0866138457FF076D
      48FF066A46FF0E7B51FF032518980000000300000000000000000000000A0711
      0C74163323AA163323AA163423AA163423AA173424AA173524AA173524AA2963
      43E2388D5DFF368458FF378559FF378559FF378559FF378559FF38895BFF3786
      5AFF173524AA173524AA163524AA163524AA163423AA163423AA163323AA1533
      23AA0709083F0000000000000000000000000000000000000000000000000000
      0000000000000B0D0F4DE4F4FDFFE0F4FDFFB4E5FCFFA4E1F2FF90DBBCFF71CB
      A3FF6CC9A0FF68C79CFF63C59AFF7BD1AAFF92DCB9FF61C498FF4AB888FF2A8D
      62E9010503360000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000033020A90972
      4BFF0A724CFF0A734CFF0A734CFF0A744CFF127A53FF449B79FF88C0AAFF88C1
      AAFF89C1ABFF89C1ABFF89C1ABFF89C1ABFF89C1ABFF89C0AAFF88C0AAFF88BF
      AAFF7BB9A1FF39936FFF09714BFF09714AFF08704AFF086F49FF076E49FF076D
      48FF044A31D40405052A0000000000000000093B27AA1C9261FF168B5CFF168B
      5BFF168B5BFF168B5BFF168A5BFF168A5BFF158A5AFF15895AFF158859FF1588
      59FF148758FF178B5CFF177D53ED02120C6E0000000000000000000000000000
      0000000000000000000000000000000000000000000000020131148557FF0A72
      4BFF086E49FF086E49FF0D5839D100000027000000000000000006070731275F
      41DB378559FF378659FF37885AFF38895BFF388A5CFF388B5CFF398C5DFF398C
      5DFF388B5DFF37885BFF37895BFF38895BFF38895BFF388A5BFF398A5CFF398D
      5EFF398C5DFF398B5DFF388B5CFF388A5CFF37895BFF37875BFF37865AFF3788
      5AFF2F4137A20000000000000000000000000000000000000000000000000000
      0000000000000000000ED0EEFDFFE0F4FEFFC4EBF3FFBBEEE1FF78CFA8FF6DC9
      A0FF68C79CFF64C599FF5FC296FF5BC194FF78CFA7FF86D6B1FF46B786FF3AB0
      7CFF176645CF0005033600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000053322A91081
      55FF118155FF118155FF0F7D53FF0E7C52FF0E7A50FF0C784FFF0D7A50FF0E7A
      51FF0E7A51FF0E7A51FF0E7A51FF0E7A51FF0E7A51FF0E7951FF0D7951FF0D79
      50FF0C774FFF0B764EFF0B754DFF0A744DFF0A734CFF0A734CFF09714BFF0971
      4BFF054C33D40405052A00000000000000000B3C29AA1F9564FF188F5EFF188F
      5EFF188F5EFF188E5EFF188E5DFF178E5DFF178D5DFF178D5CFF168C5CFF168B
      5CFF198F5EFF1F9664FF02120C6E0000000A0000000000000000000000000000
      0000000000000000000000000000000000000000000000030131148759FF0C76
      4EFF09724BFF08704AFF11724BED0002014300000000000000000B0C0B3F2F72
      4DE9368558FF378659FF37885AFF38885BFF388A5CFF388B5CFF398C5DFF398C
      5DFF398D5DFF398D5EFF398E5EFF398E5EFF398E5EFF398E5EFF398E5EFF398E
      5EFF398E5EFF398D5EFF398C5DFF398C5DFF388B5CFF388A5CFF38895BFF398D
      5DFF34493DAA0000000000000000000000000000000000000000000000000000
      000000000000000000005C7980BBA5E1CBFF7BD1AAFF90DAB7FFB0EACEFF77CF
      A7FF63C499FF5FC296FF5AC093FF56BE90FF50BB8CFF62C599FF74CDA6FF3CB2
      7EFF26A56EFF177E52E900040336000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000063623A9158A
      5AFF15895AFF15895AFF158859FF158859FF148759FF148758FF128457FF1182
      55FF108054FF0F7D53FF0F7C52FF0F7C52FF0E7C52FF0E7B52FF0E7B51FF0E7B
      51FF0E7A51FF0D7A50FF0D7950FF0D784FFF0C774FFF0C774EFF0B754EFF0B75
      4DFF064E34D40405052A00000000000000000C3E2AAA239967FF1A9361FF1A93
      61FF1A9360FF1A9260FF1A9260FF1A9260FF19915FFF19915FFF19905FFF198F
      5EFF259C69FF125C3ECD00000015000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002100A70178C5CFF0D78
      4FFF0B754EFF0B744DFF138558FF0004035500000000000000000B0C0B3F3077
      4FE937895BFF388A5CFF388C5DFF388C5DFF398E5EFF398E5EFF3A8F5FFF3A90
      5FFF3A9160FF3A9160FF3A9260FF3A9261FF3A9261FF3A9261FF3A9261FF3A92
      61FF3A9160FF3A9160FF3A9060FF3A905FFF398F5FFF398E5EFF398D5DFF3A91
      60FF354A3EAA0000000000000000000000000000000000000000000000000000
      0000000000000000000005080742619D8ADB68C89EFF63C59AFF90DAB8FFAAE7
      CAFF63C59AFF5BC093FF56BE90FF52BC8DFF4AB989FF3EB380FF57BF92FF66C7
      9CFF26A56EFF219F68FF0F5C3CCF000402360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000073724A9168C
      5CFF168C5CFF168B5BFF168B5BFF158A5BFF158A5AFF15895AFF148959FF1488
      59FF148759FF138657FF128356FF118154FF108054FF108054FF107E53FF0F7E
      53FF0F7D53FF0F7D53FF0E7C52FF0E7C52FF0E7B51FF0D7A51FF0D7950FF0C78
      4FFF075035D40405052A00000000000000000D3F2BAA269C6AFF1C9663FF1C96
      63FF1C9663FF1C9663FF1B9562FF1B9562FF1B9562FF1B9461FF1A9361FF1A93
      60FF1D9563FF289E6BFF0A3322A20000001C0000000000000000000000000000
      000000000000000000000000000000000000000000180A422CBB148758FF0E7B
      52FF0D7950FF0C774FFF128456FF02110B6A00000000000000000B0C0B3F3379
      51E9398E5EFF39905FFF3B9261FF3B9362FF3C9663FF3C9864FF3D9A66FF3D9B
      66FF3E9D67FF3E9D67FF3E9D67FF3E9D67FF3E9D67FF3E9D67FF3E9D67FF3E9C
      66FF3D9B66FF3D9965FF3C9864FF3C9764FF3B9562FF3B9462FF3A9260FF3C96
      62FF354B3FAA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000102022A519581DB5BC195FF52BD8EFF76CE
      A7FF9EE1C2FF62C499FF50BB8DFF4AB988FF3CB27EFF31AD76FF27A76EFF40B2
      81FF59BF92FF2AA46FFF1C9863FF106F49E90305043800000003000000000000
      0000000000000000000000000000000000000000000000000000073824A9188F
      5EFF188F5EFF188E5EFF188E5DFF178D5DFF178D5CFF178C5CFF168B5CFF168B
      5BFF168A5BFF158A5AFF15895AFF158859FF138658FF128457FF128356FF1283
      56FF118255FF118255FF118155FF118054FF107E54FF107E53FF0F7D52FF0F7C
      52FF095237D40405052A00000000000000000F412CAA29A06DFF1E9A65FF1E9A
      65FF1E9A65FF1E9A65FF1E9965FF1E9965FF1D9864FF1D9864FF1D9763FF1C97
      63FF1C9662FF1B9562FF2AA16EFF1E7852E2010B075100000011000000000000
      00000000000000000000000000000000000A0933229B1B905EFB118255FF1180
      54FF0F7D52FF0E7B51FF16895BFF0004035500000000000000000B0C0C3F367D
      55E93C9763FF3D9965FF3D9B67FF3E9D67FF3E9E68FF3E9E68FF3E9F68FF3F9F
      69FF3FA069FF3FA069FF3FA069FF3FA069FF3FA069FF3FA069FF3FA069FF3FA0
      69FF3E9F68FF3E9F68FF3E9E68FF3E9D67FF3D9C67FF3D9B66FF3D9964FF3D9B
      66FF354C3FAA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004080846448F7ADB49B988FF44B6
      84FF76CEA7FF94DDBBFF4CBA8AFF40B482FF33AD77FF29A870FF22A36BFF21A0
      69FF40B080FF4EB88AFF1E9764FF2E986CFF8C8E8DD70D0D0C4D000000000000
      0000000000000000000000000000000000000000000000000000083926A91992
      60FF19915FFF19915FFF19905FFF18905EFF188F5EFF188F5EFF178E5DFF178E
      5DFF178D5CFF168C5CFF168B5BFF168B5BFF158A5AFF15895AFF148758FF1386
      58FF138657FF138557FF128457FF128456FF118356FF118255FF118155FF1080
      54FF095337D40405052A000000000000000010422DAA2CA370FF209D67FF209D
      67FF1F9D67FF1F9D67FF1F9C67FF1F9C67FF1F9C66FF1E9B66FF1E9A65FF1E9A
      65FF1D9964FF1D9864FF1E9864FF259D6AFF288C61ED124B34B4010A06540000
      000E0000000000000000000101200726198D209563FB168B5BFF138557FF1283
      56FF118154FF107E53FF188759F70004024D00000000000000000B0C0C3F3C83
      5BE93E9E68FF3F9E68FF3FA069FF3FA069FF3FA16AFF40A26AFF40A26BFF40A3
      6BFF40A36BFF40A36BFF40A46CFF40A46CFF40A46CFF40A36BFF40A36BFF40A3
      6BFF40A26BFF40A26BFF3FA16AFF3FA16AFF3FA069FF3F9F69FF3E9E68FF3FA0
      69FF364D40AA0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002022A368970DB3AB1
      7DFF2FAA75FF59BE92FF85D5B0FF43B584FF28A870FF23A46BFF20A069FF1E9C
      66FF1C9763FF30A372FF4AB286FF96C3B1FFBAB9B9FFA4A4A3F70F0F0F4F0000
      0005000000000000000000000000000000000000000000000000083A26A91B95
      62FF1B9461FF1B9461FF1A9361FF1A9361FF1A9260FF1A9260FF178E5DFF2290
      64FF289267FF269166FF269065FF269065FF269065FF269065FF268F64FF228D
      62FF138658FF15895AFF158859FF148859FF148758FF138658FF138557FF1284
      57FF0B5639D40405052A000000000000000011432FAA33AB77FF28A66FFF27A6
      6FFF26A66EFF25A46DFF24A36CFF23A26BFF22A16AFF22A069FF209F69FF209E
      68FF1F9C67FF1F9C66FF1E9A66FF1E9A65FF1E9A66FF29A16DFF2FA572FF299E
      6CFF186948D4186847D4269C6AFF259D6AFF188E5EFF168B5BFF15885AFF1487
      59FF138457FF128457FF146E48DB000101310000000000000000090B0A3B3D80
      5BE546A56FFF46A570FF47A771FF48A772FF48A873FF48A973FF49A974FF49AA
      74FF45A770FF42A66EFF43A76EFF43A76FFF43A76FFF43A66EFF43A76EFF47A9
      72FF47A872FF47A872FF46A771FF46A770FF44A56EFF43A56EFF42A36DFF44A5
      6EFF374F41AA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030707462881
      66DB219F69FF219D67FF5ABD92FF77CFA8FF27A66FFF21A169FF1F9D66FF1C99
      63FF1A9360FF188F5EFF6CB899FFDCE5E1FFCECECFFFC2C2C2FF9B9B9BE00D0D
      0D4F000000000000000000000000000000000000000000000000093A27A91C97
      63FF1C9763FF1C9662FF1B9662FF1B9562FF1B9561FF178C5CFF7EBAA3FFB4D3
      C7FFB5D0C6FFAFCABFFFAAC6BBFFADCABEFFB2D0C3FFB6D4C7FFB6D5C7FFB1D1
      C2FF6FAC94FF218B60FF168B5BFF168B5BFF158A5AFF15895AFF148859FF1487
      59FF0E573AD40405052A0000000000000000134530AA3CB17DFF32AD77FF31AD
      76FF30AC75FF2FAC75FF2DAB73FF2BAA72FF29A970FF27A76FFF24A56DFF24A5
      6CFF22A26AFF22A16AFF209E68FF1F9D67FF1F9B66FF1E9B66FF1F9A65FF239C
      69FF259D6BFF249C69FF1E9764FF1A9260FF188F5EFF188E5DFF168C5CFF158A
      5BFF148859FF188E5DFF0D4B32B80000000E0000000000000000000000110F23
      188928533BBF29543CBF29553DBF29553DBF2A553DBF2B553EBF2B563FBF4687
      65E95AB383FF4AAB75FF4BAB75FF4BAB76FF4BAB75FF4BAB75FF51AE7AFF58AA
      7DFF29553DBF29553DBF28553CBF27553BBF26543ABF26533ABF245239BF2352
      38BF0B0F0D540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      022A1C775DDB1D9764FF1B9561FF42AD80FF68C69DFF2DA571FF1C9864FF1A94
      61FF198F5EFF46A17BFFDEE8E4FFF4F4F4FFD9D9D9FFD2D2D2FFD3D2D2FFC3C3
      C3F70A0B0B4700000001000000000000000000000000000000000A3C28A91E9A
      65FF1E9965FF1E9965FF1D9864FF1D9864FF1F9664FF8DC3AEFFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFDFE6E2FFAFCBC0FFA5C6B9FFD4E2
      DAFFDFE3DFFF8FB5A5FF168C5CFF188E5EFF178D5DFF178D5CFF168C5CFF168B
      5BFF0F593DD40405052A0000000000000000144631AA45B585FF3DB37EFF3DB3
      7EFF3BB27DFF3DB380FF42B583FF37B07BFF34AE78FF31AD76FF2EAB74FF2CAA
      72FF28A870FF26A76EFF24A56DFF23A46CFF22A16AFF219F69FF1F9D67FF1F9B
      66FF1E9965FF1D9864FF1C9663FF1C9562FF1A9361FF1A9160FF188F5EFF188D
      5DFF188E5EFF219B67FF0108054D000000000000000000000000000000000000
      0007000000150000001500000015000000150000001500000015000000151B38
      28B162B789FF52AF7BFF52AF7CFF53AF7CFF52AF7CFF52AF7BFF59B282FF53A4
      78FF000000150000001500000015000000150000001500000015000000150000
      0015000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000106064618725ADB178F5DFF178D5CFF45AE82FF5DC094FF1E9764FF1890
      5EFF45A17BFFC9DFD6FFE8E8E7FFDDDDDCFFC0C0C0FFE2E2E2FFD3D3D3FFC1C1
      C1FF525D7AD200020636000000000000000000000000000000000C3D29A91F9C
      66FF1F9C66FF1E9B66FF1E9B65FF1E9A65FF39A276FFCEE5DCFFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFACC8BCFF136E4EFF096847FF6CA4
      8FFFDFE3DFFFC7CDC9FF1E8C60FF19905FFF19915FFF18905EFF188F5EFF178E
      5DFF115B3ED40405052A0000000000000000154732AA4DB989FF46B785FF45B7
      85FF49B888FF4FB98BFF3CA476F74EBA8BFF3CB27DFF3AB17CFF37AF7AFF34AE
      78FF30AC75FF2DAB73FF29A870FF26A76EFF24A56CFF23A46CFF22A26AFF219F
      69FF1F9D67FF1F9B66FF1D9965FF1D9864FF1C9662FF1B9562FF1A9260FF1990
      5FFF229967FF145C3DC600000007000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000172D
      21AA6BBB91FF5BB384FF5BB384FF5BB484FF5BB384FF5BB384FF61B689FF58A8
      7DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000001022A156A55DB148759FF128456FF329F71FF52B78CFF4FA6
      83FFD4DEDAFFD5D5D5FFD8D7D7FFC2C1C1FFDCDBDBFFE3E3E3FFC2C2C2FFD0D0
      D1FF496BB9FF0E308EE9000104310000000000000000000000000E402BA9219F
      68FF209E68FF209E68FF209D67FF209D67FF42A97DFFD7EAE2FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FF9DC1B3FF086F49FF086F4AFF5299
      7EFFDFE3DFFFCCCFCCFF32956CFF1A9160FF1B9461FF1A9361FF1A9260FF1A92
      60FF135F40D40405052A0000000000000000174933AA55BE90FF50BC8DFF54BE
      90FF429D75ED071F15820000001F0F37269E4CAF85F74DBA8BFF41B482FF3EB3
      80FF3BB17CFF37B07AFF33AD77FF2FAC74FF2AA971FF26A76FFF24A56DFF23A4
      6CFF22A16AFF21A069FF1F9D67FF1F9B66FF1E9965FF1D9864FF1C9662FF239B
      68FF1E734ED80001013100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000172F
      22AA72BF97FF62B789FF62B78AFF63B78AFF62B78AFF62B78AFF69BA8FFF5CAC
      82FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001060646116551DB0F7D52FF0E7B51FF82BBA4FFD0DC
      D7FFE5E5E5FFC5C5C5FFDEDEDEFFDFDFDFFFD5D5D5FFB4B4B4FFE2E2E2FFB7C3
      DAFF1A48B1FF0F36A9FF05113BA50000000A00000000000000000D3E2AA923A2
      6BFF21A069FF21A069FF219F69FF219F68FF43AB7EFFD7EAE2FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FF9EC4B4FF0C774EFF0D784FFF559F
      83FFDFE3DFFFCCCFCCFF33976DFF1A9360FF1B9461FF1C9662FF1B9562FF1B95
      61FF1A6446D40405052A0000000000000000174934AA5CC195FF5CC296FF57BD
      91FF06170F6E0000000A000000000000000E08211674369069E55AC093FF48B8
      87FF43B583FF3FB480FF3BB17CFF37B07AFF32AD76FF2EAB73FF28A870FF25A6
      6DFF23A46CFF22A36BFF21A069FF209E68FF1F9C66FF1E9B65FF29A16EFF2C9B
      6BF7020A074E0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001830
      23AA7AC39EFF6ABB91FF6BBB91FF6BBC92FF6BBB91FF6ABB91FF71BE96FF61AF
      86FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001012A457164DBA0B5B1FFDADADCFFF5F5
      F6FFE2E2E2FFBCBCBCFFDEDEDEFFDBDBDBFFBFBFBFFFCFCFCEFFC3CBDAFF3E66
      BBFF123DADFF0D32A6FF071851B60000000F00000000000000000831219E26A2
      6DFF23A36BFF23A36BFF22A26BFF22A26AFF45AD81FFD8EBE3FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFA0C7B7FF128255FF128356FF59A6
      88FFDFE3DFFFCCCFCCFF359A6FFF1C9662FF1B9562FF1D9864FF1D9864FF209A
      66FF17553DC70202021D00000000000000000A251A7A5BBC93FD4BA67EF0071C
      137800000000000000000000000000000000000000000000001C0D2C1E943A88
      65DB53BD8EFF52BD8DFF48B786FF41B482FF3BB27DFF37AF7AFF31AD76FF2CAA
      73FF26A76FFF24A56DFF23A36BFF23A26BFF2DA671FF34AA77FF1B5D41C00106
      043D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001931
      24AA82C7A4FF71BF96FF72BF97FF72BF97FF72BF97FF71BF97FF77C29CFF64B2
      8AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000007070746757584DBC5C5CFFFDEDE
      E0FFE0E0E0FFE6E6E6FFD8D8D8FFB4B4B4FFBFBFBFFFD2D4D6FF557BC2FF1846
      B1FF0F38A9FF0D2FA4FF02071A76000000010000000000000000010A07622B9B
      6BFB24A46CFF23A46CFF23A46CFF23A36BFF45AF82FFD8ECE4FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFA1CAB8FF168A5AFF168B5BFF5CAB
      8BFFDFE3DFFFCCCFCCFF359C70FF1D9864FF1C9663FF1D9764FF1E9B66FF39A8
      78FF07271AA000000005000000000000000000020128123A299604120C620000
      000E000000000000000000000000000000000000000000000000000000070001
      01310E302289338963DF52BC8EFF5EC296FF51BD8DFF48B887FF39B17CFF34AE
      78FF30AC75FF32AD77FF3EB27EFF42B382FF2E8F65E90B2D1E86000000210000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001932
      25AA8ACAABFF79C29DFF7AC39EFF7AC39EFF7AC39EFF79C39EFF80C5A2FF69B5
      8DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101022A8E8E94DBC0C0
      CAFFE2E2E3FFE3E3E3FFC8C8C8FFDBDBDBFFBCC3D0FF577DC3FF1D54B9FF194D
      B6FF0F35A5FD081B5AC00000000600000000000000000000000000000018103F
      2CB437AD79FF29A871FF24A66DFF24A66DFF47B184FFD8EDE4FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFC6DCD1FF5AAF8BFF49A880FFA2CE
      BAFFDFE3DFFFCCCFCCFF379F72FF1E9A66FF1E9965FF1F9965FF3EAC7DFF2884
      5EED0001002A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000004023104150E71133928A6206043BB28694CC2327C
      5BD1266649BF1F5E42BB0B291C9B020E095C0000000E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A33
      25AA91CEB1FF80C6A2FF81C6A3FF81C6A3FF81C6A3FF81C6A3FF87C9A8FF6DB9
      91FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060607467C7C
      8ADBD0D0D2FFDBDBDCFFEEEEEEFFD0D6E1FF4B75C2FF2662C0FF2362C0FF194C
      B5FF09206ED20000033300000000000000000000000000000000000000000003
      023128835CE94FB88AFF38AF7BFF28A870FF49B386FFD9EDE4FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE2E4E2FFE9ECE9FFDCEAE2FFD6E8DEFFE8EE
      E9FFDFE3DFFFCCCFCCFF38A073FF1F9C67FF2EA572FF59BB91FF35966DF4061E
      1477000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000011010101180405
      0427010101150000001100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000207
      04544A7A60CD54856DD454856DD454856DD453856CD453856CD44E8066D11E3F
      2D9B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      022A747886D4A9B3CDFF7896CAFF346AC1FF2D75CBFF2D78CCFF1A4FB6FF0B24
      79DB0000012A0000000000000000000000000000000000000000000000000000
      0000000201260A2E1F97327D5CD74FA07CE961A286E677837DC9787878BF7878
      78BF787878BF777777BF767676BF777777BF787878BF787878BF787878BF7878
      78BF767776BF747574BF67A88CE956A282E9418D6CE016553BBD000301380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030403230506052A0506052A0506052A0506052A0506052A040504270000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000304063F224185DB3972C7FF468CD4FF357DCEFF1D54B8FF092069CD0001
      053F000000000000000000000000000000000000000000000000000000000000
      000000000000000000060506062D0A0D0C3F0A0C0B3C0303031F010101150101
      0115010101150101011501010115010101150101011501010115010101150101
      011501010115010101150B0D0C3F0B0D0C3F0809093600010113000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000012A0E266CCB2046A1F20C287EDF040E309F0000000D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020303210D0E1148070809350000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF000000FFF8FFFFF
      FFF81FFFFFFFFFFEC0000003FC07FFFFFFC003FFFFFFFFFE80000001E007FFFF
      FF0000FFFFFFFFFC000000018007FFFFFE00007FFFFFFFFC0000000000001FFF
      FC00003FFFFFFFF80000000000000FFFF800001FFFFFFFF000000000000007FF
      F000000FFFFFFFE001FFFF80000007FFE0000007FFEFFFC003FFFFC0000007FF
      E0000007FFCFFF8003FFFFC0000007FFC0000003FF8FFE0003FFFFC0000007FF
      C0000003FF0FFC0103FFFFC0000007FFC0000003FE0FE001000000000000073F
      C0000001FC000001000000000000071F80000001F8000003000000000000070F
      80000001F0000003000000000000FF0780000001E0000007000000000001FF03
      80000001C0000007000000000001C001C00000018000000F0000000000018000
      C00000030000001F000000000001C000C00000030000001F000000000001FF01
      C00000038000007F000000000000FF03E0000007C00000FF0000000000003F07
      E0000007E00001FF000000000000070FF000000FF00007FF000000000000071F
      F800001FF8001FFF00000000000007FFFC00003FFC03FFFF00000000000007FF
      FE00007FFE0FFFFF00000000000007FFFF0000FFFF0FFFFF00000001000007FF
      FFC003FFFF8FFFFF80000001000007FFFFF81FFFFFCFFFFFC000000300000FFF
      FFFFFFFFFFEFFFFFE000000780001FFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object imgDesabilitado: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 264
    Top = 8
    Bitmap = {
      494C010108001800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232FF323232FF323232FF323232FF323232FF323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000515151FF00000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000000000000000000000000000000000
      000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3B3BFF3A3A
      3AFF393939FF383838FF363636FF333333FF323232FF323232FF323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000515151FF000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF000000000000000000000000000000005C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000434343FF424242FF424242FF4141
      41FF404040FF3E3E3EFF3C3C3CFF393939FF373737FF343434FF323232FF3232
      32FF323232FF323232FF323232FF323232FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5CFF515151FF0101010A5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF00000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000494949FF494949FF494949FF484848FF4747
      47FF464646FF444444FF424242FF3F3F3FFF3D3D3DFF3A3A3AFF363636FF3232
      32FF323232FF323232FF323232FF323232FF323232FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5CFF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4FFF4F4F4FFF505050FF4F4F4FFF4F4F4FFF4E4E
      4EFF4C4C4CFF4A4A4AFF484848FF454545FF424242FF3F3F3FFF3C3C3CFF3838
      38FF343434FF323232FF323232FF323232FF323232FF323232FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005C5C5CFF5C5C5CFF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000545454FF555555FF565656FF565656FF565656FF565656FF5454
      54FF535353FF515151FF4E4E4EFF4B4B4BFF484848FF454545FF414141FF3D3D
      3DFF393939FF343434FF323232FF323232FF323232FF323232FF323232FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005C5C5CFF5C5C5CFF5C5C5CFF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000595959FF5B5B5BFF5D5D5DFF5E5E5EFF5E5E5EFF5E5E5EFF5D5D5DFF5C5C
      5CFF5A5A5AFF575757FF545454FF515151FF4E4E4EFF4A4A4AFF464646FF4242
      42FF3E3E3EFF393939FF343434FF323232FF323232FF323232FF323232FF3232
      32FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005E5E
      5EFF606060FF626262FF646464FF666666FF666666FF666666FF656565FF6464
      64FF616161FF5E5E5EFF5B5B5BFF585858FF535353FF505050FF4B4B4BFF4747
      47FF424242FF3E3E3EFF393939FF343434FF323232FF323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006464
      64FF686868FF6A6A6AFF6C6C6CFF6D6D6DFF6E6E6EFF6E6E6EFF6C6C6CFF6B6B
      6BFF696969FF666666FF626262FF5E5E5EFF5A5A5AFF555555FF515151FF4C4C
      4CFF474747FF424242FF3D3D3DFF383838FF323232FF323232FF323232FF3232
      32FF323232FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF595959FF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000676767FF6B6B
      6BFF6E6E6EFF727272FF747474FF757575FF767676FF757575FF747474FF7272
      72FF707070FF6D6D6DFF696969FF656565FF606060FF5B5B5BFF565656FF5151
      51FF4B4B4BFF464646FF414141FF3B3B3BFF363636FF323232FF323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000575757F25C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF515151FF515151FF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E6E6EFF7272
      72FF767676FF797979FF7B7B7BFF7C7C7CFF7D7D7DFF7D7D7DFF7C7C7CFF7A7A
      7AFF777777FF747474FF707070FF6B6B6BFF666666FF616161FF5B5B5BFF5555
      55FF505050FF4A4A4AFF454545FF3F3F3FFF393939FF333333FF323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF515151FF000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000747474FF7878
      78FF7C7C7CFF818181FF838383FF858585FF868686FF868686FF858585FF8383
      83FF7E7E7EFF7A7A7AFF767676FF717171FF6C6C6CFF666666FF606060FF5A5A
      5AFF535353FF4E4E4EFF484848FF424242FF3C3C3CFF373737FF323232FF3232
      32FF323232FF323232FF00000000000000000000000000000000000000000000
      00000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF000000000000000000000000000000000000000000000000000000005C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF515151FF000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF000000000000000000000000747474FF747474FF000000000000
      00000000000000000000000000000000000000000000000000007A7A7AFF7E7E
      7EFF848484FF888888FF8B8B8BFF8D8D8DFF8E8E8EFF8D8D8DFF8C8C8CFF8A8A
      8AFF868686FF828282FF7C7C7CFF777777FF717171FF6B6B6BFF656565FF5E5E
      5EFF585858FF515151FF4B4B4BFF454545FF3F3F3FFF393939FF333333FF3232
      32FF323232FF323232FF323232FF000000000000000000000000000000000000
      000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF515151FF515151FF000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF000000000000000000000000747474FF747474FF747474FF0000
      00000000000000000000000000000000000000000000797979FF808080FF8585
      85FF8B8B8BFF8F8F8FFF929292FF959595FF959595FF959595FF939393FF9191
      91FF8D8D8DFF898989FF838383FF7C7C7CFF767676FF707070FF696969FF6262
      62FF5C5C5CFF545454FF4E4E4EFF484848FF424242FF3C3C3CFF353535FF3232
      32FF323232FF323232FF323232FF000000000000000000000000000000000000
      0000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF515151FF00000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF000000000000000000000000747474FF747474FF747474FF7474
      74FF00000000000000000000000000000000000000007D7D7DFF858585FF8B8B
      8BFF909090FF959595FF9A9A9AFFA1A1A1FFA3A3A3FFA3A3A3FF9F9F9FFF9898
      98FF939393FF8F8F8FFF898989FF838383FF7B7B7BFF747474FF6D6D6DFF6666
      66FF5F5F5FFF585858FF515151FF4A4A4AFF444444FF3E3E3EFF373737FF3232
      32FF323232FF323232FF323232FF000000000000000000000000000000000000
      00005C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF515151FF515151FF00000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFF0000000000000000000000000000
      000000000000000000000000000000000000747474FF747474FF747474FF7474
      74FF747474FF00000000000000000000000000000000828282FF898989FF8F8F
      8FFF959595FF9F9F9FFFAAAAAAFFB2B2B2FFB6B6B6FFB5B5B5FFB0B0B0FFA7A7
      A7FF9B9B9BFF949494FF8D8D8DFF878787FF808080FF787878FF707070FF6969
      69FF626262FF5A5A5AFF535353FF4C4C4CFF464646FF404040FF393939FF3333
      33FF323232FF323232FF323232FF000000000000000000000000000000005C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF515151FF0000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFF000000000000000000000000000000000000
      000000000000000000000000000000000000747474FF747474FF747474FF7474
      74FF747474FF747474FF000000000000000000000000858585FF8D8D8DFF9393
      93FF9D9D9DFFABABABFFB9B9B9FFC3C3C3FFC9C9C9FFC8C8C8FFC1C1C1FFB5B5
      B5FFA7A7A7FF999999FF919191FF8B8B8BFF838383FF7B7B7BFF737373FF6C6C
      6CFF646464FF5C5C5CFF545454FF4E4E4EFF474747FF414141FF3A3A3AFF3434
      34FF323232FF323232FF323232FF0000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5151
      51FF515151FF0000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFF000000000000000000000000747474FF7474
      74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
      74FF747474FF747474FF747474FF0000000000000000000000008F8F8FFF9797
      97FFA5A5A5FFB6B6B6FFC5C5C5FFD3D3D3FFDBDBDBFFD9D9D9FFD0D0D0FFC2C2
      C2FFB2B2B2FFA1A1A1FF959595FF8D8D8DFF858585FF7D7D7DFF757575FF6E6E
      6EFF666666FF5E5E5EFF565656FF4F4F4FFF494949FF424242FF3B3B3BFF3535
      35FF323232FF323232FF323232FF00000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF5151
      51FF000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFF0000000000000000747474FF747474FF7474
      74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
      74FF747474FF747474FF747474FF747474FF0000000000000000919191FF9898
      98FFAAAAAAFFBCBCBCFFCFCFCFFFDFDFDFFFECECECFFEBEBEBFFDCDCDCFFCBCB
      CBFFB9B9B9FFA7A7A7FF979797FF8F8F8FFF878787FF7E7E7EFF767676FF6E6E
      6EFF666666FF5F5F5FFF575757FF505050FF494949FF434343FF3C3C3CFF3535
      35FF323232FF323232FF00000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF515151FF0000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFF000000000000000000000000747474FF7474
      74FF747474FF747474FF747474FF747474FF747474FF747474FF747474FF7474
      74FF747474FF747474FF747474FF747474FF0000000000000000919191FF9999
      99FFABABABFFBEBEBEFFD1D1D1FFE3E3E3FFF7F7F7FFF4F4F4FFE1E1E1FFCECE
      CEFFBBBBBBFFA9A9A9FF979797FF8F8F8FFF878787FF808080FF777777FF6F6F
      6FFF676767FF5F5F5FFF575757FF505050FF4A4A4AFF434343FF3C3C3CFF3636
      36FF323232FF323232FF00000000000000003B3B3BA45C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF515151FF0404040E0000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFF000000000000000000000000000000000000
      000000000000000000000000000000000000747474FF747474FF747474FF7474
      74FF747474FF747474FF747474FF000000000000000000000000909090FF9797
      97FFA9A9A9FFBBBBBBFFCCCCCCFFDDDDDDFFE9E9E9FFE8E8E8FFDBDBDBFFCBCB
      CBFFB9B9B9FFA7A7A7FF979797FF8F8F8FFF878787FF7E7E7EFF767676FF6F6F
      6FFF676767FF5F5F5FFF575757FF505050FF494949FF434343FF3C3C3CFF3636
      36FF323232FF323232FF0000000000000000000000003D3D3DA85C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF515151FF00000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFF0000000000000000000000000000
      000000000000000000000000000000000000747474FF747474FF747474FF7474
      74FF747474FF747474FF00000000000000000000000000000000000000009595
      95FFA2A2A2FFB3B3B3FFC2C2C2FFCFCFCFFFD7D7D7FFD7D7D7FFCECECEFFC1C1
      C1FFB1B1B1FFA1A1A1FF959595FF8D8D8DFF868686FF7D7D7DFF767676FF6E6E
      6EFF666666FF5E5E5EFF565656FF505050FF494949FF424242FF3C3C3CFF3535
      35FF323232FF00000000000000000000000000000000000000003B3B3BA45C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF595959FF515151FF515151FF0000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFF03030305000000000000
      000000000000000000000000000000000000747474FF747474FF747474FF7474
      74FF747474FF0000000000000000000000000000000000000000000000009292
      92FF999999FFA7A7A7FFB5B5B5FFBFBFBFFFC5C5C5FFC4C4C4FFBFBFBFFFB4B4
      B4FFA7A7A7FF999999FF919191FF8B8B8BFF838383FF7B7B7BFF747474FF6C6C
      6CFF646464FF5D5D5DFF555555FF4F4F4FFF484848FF424242FF3B3B3BFF3434
      34FF323232FF0000000000000000000000000000000000000000000000003D3D
      3DA85C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF515151FF515151FF515151FF000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF000000000000000000000000747474FF747474FF747474FF7474
      74FF000000000000000000000000000000000000000000000000000000000000
      0000939393FF9A9A9AFFA5A5A5FFADADADFFB2B2B2FFB2B2B2FFADADADFFA5A5
      A5FF9A9A9AFF949494FF8D8D8DFF878787FF808080FF787878FF717171FF6A6A
      6AFF626262FF5B5B5BFF535353FF4D4D4DFF474747FF404040FF3A3A3AFF3333
      33FF000000000000000000000000000000000000000000000000000000000000
      00003B3B3BA45C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF515151FF515151FF5151
      51FF515151FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF000000000000000000000000747474FF747474FF747474FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000939393FF979797FF9C9C9CFFA0A0A0FFA0A0A0FF9C9C9CFF9797
      97FF939393FF8F8F8FFF898989FF838383FF7C7C7CFF757575FF6E6E6EFF6767
      67FF606060FF585858FF525252FF4B4B4BFF454545FF3F3F3FFF383838FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003D3D3DA85C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5151
      51FF515151FF515151FF515151FF515151FF515151FF515151FF515151FC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000909090FF939393FF949494FF949494FF939393FF9090
      90FF8D8D8DFF898989FF838383FF7D7D7DFF777777FF707070FF6A6A6AFF6464
      64FF5C5C5CFF565656FF4F4F4FFF494949FF434343FF3D3D3DFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3DA85C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5151
      51FF515151FF363636A100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008B8B8BFF8C8C8CFF8C8C8CFF8B8B8BFF8989
      89FF868686FF828282FF7C7C7CFF787878FF727272FF6C6C6CFF666666FF6060
      60FF595959FF525252FF4C4C4CFF474747FF414141FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003B3B3BA45C5C5CFF5C5C5CFF5C5C5CFF5151
      51FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000858585FF858585FF838383FF8282
      82FF7E7E7EFF7A7A7AFF767676FF727272FF6C6C6CFF676767FF616161FF5B5B
      5BFF545454FF4F4F4FFF494949FF444444FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BA45C5C5CFF5C5C5CFF5151
      51FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515705C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7BFF7979
      79FF777777FF747474FF707070FF6C6C6CFF676767FF626262FF5C5C5CFF5656
      56FF515151FF4B4B4BFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B3B3BA45C5C5CFF5151
      51FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFFADAD
      ADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006D6D6DFF696969FF656565FF616161FF5C5C5CFF575757FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3B3BA45151
      51FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF00000000000000005C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003737
      37A4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      15705C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
      5CFF0101010A000000000000000000000000000000005C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
      ADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000030101011F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010303
      03210E0E0E430000000B00000001000000020000000300000004000000060000
      000600000008000000090000000A0000000B0000000B0000000B0000000A0000
      0009000000080000000700000005000000040000000300000001000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303231515157B272727E9777777F0A9A9A9D4A9A9A9D4A9A9A9D4AAAA
      AAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4AAAAAAD4A9A9A9D4A9A9
      A9D4A8A8A8D4A8A8A8D4A4A4A4DB545454F72A2A2AF4151515AD070707330000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A020202260303032A0303032A0303032A0303032A010101150000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000505052B2B2B
      2BBC5A5A5AED1010106F00000007000000090000000C0000000D0000000F0000
      0010000000120000001300000015000000150000001500000015000000140000
      001300000012000000110000000F0000000D0000000B00000009000000060000
      0004000000020000000000000000000000000000000000000000000000000101
      01141B1B1BC52D2D2DFB2E2E2EFF919191FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
      F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5
      F5FFF5F5F5FFF5F5F5FFE3E3E3FF5F5F5FFF2E2E2EFF2E2E2EFF212121D90808
      084F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001212
      125F4A4A4AFF4A4A4AFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF484848FB2323
      23B4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000454545B34D4D
      4DFF505050FF666666FF1515157D020202340000001700000013000000150000
      0017000000190000001B0000001D0000001D0000001E0000001E0000001C0000
      001B00000019000000170000001500000013000000100000000E0000000B0000
      0008000000060000000300000000000000000000000000000000010101151818
      18B72E2E2EFF2E2E2EFF2E2E2EFF929292FFF6F6F6FFF0F0F0FFE4E4E4FFE5E5
      E5FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5
      E5FFE4E4E4FFEAEAEAFFE4E4E4FF5F5F5FFF2E2E2EFF2E2E2EFF2E2E2EFF2929
      29F0010101220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003838
      38A64C4C4CFF474747FF484848FF484848FF484848FF484848FF4A4A4AFF4A4A
      4AFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000222222776565
      65F4424242FF4F4F4FFF787878F6686868D53C3C3CAF1A1A1A81050505410000
      001B000000160000001700000019000000190000001A0000001A000000180000
      0017000000150000001400000012000000100000000E0000000C000000090000
      0006000000040000000100000000000000000000000000000000090909512A2A
      2AF42E2E2EFF2E2E2EFF2E2E2EFF929292FFF7F7F7FFF4F4F4FFEFEFEFFFEFEF
      EFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEF
      EFFFEEEEEEFFF0F0F0FFE5E5E5FF5F5F5FFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
      2EFF141414890000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A38373737AA1111116201010115000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BAA4F4F4FFF494949FF4A4A4AFF4A4A4AFF4A4A4AFF4A4A4AFF4C4C4CFF4B4B
      4BFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000031616
      1662585858F4727272FFB0B0B0FFA8A8A8FF9C9C9CFF999999FF999999FF8A8A
      8AF14B4B4BB5212121800202023B0000000E0000000D0000000D0000000C0000
      000C0000000A0000000900000007000000060000000400000003000000020000
      00000000000000000000000000000000000000000000000000001111119B2E2E
      2EFF2E2E2EFF2E2E2EFF2E2E2EFF939393FFF8F8F8FFF3F3F3FFEDEDEDFFEDED
      EDFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFEDED
      EDFFECECECFFF2F2F2FFE6E6E6FF5F5F5FFF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
      2EFF1D1D1DC90202021F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000505052D2E2E2ED4494949FF383838F01616167A0202
      021E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BAA525252FF4C4C4CFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4F4F4FFF4D4D
      4DFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003595959ADC7C7C7FFB6B6B6FFB2B2B2FFACACACFFA3A3A3FF9A9A9AFF9999
      99FF989898FF979797FF686868D0050505380000000200000002000000020000
      0002000000010000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000141414A92E2E
      2EFF2F2F2FFF2F2F2FFF303030FF949494FFF9F9F9FFF3F3F3FFEDEDEDFFEEEE
      EEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEEEE
      EEFFEDEDEDFFF2F2F2FFE7E7E7FF606060FF2E2E2EFF2E2E2EFF2E2E2EFF2E2E
      2EFF202020D40404042A000000000000000000000000010101150B0B0B4E0D0D
      0D550D0D0D550D0D0D550D0D0D550D0D0D550D0D0D550D0D0D550D0D0D550D0D
      0D550D0D0D550D0D0D550D0D0D550D0D0D550404043100000006000000000000
      00000000000000000000000000030C0C0C5C434343FF3A3A3AFF3D3D3DF92323
      23C0010101150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BAA555555FF505050FF505050FF515151FF515151FF515151FF535353FF4F4F
      4FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E5DD9D9D9F9C7C7C7FFBBBBBBFFB1B1B1FFAFAFAFFFAAAAAAFFA1A1
      A1FF9B9B9BFF989898FFB3B3B3FF848484E90707073600000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151515A93131
      31FF323232FF323232FF323232FF969696FFFAFAFAFFF8F8F8FFF7F7F7FFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF7F7F7FFF7F7
      F7FFF6F6F6FFF7F7F7FFE8E8E8FF626262FF303030FF2F2F2FFF2F2F2FFF2E2E
      2EFF212121D40404042A00000000000000000C0C0C4A3D3D3DE94F4F4FFF5151
      51FF515151FF515151FF515151FF515151FF515151FF505050FF505050FF4F4F
      4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4B4B4BFF242424BF000000000000
      0000000000000000000000000000000000001B1B1BA9404040FF323232FF3E3E
      3EFF252525C60303032700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3CAA585858FF535353FF545454FF545454FF545454FF545454FF565656FF5151
      51FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0A0A36B3B3B3E0DADADAFFC6C6C6FFBBBBBBFFB0B0B0FFAEAEAEFFADAD
      ADFFB0B0B0FFC4C4C4FFB1B1B1FFA9A9A9FF5C5C5CCF06060636000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151515A93434
      34FF343434FF353535FF353535FF979797FFFAFAFAFFF1F1F1FFEAEAEAFFEAEA
      EAFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEA
      EAFFEAEAEAFFF1F1F1FFE8E8E8FF646464FF333333FF323232FF313131FF3131
      31FF222222D40404042A0000000000000000181818984F4F4FFF474747FF4747
      47FF474747FF474747FF464646FF464646FF454545FF454545FF444444FF4444
      44FF434343FF434343FF424242FF414141FF484848FF3C3C3CE9000000000000
      0000000000000000000000000000000000000A0A0A463C3C3CE9363636FF3434
      34FF404040FB1414149400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DAA5C5C5CFF565656FF575757FF575757FF575757FF575757FF595959FF5454
      54FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101137F7F7FBDEBEBEBFFD5D5D5FFC7C7C7FFC0C0C0FFB1B1B1FFB8B8
      B8FFB4B4B4FFB7B7B7FFC9C9C9FFABABABFF9C9C9CFF6E6E6EE9060606360000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717A93737
      37FF383838FF383838FF383838FF777777FFFBFBFBFFFBFBFBFFFCFCFCFFFCFC
      FCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFBFB
      FBFFFBFBFBFFFAFAFAFFDADADAFF575757FF363636FF353535FF343434FF3434
      34FF242424D40404042A00000000000000001F1F1FAA4F4F4FFF4A4A4AFF4A4A
      4AFF4A4A4AFF494949FF494949FF494949FF494949FF484848FF484848FF4747
      47FF464646FF464646FF454545FF494949FF444444ED11111166000000000000
      00000000000000000000000000000000000000000006252525A6434343FF3636
      36FF393939FF464646FF04040431000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DAA5F5F5FFF595959FF5A5A5AFF5A5A5AFF5A5A5AFF5A5A5AFF5C5C5CFF5757
      57FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000151515196F2F2F2FFE2E2E2FFCDCDCDFFC7C7C7FFC3C3C3FFB5B5
      B5FF9E9E9EFF9C9C9CFFB3B3B3FFC1C1C1FF9A9A9AFF909090FF4B4B4BCF0505
      0536000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000181818A93A3A
      3AFF3A3A3AFF3B3B3BFF3B3B3BFF444444FFC6C6C6FFF9F9F9FFFCFCFCFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
      FCFFFBFBFBFFF5F5F5FF8E8E8EFF3F3F3FFF393939FF383838FF373737FF3737
      37FF262626D40404042A0000000000000000212121AA525252FF4D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4C4C4CFF4C4C4CFF4B4B4BFF4B4B4BFF4A4A4AFF4A4A
      4AFF4A4A4AFF494949FF4B4B4BFF525252FF1414146E0000000A000000000000
      00000000000000000000000000000000000000000000141414664B4B4BFF3A3A
      3AFF383838FF444444FF1E1E1E980000000300000000000000000000000A1818
      1874242424AA242424AA252525AA252525AA252525AA252525AA252525AA4646
      46E2626262FF5C5C5CFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5F5F5FFF5E5E
      5EFF252525AA252525AA252525AA252525AA252525AA252525AA242424AA2424
      24AA0808083F0000000000000000000000000000000000000000000000000000
      0000000000001414144DF0F0F0FFEEEEEEFFD8D8D8FFCCCCCCFFB5B5B5FF9E9E
      9EFF9B9B9BFF979797FF959595FFA6A6A6FFB6B6B6FF929292FF818181FF5B5B
      5BE9050505360000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000191919A93D3D
      3DFF3E3E3EFF3E3E3EFF3E3E3EFF3F3F3FFF464646FF6F6F6FFFA4A4A4FFA4A4
      A4FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA4A4A4FFA4A4A4FFA3A3
      A3FF9B9B9BFF656565FF3D3D3DFF3C3C3CFF3C3C3CFF3B3B3BFF3A3A3AFF3A3A
      3AFF262626D40404042A0000000000000000232323AA565656FF505050FF5050
      50FF505050FF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4D4D
      4DFF4C4C4CFF505050FF4A4A4AED1515156E0000000000000000000000000000
      00000000000000000000000000000000000000000000040404314B4B4BFF3D3D
      3DFF3A3A3AFF3B3B3BFF313131D1040404270000000000000000070707314343
      43DB5E5E5EFF5E5E5EFF5F5F5FFF606060FF606060FF606060FF616161FF6262
      62FF616161FF5F5F5FFF5F5F5FFF5F5F5FFF606060FF606060FF616161FF6262
      62FF616161FF616161FF616161FF606060FF5F5F5FFF5F5F5FFF5E5E5EFF5F5F
      5FFF383838A20000000000000000000000000000000000000000000000000000
      0000000000000000000EE6E6E6FFEFEFEFFFDDDDDDFFD6D6D6FFA4A4A4FF9B9B
      9BFF979797FF949494FF919191FF8E8E8EFFA3A3A3FFAEAEAEFF7E7E7EFF7474
      74FF3F3F3FCF0505053600000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001C1C1CA94848
      48FF484848FF484848FF464646FF454545FF444444FF424242FF434343FF4444
      44FF444444FF444444FF444444FF444444FF444444FF434343FF434343FF4343
      43FF414141FF404040FF404040FF3F3F3FFF3E3E3EFF3E3E3EFF3D3D3DFF3D3D
      3DFF292929D40404042A0000000000000000232323AA5A5A5AFF535353FF5353
      53FF535353FF525252FF525252FF525252FF515151FF515151FF505050FF5050
      50FF545454FF5A5A5AFF1515156E0000000A0000000000000000000000000000
      00000000000000000000000000000000000000000000040404314D4D4DFF4141
      41FF3D3D3DFF3C3C3CFF424242ED0D0D0D4300000000000000000B0B0B3F5151
      51E95C5C5CFF5D5D5DFF5E5E5EFF5F5F5FFF606060FF606060FF616161FF6161
      61FF626262FF626262FF626262FF626262FF626262FF626262FF626262FF6262
      62FF626262FF626262FF626262FF616161FF606060FF606060FF5F5F5FFF6262
      62FF3F3F3FAA0000000000000000000000000000000000000000000000000000
      000000000000000000006F6F6FBBC3C3C3FFA6A6A6FFB4B4B4FFCDCDCDFFA3A3
      A3FF949494FF919191FF8D8D8DFF8A8A8AFF868686FF939393FFA1A1A1FF7676
      76FF656565FF4A4A4AE905050536000000010000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1D1DA94F4F
      4FFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4D4D4DFF4D4D4DFF4B4B4BFF4949
      49FF474747FF464646FF454545FF454545FF454545FF444444FF444444FF4444
      44FF434343FF434343FF424242FF424242FF414141FF414141FF404040FF3F3F
      3FFF2B2B2BD40404042A0000000000000000252525AA5D5D5DFF565656FF5656
      56FF555555FF555555FF555555FF555555FF545454FF545454FF535353FF5353
      53FF606060FF373737CD01010115000000000000000000000000000000000000
      0000000000000000000000000000000000000000000019191970515151FF4242
      42FF404040FF3F3F3FFF4C4C4CFF1515155500000000000000000B0B0B3F5252
      52E95F5F5FFF606060FF616161FF616161FF636363FF636363FF636363FF6464
      64FF656565FF656565FF656565FF656565FF656565FF656565FF656565FF6565
      65FF656565FF656565FF646464FF646464FF636363FF636363FF626262FF6565
      65FF3F3F3FAA0000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E42808080DB989898FF949494FFB5B5B5FFC8C8
      C8FF949494FF8D8D8DFF8A8A8AFF878787FF828282FF787878FF8B8B8BFF9797
      97FF646464FF5F5F5FFF363636CF050505360000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1EA95050
      50FF505050FF505050FF505050FF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4D4D
      4DFF4D4D4DFF4C4C4CFF4A4A4AFF484848FF474747FF474747FF474747FF4646
      46FF464646FF464646FF454545FF454545FF444444FF434343FF434343FF4242
      42FF2B2B2BD40404042A0000000000000000272727AA606060FF585858FF5858
      58FF585858FF585858FF575757FF575757FF575757FF575757FF565656FF5656
      56FF585858FF626262FF292929A20202021C0000000000000000000000000000
      00000000000000000000000000000000000001010118363636BB4D4D4DFF4444
      44FF434343FF414141FF4A4A4AFF1313136A00000000000000000C0C0C3F5656
      56E9626262FF646464FF666666FF666666FF686868FF696969FF6B6B6BFF6C6C
      6CFF6C6C6CFF6C6C6CFF6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFF6C6C6CFF6C6C
      6CFF6B6B6BFF6B6B6BFF696969FF686868FF676767FF676767FF656565FF6767
      67FF404040AA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000505052A747474DB8F8F8FFF888888FFA2A2
      A2FFC0C0C0FF949494FF868686FF828282FF777777FF6E6E6EFF666666FF7878
      78FF8C8C8CFF666666FF595959FF3F3F3FE90707073800000003000000000000
      00000000000000000000000000000000000000000000000000001F1F1FA95353
      53FF535353FF525252FF525252FF515151FF515151FF515151FF505050FF5050
      50FF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4C4C4CFF4B4B4BFF4A4A4AFF4A4A
      4AFF494949FF484848FF484848FF484848FF474747FF464646FF454545FF4545
      45FF2D2D2DD40404042A0000000000000000282828AA646464FF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF5A5A5AFF5A5A5AFF595959FF5959
      59FF585858FF575757FF646464FF4A4A4AE20C0C0C5100000011000000000000
      00000000000000000000000000000000000A1E1E1E9B555555FB484848FF4848
      48FF454545FF444444FF4F4F4FFF1515155500000000000000000C0C0C3F5A5A
      5AE9696969FF6A6A6AFF6C6C6CFF6C6C6CFF6D6D6DFF6D6D6DFF6E6E6EFF6E6E
      6EFF6E6E6EFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6E6E6EFF6E6E
      6EFF6E6E6EFF6E6E6EFF6D6D6DFF6D6D6DFF6C6C6CFF6B6B6BFF6A6A6AFF6B6B
      6BFF414141AA0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F466A6A6ADB818181FF7C7C
      7CFFA2A2A2FFB8B8B8FF838383FF7A7A7AFF6F6F6FFF686868FF626262FF6060
      60FF777777FF838383FF595959FF626262FF8D8D8DD71212124D000000000000
      0000000000000000000000000000000000000000000000000000202020A95555
      55FF545454FF545454FF545454FF535353FF535353FF535353FF525252FF5252
      52FF515151FF505050FF505050FF505050FF4F4F4FFF4E4E4EFF4D4D4DFF4C4C
      4CFF4C4C4CFF4B4B4BFF4A4A4AFF4A4A4AFF494949FF494949FF484848FF4747
      47FF2F2F2FD40404042A0000000000000000292929AA676767FF5E5E5EFF5E5E
      5EFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5C5C5CFF5B5B5BFF5B5B
      5BFF5A5A5AFF5A5A5AFF5A5A5AFF606060FF595959ED2E2E2EB40F0F0F540000
      000E0000000000000000020202201E1E1E8D5A5A5AFB505050FF4B4B4BFF4A4A
      4AFF484848FF474747FF4F4F4FF71111114D00000000000000000C0C0C3F5E5E
      5EE96D6D6DFF6E6E6EFF6E6E6EFF6F6F6FFF6F6F6FFF707070FF707070FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF707070FF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6E6E6EFF6D6D6DFF6F6F
      6FFF414141AA0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000505052A5F5F5FDB7474
      74FF6D6D6DFF8C8C8CFFADADADFF7B7B7BFF676767FF636363FF5F5F5FFF5C5C
      5CFF595959FF696969FF7D7D7DFFACACACFFB9B9B9FFA4A4A4F71414144F0000
      0005000000000000000000000000000000000000000000000000212121A95757
      57FF575757FF575757FF565656FF565656FF555555FF555555FF525252FF5959
      59FF5C5C5CFF5B5B5BFF5A5A5AFF5A5A5AFF5A5A5AFF5B5B5BFF5A5A5AFF5757
      57FF4C4C4CFF4E4E4EFF4E4E4EFF4D4D4DFF4C4C4CFF4C4C4CFF4B4B4BFF4A4A
      4AFF303030D40404042A00000000000000002B2B2BAA6E6E6EFF666666FF6666
      66FF656565FF646464FF636363FF626262FF616161FF606060FF5F5F5FFF5F5F
      5FFF5D5D5DFF5D5D5DFF5B5B5BFF5B5B5BFF5B5B5BFF646464FF696969FF6363
      63FF404040D4404040D4606060FF606060FF525252FF505050FF4E4E4EFF4D4D
      4DFF4B4B4BFF4A4A4AFF414141DB0707073100000000000000000A0A0A3B5E5E
      5EE5757575FF757575FF767676FF767676FF777777FF787878FF787878FF7979
      79FF757575FF737373FF747474FF747474FF747474FF747474FF747474FF7777
      77FF777777FF777777FF757575FF757575FF747474FF737373FF727272FF7474
      74FF424242AA0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D465555
      55DB5F5F5FFF5E5E5EFF8C8C8CFFA3A3A3FF676767FF606060FF5D5D5DFF5959
      59FF565656FF535353FF929292FFE0E0E0FFCECECEFFC2C2C2FF9B9B9BE01313
      134F000000000000000000000000000000000000000000000000222222A95959
      59FF595959FF585858FF585858FF575757FF575757FF505050FF9D9D9DFFC4C4
      C4FFC2C2C2FFBCBCBCFFB8B8B8FFBBBBBBFFC1C1C1FFC5C5C5FFC5C5C5FFC0C0
      C0FF8D8D8DFF555555FF505050FF505050FF4F4F4FFF4E4E4EFF4D4D4DFF4D4D
      4DFF333333D40404042A00000000000000002C2C2CAA757575FF6F6F6FFF6E6E
      6EFF6D6D6DFF6C6C6CFF6B6B6BFF6A6A6AFF686868FF666666FF646464FF6363
      63FF616161FF606060FF5F5F5FFF5D5D5DFF5C5C5CFF5C5C5CFF5B5B5BFF5F5F
      5FFF606060FF5F5F5FFF5A5A5AFF555555FF535353FF525252FF505050FF4F4F
      4FFF4D4D4DFF535353FF2B2B2BB80000000E0000000000000000000000112121
      21893D3D3DBF3E3E3EBF3F3F3FBF3F3F3FBF3F3F3FBF404040BF404040BF6666
      66E9878787FF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF808080FF8181
      81FF3F3F3FBF3F3F3FBF3E3E3EBF3D3D3DBF3D3D3DBF3C3C3CBF3B3B3BBF3A3A
      3ABF131313540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      052A4A4A4ADB595959FF575757FF777777FF979797FF686868FF595959FF5656
      56FF535353FF737373FFE3E3E3FFF4F4F4FFD9D9D9FFD2D2D2FFD2D2D2FFC3C3
      C3F70F0F0F470000000100000000000000000000000000000000222222A95B5B
      5BFF5B5B5BFF5B5B5BFF5A5A5AFF5A5A5AFF5A5A5AFFA8A8A8FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFE2E2E2FFBDBDBDFFB5B5B5FFDADA
      DAFFE1E1E1FFA1A1A1FF505050FF525252FF515151FF515151FF505050FF5050
      50FF353535D40404042A00000000000000002D2D2DAA7C7C7CFF777777FF7777
      77FF757575FF777777FF7B7B7BFF737373FF707070FF6E6E6EFF6B6B6BFF6969
      69FF676767FF666666FF646464FF636363FF616161FF5F5F5FFF5E5E5EFF5C5C
      5CFF5B5B5BFF5A5A5AFF585858FF585858FF565656FF555555FF535353FF5252
      52FF525252FF5D5D5DFF0C0C0C4D000000000000000000000000000000000000
      0007010101150101011501010115010101150101011501010115010101154545
      45B18C8C8CFF808080FF808080FF818181FF808080FF808080FF858585FF7B7B
      7BFF010101150101011501010115010101150101011501010115010101150101
      0115000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0D0D46464646DB525252FF515151FF797979FF8F8F8FFF5A5A5AFF5353
      53FF727272FFD4D4D4FFE7E7E7FFDCDCDCFFC0C0C0FFE2E2E2FFD3D3D3FFC1C1
      C1FF656565D20505053600000000000000000000000000000000242424A95D5D
      5DFF5D5D5DFF5C5C5CFF5C5C5CFF5B5B5BFF6D6D6DFFDADADAFFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFB9B9B9FF404040FF383838FF8888
      88FFE1E1E1FFC9C9C9FF555555FF545454FF545454FF535353FF535353FF5252
      52FF363636D40404042A00000000000000002E2E2EAA838383FF7D7D7DFF7D7D
      7DFF818181FF848484FF6F6F6FF7858585FF767676FF747474FF727272FF7070
      70FF6D6D6DFF6B6B6BFF676767FF666666FF636363FF636363FF616161FF6060
      60FF5D5D5DFF5C5C5CFF5A5A5AFF5A5A5AFF585858FF575757FF555555FF5454
      54FF5C5C5CFF373737C600000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      48AA939393FF878787FF888888FF888888FF888888FF888888FF8C8C8CFF8080
      80FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000505052A414141DB4D4D4DFF4B4B4BFF686868FF858585FF7A7A
      7AFFD9D9D9FFD5D5D5FFD7D7D7FFC1C1C1FFDBDBDBFFE3E3E3FFC2C2C2FFD0D0
      D0FF818181FF4E4E4EE905050531000000000000000000000000262626A95F5F
      5FFF5E5E5EFF5E5E5EFF5E5E5EFF5E5E5EFF757575FFE0E0E0FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFAFAFAFFF3B3B3BFF3B3B3BFF7575
      75FFE1E1E1FFCDCDCDFF636363FF555555FF575757FF565656FF555555FF5555
      55FF393939D40505052A00000000000000002F2F2FAA8A8A8AFF868686FF8989
      89FF6F6F6FED222222820303031F2E2E2E9E7E7E7EF7848484FF797979FF7777
      77FF757575FF727272FF6F6F6FFF6C6C6CFF686868FF666666FF646464FF6363
      63FF616161FF5F5F5FFF5D5D5DFF5C5C5CFF5B5B5BFF5A5A5AFF585858FF5E5E
      5EFF484848D80707073100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004949
      49AA989898FF8C8C8CFF8C8C8CFF8D8D8DFF8C8C8CFF8C8C8CFF919191FF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C463C3C3CDB454545FF444444FF9F9F9FFFD6D6
      D6FFE5E5E5FFC5C5C5FFDEDEDEFFDFDFDFFFD5D5D5FFB4B4B4FFE2E2E2FFC8C8
      C8FF656565FF5B5B5BFF2C2C2CA50000000A0000000000000000252525A96262
      62FF606060FF606060FF5F5F5FFF5F5F5FFF767676FFE0E0E0FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFB1B1B1FF414141FF424242FF7979
      79FFE1E1E1FFCDCDCDFF646464FF565656FF575757FF585858FF575757FF5757
      57FF3E3E3ED40505052A0000000000000000303030AA8F8F8FFF8F8F8FFF8A8A
      8AFF1818186E0000000A000000000000000E14141474626262E58E8E8EFF8080
      80FF7B7B7BFF787878FF757575FF727272FF6E6E6EFF6B6B6BFF676767FF6464
      64FF636363FF626262FF606060FF5E5E5EFF5D5D5DFF5C5C5CFF646464FF6464
      64F70B0B0B4E0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004949
      49AA9F9F9FFF939393FF949494FF949494FF949494FF939393FF989898FF8888
      88FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000505052A5B5B5BDBACACACFFDBDBDBFFF5F5
      F5FFE2E2E2FFBCBCBCFFDEDEDEFFDBDBDBFFBFBFBFFFCECECEFFCECECEFF7B7B
      7BFF5F5F5FFF595959FF2B2B2BB60000000F00000000000000001D1D1D9E6464
      64FF626262FF626262FF616161FF616161FF787878FFE1E1E1FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFB3B3B3FF494949FF494949FF8080
      80FFE1E1E1FFCDCDCDFF666666FF585858FF575757FF595959FF5A5A5AFF5C5C
      5CFF353535C70202021D00000000000000001818187A8D8D8DFD787878F01E1E
      1E7800000000000000000000000000000000000000000202021C2F2F2F946060
      60DB888888FF888888FF808080FF797979FF767676FF727272FF6E6E6EFF6A6A
      6AFF666666FF646464FF626262FF626262FF696969FF6F6F6FFF3C3C3CC00707
      073D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      4BAAA4A4A4FF989898FF989898FF999999FF989898FF989898FF9D9D9DFF8C8C
      8CFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F467C7C7CDBC9C9C9FFDFDF
      DFFFE0E0E0FFE6E6E6FFD8D8D8FFB4B4B4FFBFBFBFFFD4D4D4FF8C8C8CFF6363
      63FF5B5B5BFF575757FF1A1A1A76000000010000000000000000161616626363
      63FB636363FF636363FF636363FF626262FF797979FFE2E2E2FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFB5B5B5FF4F4F4FFF4F4F4FFF8484
      84FFE1E1E1FFCDCDCDFF686868FF595959FF585858FF595959FF5C5C5CFF7070
      70FF2D2D2DA00000000500000000000000000404042826262696141414620000
      000E000000000000000000000000000000000000000000000000000000070707
      07311F1F1F895D5D5DDF888888FF909090FF888888FF808080FF757575FF7070
      70FF6D6D6DFF6F6F6FFF777777FF7A7A7AFF5E5E5EE91C1C1C86030303210000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B4B
      4BAAAAAAAAFF9E9E9EFF9F9F9FFF9F9F9FFF9F9F9FFF9E9E9EFFA3A3A3FF8F8F
      8FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000505052A919191DBC5C5
      C5FFE3E3E3FFE3E3E3FFC8C8C8FFDBDBDBFFC6C6C6FF8E8E8EFF6A6A6AFF6767
      67FF595959FD313131C000000006000000000000000000000000010101183535
      35B4717171FF686868FF646464FF646464FF7B7B7BFFE2E2E2FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFD0D0D0FF848484FF777777FFB8B8
      B8FFE1E1E1FFCDCDCDFF6A6A6AFF5B5B5BFF5B5B5BFF5B5B5BFF757575FF5656
      56ED0404042A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505311D1D1D713E3E3EA63F3F3FBB484848C25757
      57D1464646BF3E3E3EBB3939399B1313135C0000000E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C4C
      4CAAB0B0B0FFA2A2A2FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA8A8A8FF9393
      93FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F468383
      83DBD1D1D1FFDBDBDBFFEEEEEEFFD8D8D8FF868686FF727272FF717171FF6666
      66FF3B3B3BD20606063300000000000000000000000000000000000000000505
      0531555555E9838383FF737373FF676767FF7E7E7EFFE3E3E3FFFAFAFAFFF4F4
      F4FFECECECFFE4E4E4FFDEDEDEFFE3E3E3FFEAEAEAFFE3E3E3FFDFDFDFFFEBEB
      EBFFE1E1E1FFCDCDCDFF6B6B6BFF5D5D5DFF696969FF8A8A8AFF656565F41212
      1277000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000011010101180404
      0427010101150000001100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001414
      1454626262CD6D6D6DD46D6D6DD46D6D6DD46D6D6DD46C6C6CD4666666D12E2E
      2E9B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      062A7D7D7DD4BBBBBBFFA1A1A1FF7A7A7AFF7B7B7BFF7C7C7CFF676767FF4141
      41DB0404042A0000000000000000000000000000000000000000000000000000
      00000303032626262697585858D7787878E9828282E67C7C7CC9787878BF7878
      78BF787878BF777777BF767676BF777777BF787878BF787878BF787878BF7878
      78BF767676BF747474BF888888E97C7C7CE9676767E0353535BD080808380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303230505052A0505052A0505052A0505052A0505052A040404270000
      000E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B3F535353DB808080FF8D8D8DFF828282FF6A6A6AFF393939CD0909
      093F000000000000000000000000000000000000000000000000000000000000
      000000000000000000060606062D0C0C0C3F0B0B0B3C0303031F010101150101
      0115010101150101011501010115010101150101011501010115010101150101
      011501010115010101150C0C0C3F0C0C0C3F0808083601010113000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000404042A3D3D3DCB606060F2454545DF2F2F2F9F0000000D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030303210F0F0F48080808350000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFF000000FFF8FFFFF
      FFF81FFFFFFFFFFEC0000003FC07FFFFFFC003FFFFFFFFFE80000001E007FFFF
      FF0000FFFFFFFFFC000000018007FFFFFE00007FFFFFFFFC0000000000001FFF
      FC00003FFFFFFFF80000000000000FFFF800001FFFFFFFF000000000000007FF
      F000000FFFFFFFE001FFFF80000007FFE0000007FFEFFFC003FFFFC0000007FF
      E0000007FFCFFF8003FFFFC0000007FFC0000003FF8FFE0003FFFFC0000007FF
      C0000003FF0FFC0103FFFFC0000007FFC0000003FE0FE001000000000000073F
      C0000001FC000001000000000000071F80000001F8000003000000000000070F
      80000001F0000003000000000000FF0780000001E0000007000000000001FF03
      80000001C0000007000000000001C001C00000018000000F0000000000018000
      C00000030000001F000000000001C000C00000030000001F000000000001FF01
      C00000038000007F000000000000FF03E0000007C00000FF0000000000003F07
      E0000007E00001FF000000000000070FF000000FF00007FF000000000000071F
      F800001FF8001FFF00000000000007FFFC00003FFC03FFFF00000000000007FF
      FE00007FFE0FFFFF00000000000007FFFF0000FFFF0FFFFF00000001000007FF
      FFC003FFFF8FFFFF80000001000007FFFFF81FFFFFCFFFFFC000000300000FFF
      FFFFFFFFFFEFFFFFE000000780001FFF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object AdoQ_ADD: TADOQuery
    Connection = con_Geral
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from hh.Lista_Email where Cliente = '#39'a2'#39)
    Left = 520
    Top = 8
    object AdoQ_ADDID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object strngfldAdoQ_ADDNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object strngfldAdoQ_ADDEmail: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object strngfldAdoQ_ADDHH_Excel: TStringField
      FieldName = 'HH_Excel'
      Size = 50
    end
    object strngfldAdoQ_ADDGrupo_Carteira: TStringField
      FieldName = 'Grupo_Carteira'
      Size = 50
    end
    object AdoQ_ADDONOFF: TBooleanField
      FieldName = 'ONOFF'
    end
    object strngfldAdoQ_ADDCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
  end
  object DS_ADD: TDataSource
    DataSet = AdoQ_ADD
    Left = 552
    Top = 8
  end
  object DS_Grid: TDataSource
    DataSet = AdoQ_Grid
    Left = 672
    Top = 8
  end
  object AdoQ_Grid: TADOQuery
    Connection = con_Geral
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select distinct HH_Excel, Grupo_Carteira, Cliente from hh.Lista_' +
        'Email order by Cliente')
    Left = 632
    Top = 8
    object strngfldAdoQ_GridHH_Excel: TStringField
      FieldName = 'HH_Excel'
      Size = 50
    end
    object strngfldAdoQ_GridGrupo_Carteira: TStringField
      FieldName = 'Grupo_Carteira'
      Size = 50
    end
    object strngfldAdoQ_GridCliente: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
  end
  object AdoQ_Excluir: TADOQuery
    Connection = con_Geral
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Clie' +
        'nte,  case onoff when 1 then '#39'Verdadeiro'#39' else '#39'Falso'#39' end Receb' +
        'e from hh.Lista_Email')
    Left = 736
    object IntegerField1: TIntegerField
      FieldName = 'ID'
    end
    object strngfld: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object strngfld1: TStringField
      FieldName = 'Email'
      Size = 50
    end
    object strngfld2: TStringField
      FieldName = 'HH_Excel'
      Size = 50
    end
    object strngfld3: TStringField
      FieldName = 'GCarteira'
      Size = 50
    end
    object strngfld4: TStringField
      FieldName = 'Recebe'
      ReadOnly = True
      Size = 10
    end
    object strngfld5: TStringField
      FieldName = 'Cliente'
      Size = 50
    end
  end
  object DS_Excluir: TDataSource
    DataSet = AdoQ_Excluir
    Left = 792
  end
end
