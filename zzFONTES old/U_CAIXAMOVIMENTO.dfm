object F_CaixaMovimento: TF_CaixaMovimento
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'CAIXA MOVIMENTACAO'
  ClientHeight = 648
  ClientWidth = 942
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBarCadPadrao: TToolBar
    Left = 0
    Top = 0
    Width = 942
    Height = 45
    Hint = 'Barra de Bot'#245'es do Cadastro'
    CustomHint = BalloonHintModelo
    AutoSize = True
    ButtonHeight = 41
    ButtonWidth = 55
    DisabledImages = ImageListDesabilitado
    DrawingStyle = dsGradient
    EdgeBorders = [ebTop, ebBottom]
    GradientEndColor = clGray
    GradientStartColor = clMoneyGreen
    Images = ImageListHabilitado
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object btnAutoFiltrar: TToolButton
      Left = 0
      Top = 0
      Hint = 'Pesquisa Rapida de Registros'
      CustomHint = BalloonHintModelo
      Caption = 'Pesquisa'
      DropdownMenu = PopupFiltroPesq
      ImageIndex = 0
      Style = tbsDropDown
    end
    object btnSeparador1: TToolButton
      Left = 70
      Top = 0
      Width = 8
      CustomHint = BalloonHintModelo
      Caption = 'btnSeparador1'
      ImageIndex = 2
      Style = tbsSeparator
    end
    object btnInicio: TToolButton
      Left = 78
      Top = 0
      Hint = 'Primeiro Registro'
      CustomHint = BalloonHintModelo
      Caption = 'Primeiro Registro'
      ImageIndex = 2
      OnClick = btnInicioClick
    end
    object btnAnterior: TToolButton
      Left = 133
      Top = 0
      Hint = 'Registro Anterior'
      CustomHint = BalloonHintModelo
      Caption = 'Registro Anterior'
      ImageIndex = 3
      OnClick = btnAnteriorClick
    end
    object btnFinal: TToolButton
      Left = 188
      Top = 0
      Hint = 'Ultimo Registro'
      CustomHint = BalloonHintModelo
      Caption = 'Ultimo Registro'
      ImageIndex = 4
      OnClick = btnFinalClick
    end
    object btnProximo: TToolButton
      Left = 243
      Top = 0
      Hint = 'Proximo Registro'
      CustomHint = BalloonHintModelo
      Caption = 'Proximo Registro'
      ImageIndex = 5
      OnClick = btnProximoClick
    end
    object btnSeparador2: TToolButton
      Left = 298
      Top = 0
      Width = 8
      CustomHint = BalloonHintModelo
      Caption = 'btnSeparador2'
      ImageIndex = 6
      Style = tbsSeparator
    end
    object btnIncluir: TToolButton
      Left = 306
      Top = 0
      Hint = 'Adicionar um Registro'
      CustomHint = BalloonHintModelo
      Caption = 'Adicionar Registro'
      ImageIndex = 6
      OnClick = btnIncluirClick
    end
    object btnAlterar: TToolButton
      Left = 361
      Top = 0
      Hint = 'Alterar um Registro'
      CustomHint = BalloonHintModelo
      Caption = 'Alterar Registro'
      ImageIndex = 7
      OnClick = btnAlterarClick
    end
    object btnExcluir: TToolButton
      Left = 416
      Top = 0
      Hint = 'Excluir Registros'
      CustomHint = BalloonHintModelo
      Caption = 'Excluir Registros'
      DropdownMenu = PopExcluir
      ImageIndex = 8
      Style = tbsDropDown
    end
    object btnSeparador3: TToolButton
      Left = 486
      Top = 0
      Width = 8
      CustomHint = BalloonHintModelo
      Caption = 'btnSeparador3'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object btnGravar: TToolButton
      Left = 494
      Top = 0
      Hint = 'Gravar Registro -- Confirmar Altera'#231#227'o'
      CustomHint = BalloonHintModelo
      Caption = 'Gravar'
      ImageIndex = 10
      OnClick = btnGravarClick
    end
    object btnReverter: TToolButton
      Left = 549
      Top = 0
      Hint = 'Cancelar Opera'#231#227'o'
      CustomHint = BalloonHintModelo
      Caption = 'Voltar'
      ImageIndex = 11
      OnClick = btnReverterClick
    end
    object btnSair: TToolButton
      Left = 604
      Top = 0
      Hint = 'Sair --- Fechar a Tela'
      CustomHint = BalloonHintModelo
      Caption = 'Sair'
      ImageIndex = 12
      OnClick = btnSairClick
    end
    object btnSeparador4: TToolButton
      Left = 659
      Top = 0
      Width = 8
      CustomHint = BalloonHintModelo
      Caption = 'btnSeparador4'
      ImageIndex = 12
      Style = tbsSeparator
    end
    object btnImpressao: TToolButton
      Left = 667
      Top = 0
      Hint = 'Impress'#227'o de Relatorio'
      CustomHint = BalloonHintModelo
      Caption = 'Imprimir'
      ImageIndex = 13
    end
  end
  object PageControlCadastro: TPageControl
    Left = 0
    Top = 45
    Width = 942
    Height = 603
    Hint = 'Aba de Cadastros'
    ActivePage = TabSheetFicha
    Align = alClient
    Images = imgPop24
    Style = tsFlatButtons
    TabOrder = 1
    TabWidth = 150
    object TabSheetFicha: TTabSheet
      Hint = 'Cadastros'
      Caption = 'Modo Cadastro'
      ImageIndex = 10
      object pnlFichaBotoesCheck: TPanel
        Left = 0
        Top = 0
        Width = 934
        Height = 61
        Align = alTop
        ParentBackground = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitLeft = 348
        ExplicitTop = -6
        object edtValorCampo: TEdit
          Left = 192
          Top = 20
          Width = 200
          Height = 24
          Hint = 'Colocar o Valor da Pesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edtValorCampoKeyPress
        end
        object btnOk: TBitBtn
          Left = 398
          Top = 19
          Width = 114
          Height = 27
          Hint = 'Executar a Pesquisa'
          Caption = '&Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            B60D0000424DB60D000000000000360000002800000030000000180000000100
            180000000000800D000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7
            E7DBDBDBE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFC8D0E1285A9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFE5E5E59B9B9B9797979D9D9DC8C8C8FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D1E3285EA55BD3F977DBF426589F70
            7B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69B9B9BADAD
            ADB0B0B0979797ABABABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D2E5
            2963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFE6E6E69D9D9DAEAEAEB2B2B2A8A8A89E9E9E9A9A9AFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E69E9E9EAEAEAEB2B2B2A8A8
            A89F9F9F9B9B9BE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC
            7FE3FA44AFF1177FE41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7
            E7E79F9F9FAEAEAEB2B2B2A8A8A89F9F9F9C9C9CE7E7E7FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFC9D6EA2971C15CD5FC7EE3FA44AFF1177FE41F63BDC9D6EAFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFE7E7E7A0A0A0AEAEAEB2B2B2A8A8A89F9F9F9D9D
            9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F7E7
            E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551C3F47EE3FA44AFEF
            177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFAFAFAF1F1F1F1F1F1F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFADADADAB
            ABABB2B2B2A8A8A89F9F9F9E9E9EE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFEFED5D5D5A9A9A9929292939393939393909090
            A2A2A2CDCDCDFAFAFAF4F4F4CECECE9E9E9EA6A6A69F9F9F9F9F9FE7E7E7FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFF
            E6C4FFEECDFFF5CCC0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2
            C9DBF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5A8A8A89595
            95A4A4A4B5B5B5B8B8B8BABABABABABAAEAEAE989898949494A0A0A0A9A9A9A9
            A9A99D9D9DA0A0A0E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF
            5D56618E7753F2C18FFFCFA9FFD6B3FFE6C9FFEDD0FFF2D3FFF8D8FFFCDF97AC
            A6453B45726374C8C1CBE0EEFAD4E3F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFF5F5F59E9E9E9C9C9CB0B0B0B4B4B4B6B6B6B9B9B9BABABABBBBBB
            BBBBBBBCBCBCA8A8A89090909B9B9BD5D5D5F2F2F2EDEDEDFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC91F6BD91FFD8B6FF
            E8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CDC9CDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE9B9B9BADADADB0B0
            B0B0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEA9A9A9909090DF
            DFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFDEDEDE979797A9A9A9AEAEAEABABABB0B0B0B6B6B6B9B9B9BABABABBBBBB
            BCBCBCBEBEBEBFBFBFBEBEBE9C9C9CCBCBCBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FF
            E7CEFFEDD4FFF2DAFFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B79E9E9EABABABA9A9A9AAAA
            AAB0B0B0B6B6B6B9B9B9BABABABBBBBBBCBCBCBDBDBDBEBEBEBDBDBDB2B2B29F
            9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF706471C4905D
            DDA479D39A6FF8BF94FFD0ACFFDABCFFEBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8
            E1FFF9DEFFFAD75D525FF0F0F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF9F9F9FA4A4A4AAAAAAA7A7A7B0B0B0B4B4B4B7B7B7BABABABABABABBBBBB
            BCBCBCBCBCBCBCBCBCBCBCBCBCBCBC969696F7F7F7FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA176E5AC81FDC498FF
            DCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D7179D6D5D8FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9DA3A3A3A9A9A9AEAEAEA9A9
            A9ACACACB2B2B2B7B7B7BBBBBBBABABABABABABBBBBBBBBBBBBBBBBBBABABA9D
            9D9DE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF9E9E9EA2A2A2A8A8A8ABABABB4B4B4B8B8B8B7B7B7B3B3B3B8B8B8BBBBBB
            BABABABABABABABABABABABABABABA9E9E9EE9E9E9FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FF
            DABDFFCBA3FFE6D1FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A5A5A2A2A2A6A6A6AFAFAFB8B8
            B8BBBBBBBEBEBEB7B7B7B3B3B3B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B999
            9999F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A0ACA68053
            CB9267EBB287FFD9BBFFEADAFFF1E7FFDEC5F1B88DFFDBBFFFCCA3FED3AEFFD8
            B6FFDDC0D3C594796F7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFC0C0C09F9F9FA5A5A5ADADADB6B6B6BABABABCBCBCB8B8B8AFAFAFB7B7B7
            B3B3B3B5B5B5B6B6B6B7B7B7AEAEAEA9A9A9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC398FFDCC2FFE5D2FF
            CCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BCB8BEFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E79E9E9EA2A2A2A9A9A9B1B1
            B1B7B7B7B9B9B9B4B4B4B1B1B1B1B1B1ADADADAFAFAFB3B3B3B3B3B39F9F9FD4
            D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFBFBFBF9F9F9FA3A3A3A9A9A9AEAEAEB1B1B1B0B0B0AEAEAEA7A7A7
            AAAAAAAFAFAFB0B0B0A5A5A5ADADADFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DD
            A479DBA277E3AA7FEAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB0B0B0A0A0A0A2A2
            A2A6A6A6A8A8A8AAAAAAA9A9A9ABABABADADADABABABA4A4A4A7A7A7F1F1F1FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FAFAFAB2ABB598867DAD875AC38C5BBC8558C28B5DCF9967BA9668958475968F
            9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFBFBFBC1C1C1A2A2A2A1A1A1A3A3A3A2A2A2A3A3A3A6A6A6
            A4A4A4A1A1A1B3B3B3F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E4B7AFBA9D91A09F
            919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8
            E8C4C4C4ACACACA6A6A6A6A6A6A9A9A9BBBBBBE1E1E1FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
          OnClick = btnOkClick
        end
        object RGPesquisaGenerica: TRadioGroup
          Left = 5
          Top = -1
          Width = 165
          Height = 53
          Hint = 'Escolher o Tipo de Pesquisa'
          Caption = 'Modo de Pesquisa'
          Columns = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'C'#243'digo'
            'Descri'#231#227'o')
          ParentFont = False
          TabOrder = 2
          OnClick = RGPesquisaGenericaClick
        end
      end
      object pnlFichaCampos: TPanel
        Left = 0
        Top = 61
        Width = 934
        Height = 502
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object statBarPadrao: TStatusBar
          Left = 0
          Top = 477
          Width = 934
          Height = 25
          Hint = 'Barra de Informa'#231#245'es'
          Panels = <
            item
              Width = 100
            end
            item
              Width = 100
            end
            item
              Width = 500
            end
            item
              Width = 50
            end>
          ParentShowHint = False
          ShowHint = True
        end
        object pnlDados: TPanel
          Left = 0
          Top = 33
          Width = 708
          Height = 78
          Align = alCustom
          BevelOuter = bvLowered
          TabOrder = 1
          object GroupBox5: TGroupBox
            Left = 5
            Top = 3
            Width = 328
            Height = 66
            Caption = 'Abertura do Caixa'
            Color = clBtnFace
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label26: TLabel
              Left = 3
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label28: TLabel
              Left = 125
              Top = 16
              Width = 36
              Height = 13
              Caption = 'Usuario'
            end
            object Label30: TLabel
              Left = 253
              Top = 16
              Width = 54
              Height = 13
              Caption = 'Valor Inicial'
            end
            object Label2: TLabel
              Left = 71
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Hora'
              FocusControl = DBEdit4
            end
            object DBEdit2: TDBEdit
              Left = 3
              Top = 35
              Width = 64
              Height = 21
              Color = 16776176
              DataField = 'DATA_INICIO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 0
            end
            object DBEdit8: TDBEdit
              Left = 253
              Top = 35
              Width = 72
              Height = 21
              Color = 16776176
              DataField = 'VL_INICIO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 125
              Top = 35
              Width = 124
              Height = 21
              Color = 16776176
              DataField = 'USERINICIO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 2
            end
            object DBEdit4: TDBEdit
              Left = 71
              Top = 35
              Width = 50
              Height = 21
              Color = 16776176
              DataField = 'HORA_INICIO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 3
            end
          end
          object GroupBox6: TGroupBox
            Left = 348
            Top = 3
            Width = 328
            Height = 66
            Caption = 'Fechamento do Caixa'
            Enabled = False
            TabOrder = 1
            object Label3: TLabel
              Left = 3
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label32: TLabel
              Left = 125
              Top = 16
              Width = 36
              Height = 13
              Caption = 'Usuario'
            end
            object Label34: TLabel
              Left = 253
              Top = 16
              Width = 68
              Height = 13
              Caption = 'Valor Fechado'
            end
            object Label4: TLabel
              Left = 71
              Top = 16
              Width = 23
              Height = 13
              Caption = 'Hora'
              FocusControl = DBEdit6
            end
            object DBEdit5: TDBEdit
              Left = 3
              Top = 35
              Width = 64
              Height = 21
              Color = clMoneyGreen
              DataField = 'DATA_FINAL'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 0
            end
            object DBEdit10: TDBEdit
              Left = 125
              Top = 35
              Width = 124
              Height = 21
              Color = clMoneyGreen
              DataField = 'USERFINAL'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 1
            end
            object DBEdit3: TDBEdit
              Left = 253
              Top = 35
              Width = 72
              Height = 21
              Color = clMoneyGreen
              DataField = 'VL_FECHAMENTO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 2
            end
            object DBEdit6: TDBEdit
              Left = 71
              Top = 35
              Width = 50
              Height = 21
              Color = clMoneyGreen
              DataField = 'HORA_FINAL'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 3
            end
          end
        end
        object pnlNCaixa: TPanel
          Left = 0
          Top = 0
          Width = 934
          Height = 32
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 2
          object DBText1: TDBText
            Left = 433
            Top = 6
            Width = 82
            Height = 18
            Alignment = taCenter
            DataField = 'ID'
            DataSource = DSCaixa_AbreFecha
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label1: TLabel
            Left = 281
            Top = 6
            Width = 146
            Height = 18
            Caption = 'CAIXA NUMERO:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -16
            Font.Name = 'Arial Rounded MT Bold'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 132
          Width = 641
          Height = 317
          Align = alCustom
          BevelOuter = bvLowered
          TabOrder = 3
          object DBGrid1: TDBGrid
            Left = 22
            Top = 19
            Width = 595
            Height = 295
            Align = alCustom
            DataSource = DSCaixaMovim
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = GridListaDrawColumnCell
            OnDblClick = GridListaDblClick
            OnKeyPress = GridListaKeyPress
          end
        end
        object pnlDetalhes: TPanel
          Left = 714
          Top = 32
          Width = 220
          Height = 445
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 4
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 201
            Height = 97
            Caption = 'Detalhes'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label5: TLabel
              Left = 5
              Top = 20
              Width = 54
              Height = 13
              Caption = 'Valor Inicial'
            end
            object Label6: TLabel
              Left = 5
              Top = 39
              Width = 67
              Height = 13
              Caption = 'Recebimentos'
            end
            object Label11: TLabel
              Left = 5
              Top = 58
              Width = 31
              Height = 13
              Caption = 'Saidas'
            end
            object Label7: TLabel
              Left = 5
              Top = 77
              Width = 63
              Height = 13
              Caption = 'Saldo Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBEdit7: TDBEdit
              Left = 110
              Top = 17
              Width = 75
              Height = 21
              Color = clInfoBk
              DataField = 'VL_INICIO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 0
            end
            object DBEdit11: TDBEdit
              Left = 110
              Top = 36
              Width = 75
              Height = 21
              Color = clInfoBk
              DataField = 'VLTOTALRECEBIDO'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 1
            end
            object DBEdit12: TDBEdit
              Left = 110
              Top = 55
              Width = 75
              Height = 21
              Color = clInfoBk
              DataField = 'VLTOTALSAIDA'
              DataSource = DSCaixa_AbreFecha
              TabOrder = 2
            end
            object DBEdit13: TDBEdit
              Left = 110
              Top = 74
              Width = 75
              Height = 21
              Color = clInfoBk
              DataField = 'VLTOTALGERAL'
              DataSource = DSCaixa_AbreFecha
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object PageControl1: TPageControl
            Left = 0
            Top = 100
            Width = 213
            Height = 221
            ActivePage = TabEntradas
            Align = alCustom
            Style = tsFlatButtons
            TabOrder = 1
            object TabEntradas: TTabSheet
              Caption = 'Entradas'
              object Panel1: TPanel
                Left = 0
                Top = 0
                Width = 205
                Height = 190
                Align = alClient
                TabOrder = 0
                object GroupBox3: TGroupBox
                  Left = 8
                  Top = 4
                  Width = 190
                  Height = 97
                  Caption = 'Por Tipo de Recebimento'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label13: TLabel
                    Left = 5
                    Top = 20
                    Width = 33
                    Height = 13
                    Caption = 'A Vista'
                  end
                  object Label14: TLabel
                    Left = 5
                    Top = 39
                    Width = 33
                    Height = 13
                    Caption = 'Cartao'
                  end
                  object Label15: TLabel
                    Left = 5
                    Top = 58
                    Width = 37
                    Height = 13
                    Caption = 'Cheque'
                  end
                  object Label19: TLabel
                    Left = 5
                    Top = 77
                    Width = 30
                    Height = 13
                    Caption = 'Boleto'
                  end
                  object DBEdit18: TDBEdit
                    Left = 110
                    Top = 17
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SALDO_DINHEIRO'
                    TabOrder = 0
                  end
                  object DBEdit19: TDBEdit
                    Left = 110
                    Top = 36
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SALDO_CARTAO'
                    TabOrder = 1
                  end
                  object DBEdit20: TDBEdit
                    Left = 110
                    Top = 55
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SALDO_CHEQUE'
                    TabOrder = 2
                  end
                  object DBEdit24: TDBEdit
                    Left = 110
                    Top = 74
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SALDO_BOLETO'
                    TabOrder = 3
                  end
                end
              end
            end
            object TabSaidas: TTabSheet
              Caption = 'Saidas'
              ImageIndex = 1
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 205
                Height = 190
                Align = alClient
                BevelOuter = bvNone
                TabOrder = 0
                object GroupBox9: TGroupBox
                  Left = 7
                  Top = 1
                  Width = 190
                  Height = 56
                  Caption = 'Saidas'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  object Label27: TLabel
                    Left = 5
                    Top = 20
                    Width = 56
                    Height = 13
                    Caption = 'PGT Contas'
                  end
                  object DBEdit31: TDBEdit
                    Left = 110
                    Top = 17
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'VLSAIDACONTAS'
                    TabOrder = 0
                  end
                end
                object GroupBox7: TGroupBox
                  Left = 7
                  Top = 61
                  Width = 190
                  Height = 76
                  Caption = 'Por Tipo de PGTO'
                  Enabled = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clNavy
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  object Label21: TLabel
                    Left = 5
                    Top = 20
                    Width = 33
                    Height = 13
                    Caption = 'A Vista'
                  end
                  object Label23: TLabel
                    Left = 5
                    Top = 42
                    Width = 37
                    Height = 13
                    Caption = 'Cheque'
                  end
                  object DBEdit26: TDBEdit
                    Left = 110
                    Top = 17
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SAIDA_DINHEIRO'
                    TabOrder = 0
                  end
                  object DBEdit28: TDBEdit
                    Left = 110
                    Top = 39
                    Width = 75
                    Height = 21
                    Color = clInfoBk
                    DataField = 'SAIDA_CHEQUE'
                    TabOrder = 1
                  end
                end
              end
            end
          end
        end
      end
    end
    object TabSheetTela: TTabSheet
      Hint = 'Vis'#227'o Geral'
      Caption = 'Modo Tela'
      ImageIndex = 11
      object pnlTela: TPanel
        Left = 0
        Top = 0
        Width = 934
        Height = 563
        Align = alClient
        BevelInner = bvLowered
        TabOrder = 0
        object GridLista: TDBGrid
          Left = 2
          Top = 2
          Width = 930
          Height = 559
          Align = alClient
          DataSource = DSCaixa_AbreFecha
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = GridListaDrawColumnCell
          OnDblClick = GridListaDblClick
          OnKeyPress = GridListaKeyPress
        end
      end
    end
  end
  object ImageListHabilitado: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 384
    Top = 48
    Bitmap = {
      494C01010E001800380018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000008080809191B1A212535304D32473F673D54
      4C7A3D544C7A3348416927383151141917240909090A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202031D26233D2145388505432DC2086443E50A6E48F20C74
      4DFC0C744DFC096E4AF3096644E7054B31C42246398921282642030303050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000607060A061A135C055437D70D774EF8108054FF118255FF118255FF1181
      55FF118155FF118255FF118155FF108054FF0E774FF9065639DC061C15620707
      070B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000005
      0321033D289F0C744CF7148859FF138558FF138557FF138557FF138657FF1386
      57FF138657FF138557FF138557FF128456FF138557FF15895AFF0E7850FA0541
      2CA6000503220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005050508063E
      299D10794FF2158A5AFF15885AFF15895AFF158A5AFF168A5AFF168B5BFF168B
      5BFF168B5BFF168A5BFF168A5BFF15895AFF158959FF15885AFF168A5AFF117A
      51F305432EA60708080C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010107191253107B
      50F6178D5DFF168C5CFF168D5CFF178E5DFF178F5DFF188F5EFF188F5EFF1890
      5EFF18905EFF188F5EFF188F5EFF178E5DFF178D5DFF178D5CFF168B5BFF188E
      5DFF128053FA081F166303030305000000000000000000000000000000000000
      000000000000454C42AD494644D3494644D3494644D3494644D3494644D34946
      44D3494644D3494644D3494644D3494644D3494644D3494644D3494644D30F20
      0D35000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B2220350A5C3CD11B94
      62FE19915FFF19925FFF1A9260FF1A9361FF1E9463FF229565FF239666FF2396
      66FF239666FF229566FF229565FF1C9261FF1A9260FF1A9260FF19915FFF1A90
      5FFF1E9764FF0C613FD71F28233D000000000000000000000000000000000000
      0000000200032941248C393130FF3A5128FF3B6E22FF3B6E22FF3A6E22FF3B6E
      22FF3B6D22FF3B6D22FF3B6C22FF3B6D22FF3B6723FF393130FF46423EEF0109
      010F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000304040421433576168759F51B96
      62FF1B9562FF1C9663FF1C9763FF3CA278FF87C2ABFF9DCBB9FF9ECCBAFF9ECD
      BAFF9ECCBAFF9DCCBAFF9DCCBAFF76B99EFF2F9C6EFF1C9763FF1C9662FF1B95
      61FF1D9663FF1A8C5DF8254B3C83070707080000000000000000000000003343
      2EB322221DF3201D1EFF383233FF3D6E4AFF42C66CFF42C66CFF42C66CFF42C6
      6CFF42C66CFF42C66CFF42C66CFF42C66CFF40A760FF393233FF2A2627FF1E1C
      1BFA42433CE8171A162000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101312170A4A30AF1C9663FF1D99
      64FF1D9A65FF1E9B65FF219B67FF88C5ACFFF6FAF9FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F1EDFF66B695FF1E9965FF1D9A65FF1D99
      64FF1C9863FF219B67FF0D5137BC171A191F000000000000000007070707271F
      1BFD191412FF282624FF333030FF3A5B4CFF4CDA94FF4CDA94FF4CDB95FF4CDB
      94FF4CDA95FF4CDB95FF4CDA95FF4CDB94FF439D72FF332F30FF333130FF1915
      14FF211B18FF3838375000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F2B263A167B51DC219E69FF209D
      68FF209E68FF219F69FF29A16DFF9FD1BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F7FF7AC1A4FF209E67FF209E68FF209D
      67FF1F9D67FF23A06AFF188055E124332D44000000000000000009090909271F
      1BFE191412FF3F3F3BFF3F3F3DFF27322FFF6ADFAEFF69DFAEFF69DFAEFF69DF
      AEFF69DFAEFF69DFAEFF6ADFAEFF69DFAEFF447B66FF2E2D2DFF545551FF1D1A
      18FF211B18FF3D3B3B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C3E37521D885CE726A36DFF22A1
      6AFF22A26BFF23A36CFF2BA570FFA0D3BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F7FF7BC4A6FF22A26AFF23A26BFF22A1
      6AFF22A16AFF28A56FFF218D5FEC31443D5B0000000000000000090909092720
      1CFE191412FF61635CFF5D6059FF131213FF91DDCCFF92E4D1FF92E4D1FF92E4
      D1FF92E4D1FF92E4D1FF92E4D1FF92E4D1FF425A55FF3B3C39FF878D82FF2421
      1DFF2A412FFF3D3B3B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000344A4161249163EF28A76FFF23A5
      6CFF25A66DFF27A76FFF30AA75FFA2D5C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FAF8FF7EC7A8FF26A66FFF25A66DFF24A5
      6CFF23A46BFF2CA973FF299869F3395146690000000000000000090909092720
      1CFE191412FF81827BFF8C9089FF343232FF40703CFF427B3BFF427B3BFF427B
      3BFF427B3BFF427B3BFF427B3BFF427B3BFF384336FF656763FFB9BFB4FF312C
      21FF5E4D18FF3D3B3B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003349405E2B9669EE31AC75FF2EAB
      74FF31AC75FF34AE77FF3CB07DFFA6D9C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FAF8FF86CBADFF33AD78FF32AD76FF2FAC
      74FF2BAA72FF35AE79FF309C6EF239514768000000000000000009090909271F
      1BFE191412FF939390FFDADCD8FFDCDFDBFFDCDFDBFFDCDFDBFFDCDFDBFFDCDF
      DBFFDCDFDBFFDCDFDBFFDCDFDBFFDCDFDBFFDCDFDBFFDADDD9FFDADCD8FF2925
      24FF251E17FF3D3B3B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000293B324B2C9266E43EB27EFF38B0
      7BFF3BB17CFF3EB37EFF46B585FFAADBC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FAF8FF8BCEB1FF3EB280FF3CB27DFF39B1
      7BFF35AF79FF40B381FF31986CEA30453C580000000000000000090909092720
      1CFE191412FF9F9E9DFFF1F2F1FFF1F1F1FFF1F2F1FFF1F1F1FFF1F2F1FFF1F2
      F1FFF1F2F1FFF1F2F1FFF1F2F1FFF1F2F1FFF1F2F1FFF1F2F1FFF1F2F1FF2A26
      25FF211B18FF3D3B3B5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B231F32267F58D649B786FF43B6
      83FF46B784FF49B886FF4FBA8BFFADDDC8FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FAF7FF8FD2B5FF48B886FF47B785FF44B6
      83FF40B481FF4CB989FF2E8F66DC212F293C0000000000000000070707072A23
      21FC201C1BFF6E6E6CFFA0A29EFFA0A29EFFA0A29EFFA0A29EFFA0A29EFFA0A2
      9EFFA0A29EFFA0A29EFFA0A29EFFA0A29EFFA0A29EFFA0A29EFF9FA19DFF2A27
      26FF26201EFF3938385000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E100E13175038A554BA8EFE50BC
      8CFF52BC8EFF55BE90FF58BF93FF99D7BCFFEDF7F2FFF6FBF9FFF6FBF9FFF6FB
      F9FFF6FBF9FFF6FBF9FFF6FBF9FFDFF1E9FF82CEACFF56BF91FF53BD8EFF50BC
      8DFF4DBA8AFF5ABF93FF1A5E40B0101313170000000000000000000000000F2C
      0B63333D2BD0504947FDC0C0BDFFD6D8D5FFD6D8D5FFD6D8D5FFD6D8D5FFD6D8
      D5FFD6D9D5FFD6D8D5FFD6D8D5FFD6D8D5FFD6D8D5FFD3D5D2FF77716FFF3D3A
      33ED1F3A19960507050800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020202203B306545A97EEE62C3
      98FE5CC195FF5FC397FF62C499FF6FC9A1FF95D6B9FFA2DBC2FFA3DCC2FFA3DC
      C3FFA3DCC2FFA2DBC1FFA1DBC1FF8BD3B3FF68C79DFF61C498FF5DC295FF5AC1
      94FF62C499FF4AAF84F3264B3C71040404040000000000000000000000000000
      0000000000000007000C0418022F173013A9222021FF222022FF222022FF2220
      22FF222022FF222022FF222022FF222022FF1F291EDD071E043A021101210001
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151B182620724EC071CA
      A2FD6AC89EFF69C89DFF6CCAA0FF6DCBA1FF6ECBA2FF6FCBA2FF70CCA3FF71CC
      A3FF70CCA3FF6FCCA2FF6FCBA2FF6DCAA1FF6DCAA0FF6AC99FFF66C69BFF68C7
      9DFF76CDA7FF227853C7171F1C2C000000000000000000000000000000000000
      00000000000000000000000000001533108B353031FF353031FF353031FF3530
      31FF353031FF353031FF353031FF353031FF283524D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111E183A42A9
      7CED78D0A8FF78CFA8FF77CFA8FF78D0A9FF7AD1ABFF7CD1ACFF7DD2ADFF7ED3
      ADFF7DD2ADFF7CD2ACFF7CD1ACFF79D0AAFF78CFA9FF75CEA7FF76CEA7FF7DD2
      ACFF48AF81F2091D154500000000000000000000000000000000000000000000
      00000000000000000000000000001633108B393333FF393333FF393233FF3932
      33FF393333FF393233FF393334FF393234FF2B3626D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202031039
      277D4EA780E586D6B1FF86D6B1FF83D5B0FF85D5B1FF87D6B2FF88D7B3FF88D7
      B3FF88D7B3FF87D6B2FF86D6B2FF83D5B0FF82D4AFFF84D5B0FF89D7B3FF58B1
      8AEC14402D8B0303030500000000000000000000000000000000000000000000
      000000000000000000000000000016330F8B39302EFF39312FFF36302FFF3730
      2FFF36302FFF36302FFF39312FFF39302EFF2B3422D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0B
      0B11123A287B54B288EC9ADEBDFE96DDBCFE8EDAB7FF8FDAB8FF90DBB9FF91DB
      B9FF90DBB9FF8FDBB8FF8EDAB8FF8CD9B6FF95DCBBFE9BE0BFFE5AB78FF11842
      2F890D0F0E170000000000000000000000000000000000000000000000000000
      00000000000000000000000000001719161F2F2F2E3E2F2F2E3E2E2E2D3D2D2E
      2D3D2F2F2E3E2E2E2D3D2D2E2D3D2E2E2D3D2526243000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010102131F193A357E5DBD71C19EED99DDBEFDA2E4C5FFA4E4C6FFA6E6
      C7FFA6E6C8FFA4E4C6FFA2E4C5FF9BDFBFFE76C4A1EF388262C115221C3F0202
      0203000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000161B1925294036632D5E48A0589B7DD171BA98E17DC3
      A3E87EC4A3E972BB9AE2599B7DD12E5E49A12B423865171D1A27000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101010D0E0E111A201D2B2E3C36453747
      4153384941542F3E37471B221F2D0D0E0E110101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606071618181E222F2C472E423B603549
      426A3549426A2D403A5E1F2D28411416141B0405040500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040405000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202031D26233D2043368303422ABC076141E2096B46EF0A70
      4AF40A704AF4096A46EE076141DF043F29B61E3F337A19211F35010101020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E10
      0F1C2B3A35594F5D58786868686B6868686B6868686B6868686B6868686B6868
      686B6868686B6868686B6868686B6868686B5558586D2E4B4084374D46721C22
      2038040404080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000607060A051A135D055337D70C754EF80F7E54FF118054FF118154FF1181
      54FF118154FF118154FF108154FF108053FF0E754DF6045034D00417104F0404
      0406000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000406040B0035
      23AC005237E955917DFAE9E9E9F4E9E9E9F4EAEAEAF4EAEAEAF4EBEBEBF4EBEB
      EBF4EAEAEAF4EAEAEAF4E9E9E9F4E9E9E9F4DEE3E1F5629886FB005A3CF70044
      2DCD00150E5A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000005
      0321033F29A20C754DF9148859FF138558FF128557FF138557FF138557FF1386
      57FF138557FF138557FF138557FF128456FF138658FF148A59FF0B724CF5022B
      1C910D0F0E1800000000000000000000000000000000020202040505050A0505
      050E0101011000000013000000150000001600000017000000180000001F0101
      0121000000190000001A00000019000000170000001600000015000000130000
      01110505050F0505050A020202040000000000000000070A09110031219D005D
      3EFE005D3EFF5A9683FFF4F4F4FFEBEBEBFFE6E6E6FFE7E7E7FFE7E7E7FFE8E8
      E8FFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE5E9E8FF659C8AFF005D3EFF005D
      3EFF005A3CF60A120F2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050606061C1F1E23111211140202
      02020000000000000000000000000000000000000000000000000607060A0541
      2BA310794FF2158A5AFF15885AFF15895AFF158A5AFF158A5AFF168A5BFF168B
      5BFF168A5BFF168A5AFF158A5AFF15895AFF158859FF15895AFF158A5BFF0E71
      4BED022B1D8E030303050000000000000000010101010000000C000000190000
      0022000000270000002A0000012D0000002F0404042F05110764133B19A81540
      1CAF0309054D000000320000003300000031000000300000012D0000002A0000
      002700000023000000190000000C01010101000000001D26233A004C33D8005D
      3EFE005D3EFF5B9683FFF6F6F6FFF0F0F0FFEDEDEDFFEDEDEDFFEEEEEEFFEEEE
      EEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFE9EDEBFF659D8BFF005D3EFF005D
      3EFF005D3EFF143A2E8307070708000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0F0F181D49399B205540A52134
      2D600D0F0E1A0000000000000000000000000000000002020203071C145C107D
      51F8178D5DFF168C5CFF168D5CFF178E5DFF178E5DFF188F5DFF188F5EFF188F
      5EFF188F5EFF188F5EFF188F5DFF178E5DFF178D5CFF168C5CFF168C5CFF188E
      5DFF0F7850F40617114A00000000000000000000000002020202030303050404
      0407050505090606060B0606060C0707070E141A162F21682FD52B883FFC2C8A
      40FE1F4627960C0D0C1D0808080F0707070E0707070E0606060C0606060B0505
      0509040404080303030502020202000000000000000029383352005639E8005D
      3EFF005E3EFF5B9883FFF6F6F6FFF0F0F0FFEDEDEDFFEDEDEDFFEEEEEEFFEEEE
      EEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEAEEECFF659D8CFF005D3EFF005D
      3EFF005D3EFF1A4E3DA7101010130000000003030304080F0D250F1C173F101D
      1940111D1940111D1940111D1940111D1940111D1940111E1940111D1940111D
      1940070C091D01010102000000000000000003030306011A115D0C764DFC0764
      41EA05402AA80406060C0000000000000000000000001F27243C0B5F3FD71A94
      61FE19915FFF19915FFF1A9260FF1A9361FF239766FF2B9B6CFF1C9563FF1B95
      62FF1B9562FF1D9663FF35A174FF259969FF1A9360FF1A9260FF19905FFF1A91
      60FF1D9663FF0A573BC7171D1B2D000000000000000000000000000000000000
      00000000000000000000030303032F393245317F48CE2C944AFE2C954AFF2C95
      4AFF298B45EE2E48376503030303000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A3A345400593BE90163
      41FF026442FF5E9B87FFF8F8F8FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4
      F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFECF0EFFF67A08DFF00603FFF005F
      3FFF005F3EFF1B513FAA1013121500000000052D1D81127F54F6148859FF1589
      59FF148859FF148859FF148759FF138758FF138658FF138558FF128457FF1283
      57FF107950F1354A42650000000000000000000000000000000007452EA8076B
      47FB056B47FF06472EAF101413200000000006060607254A3B82178A5BF81B96
      62FF1B9562FF1C9663FF1C9763FF32A172FF85C5AAFFA2D3BEFF44AA80FF1F9A
      66FF209B66FF4FB087FFB6DECDFF8CCBB0FF33A273FF1C9763FF1B9562FF1B94
      62FF1E9764FF178659F32040326F030303030000000000000000000000000000
      000000000000000000002F3C3346378051C12C9852FB2C9B53FF2C9C53FF2C9C
      53FF2C9B53FE2F7A49BE1F24222B000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A3B3554035D3DE90468
      44FF046945FF4F967CFFF8F8F8FFF4F4F4FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4
      F4FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFE7EEEBFF5F9E88FF036543FF0264
      42FF026442FF1D5341AA10131215000000000C5C3DB8138557FF118155FF1181
      54FF108054FF108054FF107E53FF0F7D53FF0F7D52FF0E7B51FF0D7A50FF0E7B
      51FF0F6F49E12B3B35530000000000000000000000000000000002110B4C0964
      43E2056845FF096B48F01E3E3271050505061719181E0B5036BB1D9763FF1D99
      64FF1D9964FF1E9B65FF299F6DFF8DCBB0FFEEF6F3FFF8FBF9FFAEDAC8FF3BA9
      79FF44AE82FFBDE2D2FFFBFDFCFFEFF8F4FF90CDB3FF2AA16EFF1D9A64FF1C99
      64FF1D9864FF209A66FF0B472FA80F1010140000000000000000000000000000
      0000000000001C1F1C23328B55CF2CA15BFB2CA45CFF2CA45CFF2CA45CFF2CA4
      5CFF2CA45CFF2B9C59F532624685000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A3B3554046240E9066D
      47FF066E48FF1C7A57FFD2E4DDFFF8F9F9FFFBFBFBFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFF8F9F8FFBED8CEFF318667FF056A46FF0469
      45FF046845FF1D5541AA10131215000000000E6241BF15895AFF138658FF1386
      57FF138557FF128557FF128456FF118356FF118355FF108154FF108055FE1487
      59FE06261A7108090910000000000000000000000000000000001013121D084E
      32B909704AFF076E48FF085136BF070B092225332E46177E54E1229E69FF209D
      67FF209E68FF219F69FF50B289FFD4EBE2FFFEFEFEFFFFFFFFFFFDFEFEFFCCE9
      DDFFDBEFE7FFFFFFFFFFFFFFFFFFFCFDFDFFC5E6D8FF43AE80FF209E68FF209D
      67FF1F9C67FF239F6AFF15704AD91B2220350000000000000000000000000303
      03032F3C3545328F5CCF2BAB66FE2BAC66FF2BAC66FF2BAB65FF2BAB65FF2BAC
      66FF2BAC66FF2BAC66FF2AA864FA212F283B0202020200000000000000000000
      000000000000000000000000000000000000000000002B3C3654096946E90A75
      4DFF0B754EFF0B754DFF197E58FF4E9F80FF68AE93FF68AF93FF69AF94FF69AF
      94FF69AE93FF68AE93FF68AD93FF51A082FF1B7D58FF09714AFF087049FF076F
      49FF076E48FF1F5743AA1013121500000000116643BF198F5EFF168C5BFF168B
      5BFF168B5BFF168B5BFF158A5AFF158959FF158859FF158959FF157B51E50528
      1A72000000000000000000000000000000000000000000000000090A0A0C083E
      28970C774EFF086E49FF0B6F49EB02150D593347405F1F8E5FEE25A26CFF21A1
      6AFF22A26BFF23A36BFF2CA671FF78C6A5FFE0F1E9FFFEFEFEFFFFFFFFFFFDFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFCFEBDEFF64BF98FF27A56EFF22A26BFF22A1
      6AFF21A069FF29A46FFF1F875BE5293A344D0000000000000000000000002F3C
      3646358E61C12AAD69FB2AB06BFF2AB06BFF29B06BFF2CB16DFF30B26FFF2AB0
      6BFF29B06BFF2AB06BFF2AB06BFF327F58AD191E1B2100000000000000000000
      000000000000000000000000000000000000000000002C3E375410764DE91285
      57FF128356FF118255FF108053FF0F7E53FF0F7D52FF0E7C52FF0E7B51FF0E7B
      51FF0E7A51FF0D7A51FF0D7A50FF0C784FFF0C774EFF0B764EFF0B754DFF0A74
      4CFF0A734CFF1F5945AA1013121500000000146A46BF1C9462FF19915FFF1990
      5FFF19905EFF18905EFF188F5DFF178E5DFF178D5DFF1E905FF80A3C27930608
      07130000000000000000000000000000000000000000000000000E100E130947
      2EA60E7B51FF09724BFF0D7850FA041D137739514669259666F326A66EFF23A4
      6CFF24A56DFF27A76FFF29A870FF33AB76FF75C5A3FFFAFCFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFECF8F3FF5EBE94FF2DAA73FF27A86FFF25A66DFF23A5
      6CFF23A46BFF2CA772FF248F62E92E4139550000000000000000151A181C2F98
      64CF29B26FFB29B571FF29B571FF29B571FF26B26FFE3CB479F53CAE77EB2EB4
      73FD28B471FE29B571FF29B571FF28AA6BF03058466E04040404000000000000
      000000000000000000000000000000000000000000002C3E3754127B51E9158A
      5AFF158A5AFF15895AFF148859FF138858FF138658FF128456FF118255FF1080
      53FF0F7E53FF0F7D52FF0E7D52FF0E7C52FF0D7B51FF0D7B51FF0C7950FF0C78
      4FFF0B774EFF215B45AA1013121500000000176D49BF209865FF1B9562FF1B95
      62FF1A9461FF1A9461FF1A9360FF199260FF19925FFF1E9563FB145C3EB8090F
      0D2F0000000000000000000000000000000000000000000000000A1210360F65
      44D20F7C52FF0B774EFF0E7B52FF0735248C3A5248692D9B6CF330AB74FF2DAB
      73FF31AC75FF34AE77FF37AF7AFF39B07CFF53BA8EFFE2F2EBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD6EFE4FF51BA8DFF38AF7BFF34AE78FF31AC75FF2EAB
      74FF2AA971FF34AE78FF2B9467E92E423A5500000000000000003D564B632EBA
      7BFE27BA78FF27BA79FF26BA78FF29B979FE37B27BEE2E483C55202A26303994
      6BBF26B977FE26BA78FF27BA79FF27BA79FF25A269DE2840364D000000000000
      000000000000000000000000000000000000000000002D3F3854147F53E9188E
      5EFF188E5DFF178D5DFF178C5CFF168B5CFF168B5BFF158A5AFF15895AFF1588
      59FF128657FF128456FF128356FF118255FF118155FF118154FF107E53FF0F7D
      52FF0F7C52FF215D47AA10131215000000001A704CBF239D69FF1E9A65FF1E9A
      65FF1E9965FF1E9965FF1D9864FF1D9763FF1C9763FF1B9562FF209966FF2391
      61EE082C1E680F161227050605070000000003030303060B0921136D48C31588
      59FC118054FF0E7C51FF118254FD0420157D33483F5C30996CEC3CB17DFF38B0
      7AFF3BB17CFF3EB37EFF42B482FF64C199FFC1E5D5FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFEFEFFBCE4D3FF64C299FF40B481FF3BB17CFF38B0
      7BFF34AE78FF40B381FF2E9367E3283A324A00000000000000001C201E223E9D
      74C92DBC7FFA24BD7DFF28BD7FFE35AC79E13764507805050505040404042E47
      3C5231BA7FF625BD7DFF25BE7DFF25BE7DFF25BC7CFC2B9468C2101211140000
      000000000000000000000000000000000000000000002D3F3854158356E91A92
      60FF199160FF19915FFF19905FFF178F5DFF1B8E5FFF1E8E61FF1E8D60FF1E8D
      60FF1D8C5FFF1D8B5EFF1B895DFF138557FF138658FF138657FF128456FF1283
      56FF118255FF235F47AA10131215000000001E7450BF29A46FFF23A16BFF22A1
      6AFF219F69FF219F69FF209D67FF1F9C67FF1F9C66FF1E9A65FF1D9965FF209A
      66FF239163EE196B48C10D38278F3C544A6A294E407C146241B81A8F5EFD1488
      59FF138557FF118255FF148256F3041C126925352E432F9267E048B786FF42B6
      82FF46B684FF49B886FF5FC096FFC1E5D5FFFBFDFCFFFFFFFFFFFEFEFEFFF0F8
      F5FFFBFDFBFFFEFEFEFFFFFFFFFFF9FCFBFFBAE4D1FF5ABE92FF46B684FF43B5
      83FF3FB480FF4BB889FF277F59D51A231F320000000000000000000000002C3A
      35413E9F77C939C38AFE3AB883ED36634F770C0D0D0E00000000000000000606
      0606278760B02ABE82FC22BF81FF23BF82FF23BF82FF23BE81FD2F634E790A0B
      0A0B00000000000000000000000000000000000000002D3F3954168357E91B95
      61FF1A9561FF1A9461FF1A925FFF3D9D76FF84BCA6FF90BEADFF8BBAA7FF8BBA
      A7FF8FC0ACFF92C2AEFF8EC0ABFF4A9C7AFF198A5CFF158A5AFF148859FF1387
      58FF138658FF256049AA1013121500000000217853BF34AD78FF2EAB74FF2CAA
      73FF2BA972FF29A870FF26A66DFF24A46CFF23A36BFF219F69FF209E68FF1E9C
      66FF1E9B66FF219B67FF239B68FF229465F4219464F91D9563FF178D5DFF168C
      5BFF14895AFF138758FF147C51DF03120B411416161B1D6142B655BC8FFF4FBB
      8CFF52BC8EFF55BE90FF6BC69FFFC6E8DAFFFBFDFCFFFCFEFDFFD8EFE5FF80CF
      ABFF98D7BBFFE8F5F0FFFEFEFEFFF0F9F5FFA2DBC2FF5CC195FF52BC8EFF4FBB
      8CFF4DBA8AFF58BC90FE145037A60E100E130000000000000000000000000000
      00001D2321272E66517D223B3347050505050000000000000000000000000000
      00001F27242A369871C022BF85FD1FC185FF1FC285FF1FC285FF1EB77EF12E62
      4F77090A090A000000000000000000000000000000002E403954198859E91E99
      65FF1D9864FF1D9864FF42A57CFFCBE2D8FFF5F5F5FFEAEAEAFFE1E1E1FFE0E2
      E0FFBFD3CAFF82B09FFFAAC8BBFFCED8D2FF5AA386FF178D5DFF178D5CFF168C
      5CFF168B5BFF27624BAA1013121500000000267B57BF43B583FF3FB480FF3EB3
      80FF41B181FD3DB17FFE35AE78FF31AD76FF2EAB73FF29A870FF26A66EFF23A4
      6CFF21A169FF209F68FF1F9C66FF1D9964FF1C9763FF1C9562FF1A9260FF1990
      5FFF188D5DFF1B9060FB0E432D960A0A0A0E050605062A5141794EB287F55EC2
      96FF5CC194FF5FC396FF63C59AFF81CEADFFCBEADDFFD6EFE3FF90D5B6FF6AC8
      9FFF6FCAA1FFA5DDC4FFE1F3ECFFA9DFC7FF6EC9A1FF60C498FF5CC194FF59C0
      93FF63C599FF45A97FEF213D3167020202020000000000000000000000000000
      0000000000000506060600000000000000000000000000000000000000000000
      0000040404042F4F435C30B082E21CC188FE1DC389FF1DC389FF1CC288FE1EA8
      78DB27534564010101010000000000000000000000002F403A541C8C5BE91F9C
      67FF1F9C66FF1F9B66FF61B593FFE5F0EBFFF5F5F5FFEAEAEAFFE1E1E1FFE0E2
      E0FF7DAF9CFF0A6D49FF489175FFD8DDD9FF78AF98FF1D9061FF19915FFF1990
      5FFF18905EFF29654DAA10131215000000002A7F5ABF4DBA8AFF4BBA8AFF3E9F
      75E81B533BA5266E4EBC44B282FB3FB381FF39B07BFF34AD77FF30AB74FF2BA9
      71FF26A66EFF23A46CFF22A16AFF209E67FF1F9C66FF1E9965FF1C9663FF1B95
      62FF1D9462FF1A734DCF111D183F00000000000000001C252235267F58D074CB
      A4FE67C79DFF68C89DFF6CC9A0FF6ECAA1FF82D0ADFF88D3B2FF73CCA5FF72CD
      A4FF72CDA4FF77CEA8FF8DD5B5FF72CCA4FF6CC9A0FF69C89EFF66C69BFF67C7
      9CFF72CCA4FF1F744EC1151B1827000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0F0F104073608624C48EFD19C38AFE1AC48CFF1AC48CFF1AC3
      8BFE19AE7DE21D322A390000000000000000000000002F4039531D8D5EE8209F
      68FF209E68FF209E67FF66B996FFE8F1EDFFF5F5F5FFEAEAEAFFE1E1E1FFE0E2
      E0FF78B09AFF0B754CFF419373FFD9DDD9FF80B29CFF209363FF1A9360FF1A94
      61FF1A9460FF2C6850A911121114000000002E805CBE59BF92FE56BC90FE0E33
      2373080A0917080D0C2624714FA849AF82F448B786FE40B27FFE3BB17BFF36AF
      78FF2FAB73FF29A870FF24A56CFF21A26AFF20A069FF1F9D67FF1D9A64FF219A
      67FE299D6BFA07231858030303060000000000000000010101010B21174F4CB2
      85F57AD0A9FF76CEA7FF77CFA8FF78D0A9FF7AD1AAFF7CD1ACFF7DD2ADFF7DD2
      ADFF7DD2ADFF7CD1ACFF7BD1ABFF78D0A9FF77CFA8FF74CEA6FF76CEA6FF7BD0
      ABFF46AE80F1111E183B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002030303309170B322C28FF916C690FF17C690FF17C6
      90FF1BC691FF2C8A6DAB12141315000000000000000025332E461D8258E123A1
      6BFE22A26BFF22A26AFF69BC99FFE8F2EEFFF5F5F5FFEAEAEAFFE1E1E1FFE0E2
      E0FF7CB79FFF138456FF479E7BFFD9DDDAFF81B49EFF229765FF1B9562FF1D98
      64FF239B68FF265442940809090A0000000019503784409771D7113726790000
      00000000000000000000030303040C1B144121573EA043A479E54BB585FA48B7
      87FF3FB380FF37AF7AFF2FAB74FF27A76FFF28A66FFF2AA670FF2D9F6EF3206F
      4DBB051C13480000000000000000000000000000000000000000040505071243
      2E9256AF88EC87D6B2FF83D5AFFF83D5AFFF84D5B1FF86D6B1FF87D7B2FF88D7
      B3FF87D7B2FF86D6B2FF85D6B1FF83D4AFFF82D4AEFF83D4B0FF88D7B3FF52AC
      83E9123D29840202020300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000024312D3539987AB921C694FB18C894FF24C6
      94FB2BAF84DD2B4F445A0606060600000000000000000F10101D135138AF2BA6
      71FE24A56DFF23A46CFF69BE9AFFE8F2EEFFF5F5F5FFEAEAEAFFE1E1E1FFE0E2
      E0FF95C5B0FF339A6FFF6AB395FFD9DDDAFF81B69EFF239A68FF1D9764FF259D
      6AFF319B6DF711201B4C00000000000000001217152123302B3D090A09110000
      000000000000000000000000000001010101090B0A122F413A4E365C4C822667
      4AAF348A64D4389C70DE38A173E531986ADE2A845BD41F6646B5193D2D6C171C
      1A29020202040000000000000000000000000000000000000000000000000D0F
      0E17194531925EBD93F69ADFBEFE92DCBAFF8CD9B7FF8EDAB7FF8FDBB8FF90DB
      B9FF90DBB8FF8FDAB8FF8DDAB7FF8CD9B5FF94DBBAFE9CDFC0FE59B78EF1163F
      2C840C0D0C140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202022E3E394339A886CE3AC89AF92E96
      77B92341394B05050505000000000000000000000000020202020F1D173D329C
      70F13BAE7DFE2AA770FE6BBF9BFEE7F1ECFEF3F3F3FEE8E8E8FEDFDFDFFEDEE0
      DEFED5E3DCFEB6D8C8FECCE1D6FED8DCD8FE81B69EFE249B69FE31A474FE41A7
      7DFA1A6445AC0606060700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040505051214
      13171A211F2F25342D3E2F40394D25342D3E212825301416151A020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303050F221A4A3D8967CB7ECAA7F39EE0C2FFA2E3C4FFA5E5C7FFA7E6
      C8FFA6E5C8FFA4E4C6FFA1E3C4FF9CE0C0FE76C6A2F1398462C30D1D16410202
      0203000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A0D0D0E182A252F0607
      0708000000000000000000000000000000000000000000000000000000000D1B
      15312C5E498E508C73B96A917FB37C827F997F7F7F947E7E7E947E7E7E947E7E
      7E947F7F7F947F807F947F7F7F947C7E7C9475897FA85F977EBE427E65AC1A34
      295E0809080A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001D23213134544672387058AF60A185DA78C19FE783CB
      A9F082CAA8EF77BF9FE660A385DA346A51A63150426C191F1C2A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000A0B0B0C181A191C151817190B0B0B0C0A0A0A0A0A0A0A0A0A0A0A0A0A0A
      0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A121212141B1D1B1F121414160404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040404121413172129253735463E504154
      4C6240544B6034433C4E21282536101111140303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061618181E23302B462D403A5E3549
      426A3549426A2F403A5E222F2A441516151C0505050600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000040504051416141B1F2C28412D3F3A5D3549
      426A3549426A30423B6022312C471719171F0707070800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202031B2421391F41347E03412BBB076141E2096A46EE0A70
      4AF40A704AF40A6A46EE076241E1043F2AB71E3F337B1A222037010101020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010118201E331D3D3177023E28B6066040DF096946ED0A6F
      4AF40A704AF40A6B46EF076241E203422BBD204437851D26233D030303050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000606060C0E0E
      0E1A020202030000000000000001010101020000000302020204020202040101
      0105010101050101010502020204000000030000000301010102000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000505050805191259045136D30C744CF7107E54FF118054FF118154FF1181
      54FF118154FF118154FF108154FF108054FF0E754DF6045236D2051811510505
      0508000000000000000000000000000000000000000000000000000000000000
      00000404040604150F4B034E33CC0B724BF5107E53FF108154FF118154FF1181
      54FF118154FF118154FF108154FF108055FF0D774FF8065437D7061C15620707
      070B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000708070D1114131E1316
      1420131614200E100E1804040404000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090910191919783636
      36A80505052E00000006000000090000000A0000000C0000000F000000100000
      00120000001200000011000000100000000E0000000D0000000A000000080000
      0005000000030000000000000000000000000000000000000000000000000005
      0321043C279C0C734BF6148859FF138558FF128557FF138557FF138557FF1386
      57FF138557FF138557FF138557FF128456FF138658FF148959FF0C734CF6022D
      1E940D0F0E180000000000000000000000000000000000000000000000000D0F
      0E1802291B8E0B704AF3148759FF138658FF128456FF138557FF138557FF1386
      57FF138557FF138557FF138557FF128456FF138557FF14895AFF0E784FFA0541
      2CA6000503220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B241F542C6646FE2C6546FF2D66
      47FF2D6547FF2D6446FD245238D3000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F515A5A5AE55050
      50FE485055CD1325306C040C0E39010405260000001900000018000000190000
      001B0000001B0000001B000000190000001600000015000000120000000E0000
      000B00000007000000040000000000000000000000000000000005050508063E
      299D10794FF2158A5BFF15885AFF15895AFF158A5AFF158A5AFF168A5BFF168B
      5BFF168A5BFF168A5AFF158A5AFF15895AFF158859FF15895AFF168A5BFF0F72
      4BED042D1F93040404060000000000000000000000000000000003030305032A
      1B8B0D704AED15895AFF15885AFF15895AFF15895AFF158A5AFF168A5BFF168B
      5BFF168A5BFF168A5AFF158A5AFF15895AFF158859FF158859FF158A5AFF107A
      50F305432EA60708080C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000002937307D2D6A48FE2C6546FF2D65
      46FF2D6546FF2D6646FF2D6848FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000001414141D3E3E3E8E4F53
      56F958859DFC48A4DCEE2E80B5D1236188B0143C558C0B1F2B5F040C0E3A0000
      00190000001200000012000000110000000E0000000D0000000A000000070000
      000501010102010101010000000000000000000000000101010107191253107B
      50F6178D5DFF168C5CFF168D5CFF178E5DFF178E5DFF178F5DFF188F5EFF188F
      5EFF188F5EFF188F5EFF188F5DFF178E5DFF178D5CFF168D5CFF178C5CFF188F
      5DFF107B51F60518114C0000000000000000000000000000000006160F440E75
      4DF2178D5CFF168C5CFF168D5CFF178E5DFF178E5DFF178F5DFF188F5EFF188F
      5EFF188F5EFF188F5EFF188F5DFF178E5DFF178D5CFF168D5CFF168B5BFF188E
      5EFF118053FA081F166303030305000000000000000000000000000000000000
      0000000000000000000000000000000000002A38317F2E6F4CFE2D6A49FF2E6A
      49FF2E6A49FF2E6C49FF2E6B49FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606137790
      9BCD7CC5E7FE65C8FAFF50BDFBFF3FB1FAFF37AAF7FC349BDDE93C828CC51325
      1D4D000000040000000400000004000000020000000101010101000000000000
      000000000000000000000000000000000000000000001B2220350A5C3CD11B93
      62FE19915FFF19915FFF1A9260FF1E9563FF51AB87FF63B494FF339F71FF1C96
      63FF1B9462FF1B9461FF1B9461FF1A9361FF1A9360FF1A9260FF19905FFF1991
      5FFF1D9563FF0B593DCB19201D310000000000000000151B1829095338C21A93
      61FE19915FFF19915FFF1A925FFF1A9360FF1B9461FF1B9461FF1B9562FF1B95
      62FF1B9562FF1B9561FF1B9461FF1A9361FF1A9360FF1A9260FF19915FFF1990
      5FFF1E9764FF0C6241DA2029263F000000000000000000000000000000000000
      0000000000000000000000000000000000002A39317F317750FE30724DFF3172
      4DFF31724DFF31734DFF30714CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004754
      5A7AAEDDF4F787D5FBFF6ACBFAFF5FC6FAFF4FBDFAFF4FBAEEFF7ACFC2FF74C5
      A0F20F261B490304030600000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505062245377A168759F51B95
      62FF1B9562FF1C9663FF1C9763FF2C9E6EFFA8D5C3FFE9F3EFFFB4DBCAFF66B7
      95FF269C69FF1E9965FF1D9964FF1D9864FF1C9763FF1C9763FF1B9562FF1B94
      62FF1D9663FF178759F42142357403040404020202021C352B68148154EF1C95
      63FE1B9562FF1C9662FF55AE8AFF4CAB84FF279C6AFF1D9964FF1E9A65FF1E9A
      65FF56AF8BFF4BAB84FF269C6AFF1D9864FF1D9763FF1C9763FF1B9562FF1B94
      61FF1C9562FF1A8C5DF8254D3E86080808090000000000000000000000000000
      0000000000000000000000000000000000002B3A317F347C54FE327751FF3378
      51FF337851FF337951FF317650FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F23
      274EB9D4E2E5A9E1FBFF84D4FAFF6CCCFAFF6ACCF5FF83D4D4FF99DFC3FF87D6
      B2FF4B9A77D1213B305504040407000000000000000000000000000000000000
      0000000000000000000000000000000000001416161B0A4D32B61B9663FF1D99
      64FF1D9964FF1E9B65FF1E9B65FF30A372FFB3DBCAFFFEFEFEFFFDFEFDFFE7F3
      EDFF8AC9AEFF37A676FF1F9D67FF1F9C66FF1E9C66FF1E9B66FF1D9A64FF1C99
      64FF1C9863FF219A67FF0B4B32B0121413180D0E0D11083F2AA31B9462FE1D99
      64FF1D9964FF1E9A65FFCCE5DBFFD5EAE2FF93CCB4FF269E6AFF1F9E67FF1F9E
      67FFCCE5DBFFD5EAE1FF93CCB4FF269E6AFF1E9C66FF1E9B66FF1D9A65FF1C99
      64FF1C9863FF219A67FF0D5438C2191B1A210000000000000000000000000000
      0000000000000000000000000000000000002A3B327F358257FE337D54FF347E
      55FF347E55FF348055FF327C53FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0C
      0D2BA0B3BACECAEBFCFF9ADCFBFF8CD7F6FF89D7D5FF77CDA7FF85D4B0FF97DD
      BCFF64C49AFD39916BD107201549000000000000000000000000000000000000
      000000000000000000000000000000000000212E293E177B52DD229E68FF209D
      67FF209E68FF219F69FF21A069FF33A775FFB4DECCFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFDBEEE6FF81C7A9FF31A774FF22A16AFF21A069FF209E68FF209D
      67FF1F9C67FF239F69FF177C51DB1F2B263A191F1D2F136B46D4219D68FF209D
      67FF209E68FF219F69FFE1EFEAFFFFFFFFFFFFFFFFFFD7ECE3FF74C1A1FF34A8
      76FFE1EFEAFFFFFFFFFFFFFFFFFFD3EAE1FF73C1A0FF32A674FF209E68FF209D
      67FF1F9C67FF24A06BFF198357E42839334C00000000080808092032286F2558
      3CBE265A3CBF265A3DBF265B3DBF275C3EBF2D6F4BDE37895BFE368558FF3786
      59FF378659FF378759FF37875AFF275D3FBF265C3EBF265C3EBF265A3DBF265A
      3CBF26593CBF272F2A4200000000000000000000000000000000000000000C0C
      0C0E6371789DDFF3FDFFB4E5F6FF9ADED2FF75CDA7FF69C79DFF63C599FF6DC9
      A0FF83D4AEFF59C092FF36A474F2051D13490303030600000000000000000000
      0000000000000000000000000000000000002F433B581F8B5DEB25A36CFF21A1
      6AFF22A26BFF23A36BFF23A46CFF35AB77FFB4DFCCFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF1F8F5FFA6D8C3FF56B88EFF28A66FFF22A26BFF22A1
      6AFF21A06AFF28A46EFF1F895DE82C3E375225362F471C8358E226A36CFF22A1
      6AFF22A26BFF23A36BFFE2F0EAFFFFFFFFFFFFFFFFFFFEFEFEFFE9F5F0FFAEDB
      C8FFEDF6F2FFFFFFFFFFFFFFFFFFFEFEFEFFE9F5EFFFADDBC7FF4BB287FF27A3
      6EFF22A06AFF27A46EFF219162F0354B4263000000001618181B3D6B52B73684
      58FE378659FF37885AFF388A5BFF388B5CFF398C5DFF388B5CFF388A5CFF388B
      5CFF388B5CFF388C5CFF398D5DFF398C5DFF388B5CFF388B5CFF37895BFF3787
      5AFF37895BFF4A5B517D00000000000000000000000000000000000000000101
      01014A555971B8DFDEF5A0DECDFF9CDFC2FF7ACFA9FF64C499FF5EC195FF59BF
      91FF67C69BFF67C79DFF43B483FF1B7D53D11933285504040407000000000000
      000000000000000000000000000000000000384F4667269667F227A76FFF23A4
      6CFF24A56DFF27A76FFF29A870FF3BAF7CFFB6E0CDFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFCFFCBE8DCFF54B88EFF25A66DFF23A5
      6CFF23A46BFF29A771FF249364F1364C43642D3F3854238D60E929A770FF23A4
      6CFF24A56DFF26A76EFFE2F1EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
      FEFFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFCFE9DEFF71C3
      A0FF2AA670FF28A770FF289A6AF73D564D71000000001B1B1B1F427558BE3687
      5AFE37895BFF378B5CFF388C5CFF388D5DFF398E5EFF398F5EFF39905FFF3991
      5FFF399160FF399160FF399160FF39905FFF398F5FFF398F5EFF388D5DFF388C
      5CFF388E5EFF4C5E548000000000000000000000000000000000000000000000
      00001F24242E639688C16CC89FFE82D3AEFF9BDFBFFF61C398FF58BF91FF53BC
      8DFF4AB888FF51BB8DFF5BC094FF24A16AFD16754DD102181049000000000000
      000000000000000000000000000000000000395047672F9B6CF230AC75FF2DAB
      73FF31AC75FF33AE77FF37AF7AFF46B586FFBAE2D1FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8FCFAFFC4E6D7FF58BB91FF31AC75FF2EAB
      74FF2AA971FF31AC76FF2B9869F0354C42622D3F3852299165E832AC77FF2DAB
      73FF30AC75FF33AD77FFE2F2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFBFFB1DE
      CAFF3CB07DFF30AA76FF309F6FF63D574C6F000000001B1B1B1F45785BBE398F
      5FFE3A9260FF3B9462FF3B9764FF3C9965FF3D9B66FF3D9C66FF3E9D67FF3E9D
      67FF3E9D67FF3E9D67FF3E9D66FF3D9B65FF3C9965FF3C9864FF3B9563FF3A94
      62FF3B9562FF4D60558000000000000000000000000000000000000000000000
      0000000000000D0F0F17488C78C453BA8FFA62C499FF8AD6B3FF5EC296FF48B7
      87FF36AE7AFF2AA870FF32AB76FF4AB687FF27A06CFF198658F219221F4D0606
      060A0000000000000000000000000000000030433C572F976AEA3CB27DFF38B0
      7AFF3BB17CFF3EB37EFF41B482FF50BA8CFFBCE4D3FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCFDFDFFE9F5F0FFA0D9C0FF62C197FF41B482FF3BB17CFF38B0
      7BFF34AE78FF3FB280FF2E9469E72C3E375026362F452A8F64E13DB180FF37B0
      7AFF3BB17CFF3EB27EFFE2F2ECFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFEEF8
      F4FFF7FBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFEDF7F3FFA4DAC2FF5EBE
      94FF37B07AFF3EB280FF339D6FEF354C4361000000001B1B1B1F487B60BE3D99
      65FE3E9B66FF3E9E68FF3E9F68FF3FA069FF3FA069FF3FA16AFF3FA16AFF3FA2
      6AFF3FA16AFF3FA16AFF3FA16AFF3FA069FF3E9F69FF3E9F68FF3E9D67FF3D9C
      66FF3D9C66FF4D61568000000000000000000000000000000000000000000000
      000000000000000000001E262639317460B63FB081F95ABF93FF6EC9A0FF4BB9
      89FF2AA871FF22A36BFF1F9E67FF31A473FF39A878FF55AA88FF9B9C9BD94848
      47640707070B000000000000000000000000212E283B2C8C63DC49B786FF42B5
      82FF46B684FF49B886FF4CBA89FF5ABF93FFC0E5D5FFFEFEFEFFFFFFFFFFFEFE
      FEFFFAFCFBFFCBEADDFF84CEAEFF52BC8EFF4CBA89FF49B987FF46B784FF43B6
      83FF3FB480FF4CB888FF2A825CDA1D262237181F1C2D257B55D148B687FF42B5
      82FF45B684FF48B886FFE3F3ECFFFFFFFFFFFEFEFEFFFCFDFDFFD3EDE1FF8DD2
      B4FFE6F4EEFFFFFFFFFFFEFEFEFFFCFDFDFFD3EDE1FF87CFAFFF4DB989FF43B6
      83FF3FB480FF4AB888FF319569E22738314700000000191A1A1D497C62BA44A1
      6CFD44A26EFE45A46FFE45A56FFE46A670FE46A671FE43A46EFE41A56DFF42A6
      6DFF42A56DFF42A56DFF43A66EFF45A570FE44A46FFE44A46EFE42A26CFE41A1
      6BFE41A16BFE4D61567F00000000000000000000000000000000000000000000
      00000000000000000000020202021B252439287C64C426A06CFE49B384FF67C6
      9DFF25A46DFF209F67FF1C9A63FF1A9360FF3FA47AFFAFD2C4FFC5C4C4FEA4A3
      A3DC30302F5C000000000000000000000000121313171A5D3FAF54BB8EFF4FBB
      8CFF52BC8DFF55BE90FF58C092FF65C59BFFC4E8D9FFFEFEFEFFF8FCFAFFD8F0
      E5FF8CD2B3FF60C397FF5CC296FF5AC194FF58C093FF56BF91FF52BD8EFF4FBC
      8CFF4DBA8AFF59BE93FF17593DA80F1110140C0D0D10144D34A053B88DFD4FBC
      8CFF52BC8DFF55BE8FFFE3F3ECFFF9FCFBFFDFF2EAFF91D4B7FF65C59BFF5EC3
      97FFE4F3EDFFF8FCFAFFDDF1E8FF90D3B6FF5EC196FF56BF91FF53BD8EFF4FBC
      8DFF4CBA8AFF5ABF92FF1E6547BC1719181E000000000405050519281F502046
      319322473294224734942248349423483494397152C857B07FFE4CAC76FF4CAC
      76FF4CAC76FF4FAD78FF55A97BFF2248349422483494204831941F4631941E46
      30941E452F942023212F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A0E0E17196F57C41C9262FA2F9F
      70FF55BA8EFF2AA16EFF199360FF349A70FFA2CBBAFFEAEBEAFFD3D3D3FFD4D4
      D4FFC9C9C9FA20232B53030304060000000004040404274D3D744AAE83F45FC3
      97FF5CC194FF5FC396FF62C599FF69C89EFFB3E2CDFFDEF2E9FFB1E1CCFF81D0
      ACFF68C89EFF67C89DFF66C79CFF64C69AFF62C599FF60C498FF5CC295FF59C1
      93FF63C59AFF49AE82F3254A3B6F03030303010101011F3B2E6343A67CED61C3
      97FE5CC194FF5FC396FFAFE0CAFFB2E1CCFF85D1AFFF67C79DFF68C89EFF68C8
      9EFFB4E2CDFFB2E2CCFF84D0AEFF65C69BFF63C59AFF60C498FF5DC295FF5AC1
      93FF60C397FF51B589F72C574581060606070000000000000000010101020505
      05090506060A0506060A0506060A0506060A263D308361B588FE56B180FF56B1
      80FF56B180FF59B282FF57A97CFF0506060A0506060A0506060A0506060A0506
      060A0506060A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018232339115B48B61687
      5BF9319D70FF3FAA7CFF349D71FF9CC5B5FFD6DBD9FFD2D2D1FFD2D2D2FFD5D5
      D5FFC8C8C9FF3F5690D2171F375405050606000000001B232032227A54CB73CC
      A4FE67C79DFF68C89DFF6CC99FFF6DCAA1FF7ED0ACFF88D3B3FF75CDA6FF72CD
      A4FF72CDA4FF71CCA3FF70CCA3FF6DCAA1FF6CC9A0FF69C99EFF66C69BFF67C7
      9DFF76CDA6FF227652C7171F1C2C0000000000000000141A17251D714CBE70C9
      A1FD69C79EFF68C79CFF71CBA3FF71CBA3FF6FCBA1FF70CCA3FF71CDA4FF72CD
      A4FF78CEA8FF75CDA6FF70CBA2FF6DCBA1FF6CCAA0FF6AC99EFF66C69BFF66C6
      9CFF78CFA8FF28835AD41F29253B000000000000000000000000000000000000
      00000000000000000000000000000000000032473B7F6BBA90FE60B687FF60B6
      88FF60B688FF63B78AFF5DAE83FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020202172222391062
      4DC4107F53FE459E7AFFA1C8B8FFDADCDBFFD2D1D1FFD8D8D8FFD0CFCFFFCBCB
      CCFFC3CAD8FF204AAEFD092473C116181E270000000000000000091F164A4AB1
      84F47ACFA9FF76CEA7FF77CFA8FF78D0A9FF7AD1AAFF7CD1ACFF7DD2ADFF7DD2
      ADFF7DD2ADFF7CD1ACFF7BD1ABFF78D0A9FF77CFA8FF74CEA7FF76CEA6FF7CD2
      ABFF47AF81F2091D154500000000000000000000000000000000111E183A42A9
      7CED78CFA9FF77CFA7FF76CFA8FF78CFA9FF7AD0AAFF7CD1ABFF7DD2ACFF7DD2
      ADFF7DD2ADFF7CD1ACFF7BD1ABFF78D0A9FF77CFA8FF74CEA7FF75CEA6FF7ED3
      ACFF4FB589F60D271B5A02020203000000000000000000000000000000000000
      00000000000000000000000000000000000034483D7F76C09AFE6BBC92FF6CBC
      92FF6BBC92FF6EBD94FF65B38BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0D
      0E1754716AC4B5BDC0FAE8E8E9FFDADADAFFD0D0D0FFD3D3D3FFC3C3C2FFBBC3
      D1FF5073BEFF1038A9FF0A2681D21A1D26320000000000000000030303051342
      2D9056AF88EC87D6B2FF84D5B0FF83D5AFFF84D5B0FF86D6B1FF87D7B2FF88D7
      B3FF87D7B2FF86D6B2FF85D6B1FF83D4AFFF82D4AEFF83D4B0FF8AD8B4FF58B1
      89EC13402D8B0303030500000000000000000000000000000000020202031039
      277D4DA680E585D5B1FF84D5B0FF82D4AFFF84D5B0FF86D5B1FF87D6B2FF88D7
      B3FF87D7B2FF86D6B2FF86D6B1FF83D4AFFF82D4AEFF82D4AFFF8AD7B4FF62BD
      94F2184F369A0606060900000000000000000000000000000000000000000000
      000000000000000000000000000000000000344A3E7F80C4A2FE75C099FF76C1
      9AFF75C19AFF77C19CFF6BB790FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242425396E6E76B6C6C6CCF9E1E1E1FFD9D9D9FFC9C9C9FFB2BAC8FF6688
      C4FF2050B5FF0E319FF60614488F090A0B0F0000000000000000000000000D0F
      0E171742318D5DBA91F39BE0BFFE93DCBAFF8CD9B6FF8EDAB7FF8FDBB8FF90DB
      B9FF90DBB8FF8FDAB8FF8EDAB7FF8CD9B5FF94DCBBFF9CDFC0FE5BB98FF21743
      2F8B0D0F0E170000000000000000000000000000000000000000000000000A0B
      0B11123B297E54B389EE97DDBCFE94DCBAFE8DDAB6FF8EDAB7FF8FDBB8FF90DB
      B9FF90DBB8FF8FDAB8FF8EDAB7FF8CD9B5FF92DCBAFF9DE0C0FE62C095F61D52
      3A9B0105031E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000344A3D7E89C7A9FD7DC49FFE7FC4
      A0FE7FC4A0FE80C4A2FE71BA93FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020224242639787885C4D4D4D6FEE0E0E0FFD6DAE0FF5981C3FF2963
      BFFF1A50B5FE08206DBB10121A2B000000000000000000000000000000000000
      0000030303050F221A4A3A8866C97DC9A6F39DE0C1FFA2E4C5FFA5E5C7FFA7E6
      C8FFA6E5C7FFA4E4C6FFA2E3C5FF9DE1C0FF7CCAA6F33B8765C70E1F17440303
      0305000000000000000000000000000000000000000000000000000000000000
      000001010102131F193A368160C074C39FEE9BDFBEFEA1E3C4FFA5E5C6FFA7E6
      C8FFA6E5C8FFA5E5C7FFA3E4C6FF9EE1C2FF81CDAAF5408D6BCE10251B500405
      0507000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000171B192E567E69A35D8570A95D85
      70A95B856EA95A826CA73A5F4C82000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0F0F17676F85BE7691C3FA4478C6FF2D74CAFF1F59
      B6F80A2674C3090A0E1700000000000000000000000000000000000000000000
      000000000000000000001A211E2D3251446F386D54AB60A185DA78C09FE682CA
      A8EF82CAA9EF78C19FE760A385DA356A52A73252446E1A1F1E2C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000171D1A272E4C3F67336950A55C9E80D675BE9BE481C9
      A8EE83CBAAF079C2A0E769B291DB3A7158AF365748751F252334010101020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F100F11111212141112
      1214111212141012101308080809000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1E243716326CB22E61B6F31A489FE6091E
      539D13151F320000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303121212162129253734453D4F4054
      4B6040544B6035463E5021292637101111140303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303030E1010131E25213232413A4B3E51
      495E41544C6236473E5126322C39131514180404040400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202021B1D212A384056682B2F41531010
      1319000000000000000000000000000000000000000000000000050505061E1E
      1E23101010130101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909091E1E1E232C2C2C391E1E1E23080808080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061516151C222E2A442D3F3A5D3549
      426A3549426A30423B6022312C471618181E0606060700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505061516151C1F2C28412D3F3A5D3549
      426A3549426A30423B6022312C471618181E0606060700000000000000000000
      0000000000000000000000000000000000000000000013131318272727703939
      39C5252525971313132D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000039434052353736483D3D3D5A3030303F151515170202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101021B221F361E3F337A043E2AB7076141E1096A46ED0A70
      4AF40A704AF40A6B46EF076241E203422ABC1F4236811C25223B020202030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010219211F351E3F337A043E2AB7066140DF096A46ED0A6F
      4AF40A704AF40A6B46EF076241E203422ABC1F4236811C25223B020202030000
      0000000000000000000000000000000000000909090B1C1C1C7B313131EC3E3E
      3EFE262626F7090909B50404040C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D0E328060D5455B528F4343436E3D3D3D5A2323232B0A0A
      0A0A000000000000000001010101010101010101010101010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000505050805181251045036D20B734CF5117E54FF108154FF118154FF1181
      54FF118154FF118154FF118154FF0F7E53FF0D754EF7055236D4051A125A0606
      0609000000000000000000000000000000000000000000000000000000000000
      00000505050805181251044F34D00B734CF5117E54FF108154FF118154FF1181
      54FF118154FF118154FF118154FF0F7E53FF0D754EF7055236D4051A135D0707
      070B0000000000000000000000000000000029292945323232E1545454FF7676
      76FF555555FF262626FF040404B41111112C0101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020202445E5278188D5DFE30795AD8474E4B8A4343436F363636491A1A
      1A1D020202024558516833A472F33A9F73E63D9C73DE3D9C73DE4D70608B0000
      0000000000000000000000000000000000000000000000000000000000000D0F
      0E18012B1C930C734CF6148959FF138658FF128456FF128456FF138557FF1385
      57FF138557FF138557FF138557FF128557FF128557FF148859FF0D754DF8033E
      29A0000503220000000000000000000000000000000000000000000000000D0F
      0E18012B1C930C734CF6148959FF138658FF128456FF128456FF138557FF1385
      57FF138557FF138557FF138557FF128557FF128557FF148859FF0D754DF8033E
      29A0000503220000000000000000000000002222223B2C2C2CD54F4F4FFF7474
      74FF727272FF4E4E4EFF181818F7030303A81010102D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1D1B1F388062C7188D5DFE1C8B5CF9426254B0454545783F3F3F602A2A
      2A340A0A0A0A3037353D3E9874D74D8169A6363E3A443138353E212523270000
      000000000000000000000000000000000000000000000000000004040406022C
      1E910D704AED158A5BFF158959FF148859FF15895AFF15895AFF168A5AFF168A
      5BFF168A5BFF168A5BFF168A5BFF158A5AFF15895AFF15895AFF158A5AFF1078
      50F3063F2A9E060606090000000000000000000000000000000004040406022C
      1E910D714AED158A5BFF158959FF148859FF15895AFF15895AFF158A5AFF168A
      5BFF168A5BFF168A5BFF168A5BFF158A5AFF15895AFF15895AFF158A5AFF107A
      50F306422CA10707070B00000000000000000909090D0D0D0D7C333333F05454
      54FE6F6F6FFF707070FF393939FF141414F7040404B50404040B000000000000
      0000000000000101010101010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000040514A63238A5FEF188E5DFF188E5DFF27825BEA47494881434343713737
      374D171717190808080843575264409A72DC3B433E4B00000000000000000000
      00000000000000000000000000000000000000000000000000000518104B107A
      50F4188E5DFF168B5CFF168C5BFF178D5CFF178E5DFF178E5DFF188F5EFF188F
      5EFF188F5EFF188F5EFF188F5EFF178E5DFF178E5DFF178D5DFF168C5CFF178D
      5DFF107B51F6071C145B020202030000000000000000000000000518104B107A
      50F4188E5DFF168B5CFF168C5BFF178D5CFF178E5DFF178E5DFF188F5EFF188F
      5EFF188F5EFF188F5EFF188F5EFF178E5DFF178E5DFF178D5DFF168C5CFF168D
      5DFF127D52F8061D165E020202030000000000000000040404060909095E2626
      26F0404040FF616161FF666666FF3B3B3BFF141414FF020905B7000D08620025
      188A015036CF025E3EF0036744FF05593BD603422BA9021A106A0508071C0303
      0303000000000000000000000000000000000000000000000000000000001B1C
      1B1E3D7B62BA188E5DFF188E5DFF188E5DFF188E5DFF3E6756B94647467C4242
      42682A2A2A340E0E0E0F000000004B6F6188459371CA3237343C000000000000
      00000000000000000000000000000000000000000000171D1B2D0A583AC91D94
      63FE1A915FFF19905EFF19915FFF1A9260FF1A9360FF1A9461FF1B9461FF1B95
      62FF1B9562FF1B9562FF1B9561FF1B9461FF1A9361FF1A9360FF19925FFF1991
      5FFF1B9562FF0C5E3DD21B2320360000000000000000171D1B2D0A583AC91D94
      63FE1A9160FF19905EFF19915FFF1A9260FF1A9360FF1A9461FF1B9461FF1B95
      62FF239766FF4FAA85FF8DC6AFFF53AB88FF1A9361FF1A9360FF19925FFF1991
      5FFF1A9561FF0C5E3ED31D252239000000000000000000000000040404070303
      037D1B1B1BE5373737FF5D5D5DFF595A5AFF293631FF023D29F9025639EE0568
      45FB137852FE1C815AFF1E855CFF178358FF107F53FE0E764DF2084931B11525
      1F4F0506050A0000000000000000000000000000000000000000000000003A46
      4153218A5FF1188E5DFF188E5DFF188E5DFF188E5DFF28815CE746524D914545
      45743838384E1D1D1D21050505051718181A4B836FAA518C6EBA101110110000
      000000000000000000000000000000000000030404041F413371178659F31D96
      63FF1B9461FF1B9562FF1C9662FF1C9763FF1D9864FF239B68FF45A87EFF5FB3
      90FF1D9964FF1E9A65FF1E9965FF239B68FF46A880FF5DB18FFF1C9663FF1B95
      62FF1B9662FF17895AF62346377B05050506030303032040326F178659F31D96
      63FF1B9461FF1B9562FF1C9662FF1C9763FF1D9864FF1D9864FF1F9965FF36A3
      75FF8FC9B1FFD5EAE2FFFAFCFBFF8CC7AFFF1C9662FF1D9864FF1C9663FF1B95
      62FF1B9662FF17895AF72348397F060606070000000000000000000000000909
      09100202027E191919F0343434FE43534EFF1A5B45FF046744FF117450FF4098
      75FF459978FF409373FF3E9271FF32916CFF31986EFF1E8E60FF148759FD106F
      48D8031F145C0000000000000000000000000000000000000000000000003F78
      62B4188E5DFF188E5DFF188E5DFF188E5DFF188E5DFF1A8B5CFA3F6A58B64446
      45723F3F3F603E45435A4B816AAA478F71C13E9C74DD2FA671F94E5B516A0000
      000000000000000000000000000000000000111212160A4931AC209966FF1C97
      63FF1C9864FF1D9964FF1D9A65FF1E9B66FF229C68FF83C5AAFFCEE7DCFFE7F3
      EEFF1E9B65FF1F9E67FF229D68FF82C4A9FFCEE7DDFFE7F2EEFF1D9864FF1D9A
      64FF1D9964FF1C9863FF0A4E33B71516151C111212160A4730AB209966FF1C97
      63FF1C9864FF1D9964FF1D9A65FF1E9B66FF1F9C66FF229D68FF59B38DFFB8DD
      CEFFF6FAF9FFFFFFFFFFFFFFFFFF8ECAB1FF1D9A65FF1E9C66FF1E9B65FF1D9A
      64FF1D9964FF1C9763FF0C4F34B91518161D0000000000000000000000000000
      0000040404060505055E0F1C18F0084C35FF036844FF2B8663FF68AB91FF87B4
      A4FFC8D6D1FFE8EAE9FFEDEDEDFFD9E0DEFF98BCB0FF5BA588FF1F9162FF1992
      5FFF198F5DFA0E1D173F020202020000000000000000000000002B323038188D
      5CFD188E5DFF188E5DFF188E5DFF188E5DFF188E5DFF188E5DFF27865EE8444F
      4B733C3C3C563E42415B45554F6E42534C6340514A5E40514A5E2A2D2A300000
      0000000000000000000000000000000000001D25223715714ADA239F6AFF1F9C
      67FF209D67FF209E68FF2EA471FF68BD99FFCAE6DBFFFEFEFEFFFFFFFFFFFFFF
      FFFF2EA471FF6ABE9BFFCDE8DDFFFEFEFEFFFFFFFFFFFFFFFFFF209D68FF209E
      68FF209D68FF229E68FF177D53DF22312B411C24213614704BD924A06AFF1F9C
      67FF1F9D67FF209E68FF209F68FF25A26CFF45AE82FFB2DBCAFFF4F9F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF90CDB3FF209F68FF21A06AFF219F69FF209E
      68FF209D68FF219E68FF177E54E124332D440000000000000000000000000000
      00000000000004040407002C1FB5046240FF21805CFF68A991FFA9C5BBFFDFE4
      E2FFEFEFEFFFF1F1F1FFEFEFEFFFEEEEEEFFEAECEBFFCEDBD7FF53A082FF1F93
      63FF1C9863FF12593BB111151320000000000000000007070707436E5E9C188D
      5DFE1C8B5DF72C8662E0188D5DFE188D5DFE2C7E5DDF198C5CFC188E5DFF4173
      5FAE2A2A2A332F2F2F3E2626262E0B0B0B0C0000000000000000000000000000
      0000000000000000000000000000000000002A3C354F1E875BE628A46EFF21A0
      69FF25A36CFF43AF82FFA4D7C1FFE4F3ECFFFDFEFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFA4D6C1FFE4F3ECFFFDFEFDFFFFFFFFFFFFFFFFFFFFFFFFFF22A16AFF22A2
      6BFF22A16AFF26A26CFF208C5EEC31443D5B293A344D1F875BE529A56FFF21A0
      69FF22A16AFF22A26BFF33A975FF77C5A4FFC9E7DAFFFCFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF91CFB4FF23A36BFF24A46CFF23A36BFF22A2
      6BFF22A16AFF25A26CFF218D5FED32463E5D0000000000000000000000000000
      00000000000000020003005236DB0E714DFF4E9F80FFA0BFB4FFE3E6E5FFF0F0
      F0FFF2F2F2FFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFBFD4CCFF439D
      78FF1B9763FF259163EA31453D5800000000000000002C302F37318562D9218A
      5FF245685A924460557F188D5DFE188D5DFE445E549E416759AD24875EEE1F8B
      5EF52F34323C1B1B1B1F1D1D1D210D0D0D0E0101010100000000000000000000
      0000000000000000000000000000000000003349405F239162EE29A770FF25A5
      6DFF63BD96FFC5E5D8FFFBFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF26A66EFF25A6
      6EFF23A56CFF28A66FFF289668F3394F466930443C59239062EB2AA871FF22A4
      6BFF23A46BFF25A56DFF75C5A3FFE9F5EFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF94D1B6FF29A870FF29A970FF27A76FFF25A6
      6EFF23A56CFF27A66EFF279767F43951476A0000000000000000000000000000
      000000000000111B1942026642FE288662FF6BA891FFE9E9E9FFF0F0F0FFF3F3
      F3FFEDEDEDFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF5F5F5FFF8F9F9FF95C0
      B0FF229464FF2CA470FF2E675097090A0A0B0808080845685A89318562D73741
      3C4E0808080839454052188D5DFE188E5DFF465C539A404040613B413F554275
      60A9427360A41111111208080808050505050000000000000000000000000000
      000000000000000000000000000000000000344A405F2A9669EE32AC77FF34AD
      78FFA0D7BFFFF7FBFAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF31AC76FF31AD
      76FF2EAB74FF31AC75FF2F9B6DF23951476831453D592A9467EB32AC77FF29A9
      71FF2DAA72FF31AC75FF5ABC92FFBEE3D4FFF3F9F7FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF98D5BAFF36AE79FF37B07AFF34AE77FF31AD
      76FF2EAB74FF30AB75FF2F9C6DF3395147680000000000000000000000000000
      0000000000001B2F286F056B46FE37906DFF91BAABFFECECECFFF2F2F2FFEFEF
      EFFFEDEDEDFFEDEDEDFFEEEEEEFFF0F0F0FFF7F7F7FFFDFDFDFFFEFEFEFFBED7
      CEFF31966DFF2DA771FF3F8165B41617171A20212025456759882F34323C0101
      010100000000363F3B49188D5DFE188E5DFF455E549D40404061282828311414
      14163E4F4860272A282F01010101000000000000000000000000000000000000
      0000000000000000000000000000000000002A3C354D2E9468E53FB380FF35AF
      78FF56BB8FFF9DD7BEFFE8F5EFFFFCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE8F5F0FFFCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BB17DFF3CB2
      7DFF38B07BFF3DB27DFF30986BEA30443C58293B324B2D9267E43FB280FF34AE
      78FF38AF7AFF3BB17CFF40B381FF59BD92FF94D4B8FFE1F2EBFFFAFCFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF9CD7BDFF40B381FF42B582FF3EB37EFF3CB2
      7DFF38B07BFF3DB27DFF31996DEC32473E5B0000000000000000000000000000
      0000000000001F362E7F076E48FE459A78FFA1C3B7FFEDEDEDFFF2F2F2FFEDED
      EDFFEDEDEDFFEEEEEEFFEFEFEFFFF6F6F6FFFDFDFDFFFFFFFFFFFEFEFEFFD0E0
      DAFF379670FF2FA973FF468C6EBF1B1E1C2013141415181A181B010101010000
      00000000000031393540188D5DFE188E5DFF445F54A040404062292929320A0A
      0A0A40524C64447A62B2202221240000000000000000272A2A2F3E7D63B93D4A
      4357000000000000000000000000000000001D25223629815AD94AB887FF3EB3
      7EFF42B481FF4BB888FF7ECCABFFC9E9DBFFFAFCFBFFFEFEFEFFFFFFFFFFFFFF
      FFFF82CDACFFCCEADCFFFAFCFBFFFEFEFEFFFFFFFFFFFFFFFFFF46B785FF46B7
      85FF43B683FF48B786FF2D8F65DE23302B3F1B231F32287F59D64BB888FF3EB3
      7EFF42B482FF46B684FF49B887FF4BB988FF4FBB8CFF78CBA7FFBEE5D4FFF7FB
      FAFFFEFEFEFFFEFEFEFFFFFFFFFFA1D9C1FF4AB988FF4CBA89FF49B886FF46B7
      85FF43B683FF49B786FF2F9167DF24332D410000000000000000000000000000
      0000000000001E342C7A08714AFE37936FFF97BEAFFFEFEFEFFFF1F1F1FFEDED
      EDFFEEEEEEFFEFEFEFFFF3F3F3FFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFC9DD
      D5FF35966FFF34AC77FF4B8D71BC191C1B1E0000000000000000000000000000
      0000000000002C302F37188D5DFE188E5DFF436155A5414141642B2B2B350B0B
      0B0C2E35343B2A8963E448584E6C1C1E1D201C1E1D20456C6092338762DD3336
      343E000000000000000000000000000000000E100E1316573BA658BC90FE4CBA
      8AFF4EBA8BFF52BC8EFF55BE91FF5BC194FF87D1B0FFD8EFE6FFF7FBFAFFFDFE
      FEFF5AC094FF61C398FF8CD3B4FFD8EFE6FFF7FBFAFFFCFEFDFF53BD8EFF53BD
      8FFF4FBC8CFF55BD8FFF1A5F42B3131414190E100E1316573BA657BC8FFE4CBA
      8AFF4EBA8BFF52BC8DFF55BE91FF57BF92FF59C193FF5CC195FF5EC296FF7CCD
      A9FFD1ECE0FFF3FAF6FFFEFEFEFFA8DCC5FF57BF92FF58C093FF55BE90FF53BD
      8FFF4FBC8CFF56BC90FF1D6243B61416161B0000000000000000000000000000
      0000000000001625215808704AFE288B64FF73AD98FFEEEEEEFFF1F1F1FFEEEE
      EEFFEEEEEEFFF0F0F0FFF8F8F8FFFEFEFEFFFFFFFFFFFFFFFFFFFAFBFBFFA8CA
      BEFF2A966AFF3EB27EFF437B63A50F1110120000000000000000000000000000
      0000000000002528282D188D5DFE188E5DFF436557AA414141652C2C2C370B0B
      0B0C171818193F7B68B22F8762DB3C7F64BF3C7F64BF288961E6417B62B30D0E
      0D0E00000000000000000000000000000000020202022448396C48AC80F164C5
      9AFF59BF92FF5CC194FF5FC397FF61C498FF64C69AFF80CFACFFADDFC9FFC0E7
      D6FF66C69CFF68C89EFF68C89EFF7ECFACFFACDFC8FFBBE5D2FF5EC296FF5DC2
      95FF5EC396FF4BB084F4284F3F7704050505020202022447386A45A97EEF62C3
      98FE59BF92FF5CC194FF5FC397FF61C498FF63C69AFF66C69CFF67C79DFF67C7
      9DFF7BCDA9FFA6DDC4FFCEECDEFF96D7BAFF63C599FF62C59AFF5FC397FF5DC2
      95FF5EC396FF4EB287F52A514079040505050000000000000000000000000000
      000000000000070C0B1F076C48FD1B865BFF3D9572FFDAE1DEFFF0F0F0FFEEEE
      EEFFEFEFEFFFF1F1F1FFFAFAFAFFFEFEFEFFFEFEFEFFFEFEFEFFECF1F0FF72B0
      99FF219967FF4BB486FA2B4F407F030303030000000000000000000000000000
      00000000000020212025188D5DFE188E5DFF416758AF414141662D2D2D380B0B
      0B0D04040404445F5679258B60EC38403C494158506D288963E6475A506F0000
      00000000000000000000000000000000000000000000171E1B2B207550C475CC
      A4FE67C79CFF65C69BFF69C89EFF6BC99FFF6DCAA0FF70CBA2FF74CDA5FF78CF
      A8FF72CDA4FF72CDA4FF71CCA4FF6FCBA2FF71CBA3FF72CBA3FF69C89DFF68C7
      9DFF73CDA5FF247B56CC1B231F320000000000000000161C1A291E734EC175CC
      A6FE67C79DFF65C69BFF69C89EFF6BC99FFF6DCAA0FF70CBA2FF71CCA3FF72CD
      A4FF72CDA4FF74CDA5FF7CCFABFF74CDA6FF6ECAA1FF6CCAA0FF69C89DFF67C7
      9CFF75CDA5FF267E57CF1C242134000000000000000000000000000000000000
      00000000000000000000033C28A50E7950FB2A9669FF61A28BFFD0DCD7FFEEEE
      EEFFEFEFEFFFF3F3F3FFFDFDFDFFFEFEFEFFFCFCFCFFF5F7F6FF87B8A6FF2894
      68FF31A975FF4E9979D21F292536000000000000000000000000000000000000
      000000000000191A1A1C188D5DFE188E5DFF406A58B4414141672D2D2D3A0E0E
      0E0F000000002A2E2E34318665D8363B3643435C5373278960E9181A181B0000
      0000000000000000000000000000000000000000000000000000081C134346AD
      7FF07CD1AAFF75CEA7FF74CDA6FF76CEA7FF78D0A9FF7AD0ABFF7BD1ACFF7DD2
      ADFF7DD2ADFF7DD2ADFF7CD2ACFF7AD1ABFF79D0AAFF77CFA8FF77CEA7FF7AD0
      A9FF4BB285F50A1F164B00000000000000000000000000000000081B134145AC
      7FF07CD1AAFF75CEA7FF74CDA6FF76CEA7FF78D0A9FF7AD0ABFF7BD1ACFF7DD2
      ADFF7DD2ADFF7DD2ADFF7CD2ACFF7AD1ABFF79D0AAFF77CFA8FF77CEA7FF7AD0
      A9FF4DB487F60B22185101010102000000000000000000000000000000000000
      00000000000000000000000D0946085E3DD6138658FF2B9469FF64A88FFFB4CD
      C5FFE3E8E7FFF1F2F1FFF9F9F9FFF2F4F3FFD2E1DBFF91BDADFF289267FF2EA5
      72FF5BBE93FD24483779090A0A0C000000000000000000000000000000000000
      00000000000012121213188D5DFE188E5DFF3F6B59B7414141652D2D2D3A0E0E
      0E0F000000000A0B0B0B407A65B14A7461A1427764A7427C63B4010101010000
      000000000000000000000000000000000000000000000000000003030304133E
      2C8857B088EC88D7B3FF83D4AFFF81D3AEFF82D4AFFF85D5B1FF86D6B2FF87D7
      B2FF87D7B3FF87D7B2FF87D6B2FF85D5B1FF84D5B0FF84D5B0FF88D6B2FF56B0
      88EC13422D90040404060000000000000000000000000000000002020203123D
      2A8555AE87EA88D7B2FF83D4AFFF81D3AEFF82D4AFFF85D5B1FF86D6B2FF87D7
      B2FF87D7B3FF87D7B2FF87D6B2FF85D5B1FF84D5B0FF84D5B0FF88D6B2FF57B0
      88EC13452E920405050700000000000000000000000000000000000000000000
      0000000000000000000005060509002016760F794EF0178C5CFE1E9262FF3498
      6FFF67A78FFF83B0A1FF8EB5A8FF6EA994FF469878FF239264FF29A36FFE55BA
      8FFD3F8C6BC50406051200000000000000000000000000000000000000000000
      0000000000000B0C0C0C188D5DFE188E5DFF3F6F5CB4393939502727272F0A0A
      0A0B00000000000000003F514C62258A5FEC2C8761E246514962000000000000
      0000000000000000000000000000000000000000000000000000000000000E0F
      0E1716412E885AB88FF19BE0BFFE94DCBBFF8BD9B5FF8DD9B7FF8EDAB8FF8FDB
      B8FF90DBB9FF90DBB8FF8FDBB8FF8DD9B7FF93DCBAFF9BDFBFFE5EBC93F51844
      32900D0F0E170000000000000000000000000000000000000000000000000C0E
      0D15153F2D8558B78DF19BE0BFFE94DCBBFF8BD9B5FF8DD9B7FF8EDAB8FF8FDB
      B8FF90DBB9FF90DBB8FF8FDBB8FF8DD9B7FF93DCBAFF9BDFBFFE5EBC93F51844
      32900D0F0E170000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040406041711550F724BDD198F5FFB1E96
      63FF1D9964FF1D9964FF1D9965FF1E9D67FF2AA670FF3BB07CFF54A883EA2050
      3C930609071C0000000000000000000000000000000000000000000000000000
      00000000000000000000188D5CFD188E5DFF43715EA51B1B1B1F101010110303
      030300000000000000000D0E0E0E318563D5427E63BE21232327000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030303040D1E1743398463C47AC8A4F29BDFBFFEA2E3C4FFA5E5C7FFA6E5
      C8FFA6E6C8FFA5E5C6FFA2E3C4FF9DE0C1FF7ECAA7F33C8867C90E22194B0303
      0305000000000000000000000000000000000000000000000000000000000000
      0000010101020D1E1740398463C479C7A3F29CDFBFFEA2E3C4FFA5E5C7FFA6E5
      C8FFA6E6C8FFA5E5C6FFA2E3C4FF9DE0C1FF7ECAA8F33C8867C90E22194B0303
      0305000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202031B2C2648073A2899166B
      49D2289166EE31A070F939A979FF3CA276F03B936EE02F6F53BC1730255E0D0F
      0E18000000000000000000000000000000000000000000000000000000000000
      00000000000000000000328563D5358463D04563578205050505020202020000
      00000000000000000000000000002B302F36272A282F07070707000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000019201D2B3150426C336951A560A385DA78C09FE682CA
      A9EF82CAA8EF78C19FE760A385DA376E56AC3251446F1B211F2E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000019201D2B3150426C336951A55FA385DA77BF9EE582CA
      A9EF82CAA8EF78C19FE760A385DA376E56AC335246711B211F2E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0D0D101D24
      21323549405F455D53754F675D7F3C4E476328342F45171A1920000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002327252B222524281616161800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303030E1010132129263734453E4F4054
      4B6040544B6035463E5021292637121212160303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030303030E1010132128253633433C4D4054
      4B6040544B6035463E5021292637121212160404040400000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FE007FFFFFFF000000000000F8001FFF
      FFFF000000000000F0000FFFFFFF000000000000E00007FFFFFF000000000000
      C00003FFFFFF000000000000800001F8000F000000000000800001F0000F0000
      00000000000000E00003000000000000000000C00003000000000000000000C0
      0003000000000000000000C00003000000000000000000C00003000000000000
      000000C00003000000000000000000C00003000000000000000000C000030000
      00000000000000E00003000000000000000000F8000F000000000000800001FE
      007F000000000000C00003FE007F000000000000C00003FE007F000000000000
      E00007FE007F000000000000F0000FFFFFFF000000000000FC003FFFFFFF0000
      00000000FE007FFFFFFF000000000000FE007FFFFFFFFFFFBFFFFFFFF8001FFF
      FFFFE00007FFFFFFF0000FFFFFFFC00007FFFFFFE00007800001800003FFFF0F
      C00003000000800001FFFF07800003800001800001000303800001FC01FF8000
      010003C1000000FC01FF8000010003C0000000F801FF8000010003C0000000E0
      007F800001000FC0000000E0007F800001000FC0000000C0003F800001000FC0
      000000C0003F800001000100000000C0001F800001000000000000E0600F8000
      01000000000000F0F007800001000000000000FBF003800001000001800001FF
      F803800001000001800003FFFC018000011C0007C00003FFFE018000031E0007
      E00007FFFE03800003FFC01FF0000FFFFF8FE00007FFFFFFFC003FFFFFFFF000
      0FFFFFFFFE007FFFFFFFFFFFFFFFFFFFFE007FFE007FFFFFFFFFFFFFF8001FF8
      001FFFFFFFC4001FF0000FF0000FFF81FF800007E00007E00007FF01FF800003
      C00003C00003FF01FF800003800003C00001FF01FFC0003F800001800001FF01
      FFE003FF000000000000FF01FFE001FF000000000000FF01FFE001FF00000000
      0000800003E0007F000000000000800003E0003F000000000000800003F0003F
      000000000000800003F8000F000000000000800003FC00070000000000008000
      03FC0007000000000000800003FF0001000000000000C00007FF800080000180
      0001FF01FFFF8000C00003C00001FF01FFFFE000C00003C00003FF01FFFFF000
      E00007E00007FF01FFFFF001F0000FF0000FFF01FFFFFC03FC003FFC001FFF81
      FFFFFE07FE007FFE007FFFFFFFFFFE0FC3FFFFFC1FFFFE007FFE007F83FFFFFC
      0FFFF8001FF8001F01FFFFF80C3FF0000FF0000F007FFFF0001FE00007E00007
      007FFFF0001FC00003C000030039FFF0007FC00001C0000180000FE0023F8000
      01800001C00007E0001F000000000000E00007E0001F000000000000F00001C0
      001F000000000000F800018000FF000000000000F8000180007F000000000000
      F800000000FF000000000000F800000801FF000000000000F8000018018F0000
      00000000F80000F8000F000000000000F80000F8000F000000000000F80000F8
      001F800001800001FC0001F8081FC00003C00001FC0001F8081FC00003C00003
      FC0003F80C3FE00007E00007FE0007FC0C3FF0000FF0000FFF000FFC1E3FFC00
      3FFC003FFFC03FFC7FFFFE007FFE007F00000000000000000000000000000000
      000000000000}
  end
  object ImageListDesabilitado: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 416
    Top = 48
    Bitmap = {
      494C01010E001800380018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808091B1B1B212D2D2D4D3D3D3D674949
      497A4949497A3E3E3E69303030511A1A1A240909090A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030303032C2C2C3D3D3D3D85434343C2363636E53B3B3BF23F3F
      3FFC3F3F3FFC3C3C3CF3373737E7373737C43F3F3F892F2F2F42050505050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909090A3131315C3E3E3ED7414141F8474747FF484848FF484848FF4848
      48FF484848FF484848FF494949FF484848FF434343F9424242DC343434620A0A
      0A0B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001616
      16212D2D2D9F3F3F3FF74E4E4EFF4B4B4BFF4A4A4AFF4B4B4BFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4B4BFF4A4A4AFF4B4B4BFF4E4E4EFF424242FA3030
      30A6171717220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707082E2E
      2E9D434343F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4545
      45F3313131A60B0B0B0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101012E2E2E534646
      46F6515151FF505050FF515151FF525252FF525252FF535353FF535353FF5353
      53FF535353FF535353FF535353FF525252FF515151FF515151FF505050FF5353
      53FF494949FA3636366305050505000000000000000000000000000000000000
      000000000000474747AD464646D3464646D3464646D3464646D3464646D34646
      46D3464646D3464646D3464646D3464646D3464646D3464646D3464646D31616
      1635000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272735444444D15757
      57FE545454FF545454FF555555FF565656FF585858FF5A5A5AFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF565656FF555555FF555555FF545454FF5454
      54FF5A5A5AFF474747D72D2D2D3D000000000000000000000000000000000000
      0000000000033333338C343434FF3C3C3CFF484848FF484848FF484848FF4848
      48FF474747FF474747FF474747FF474747FF454545FF343434FF424242EF0404
      040F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404043C3C3C764E4E4EF55858
      58FF575757FF585858FF585858FF6F6F6FFFA5A5A5FFB4B4B4FFB5B5B5FFB5B5
      B5FFB5B5B5FFB5B5B5FFB5B5B5FF979797FF656565FF595959FF585858FF5757
      57FF5A5A5AFF535353F843434383070707080000000000000000000000003838
      38B3202020F31E1E1EFF353535FF555555FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF737373FF353535FF282828FF1C1C
      1CFA3F3F3FE81818182000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141417464646AF595959FF5A5A
      5AFF5B5B5BFF5C5C5CFF5D5D5DFFA6A6A6FFF9F9F9FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF8E8E8EFF5B5B5BFF5B5B5BFF5A5A
      5AFF595959FF5E5E5EFF4C4C4CBC1B1B1B1F0000000000000000070707072121
      21FD151515FF262626FF313131FF4A4A4AFF939393FF939393FF949494FF9494
      94FF939393FF949494FF939393FF949494FF6F6F6FFF313131FF313131FF1616
      16FF1C1C1CFF3737375000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002525253A474747DC5F5F5FFF5E5E
      5EFF5E5E5EFF5F5F5FFF646464FFB8B8B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FF9E9E9EFF5E5E5EFF5E5E5EFF5E5E
      5EFF5D5D5DFF616161FF4B4B4BE12B2B2B440000000000000000090909092121
      21FE151515FF3D3D3DFF3E3E3EFF2C2C2CFFA5A5A5FFA4A4A4FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FFA5A5A5FFA4A4A4FF5F5F5FFF2D2D2DFF535353FF1A1A
      1AFF1C1C1CFF3C3C3C5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035353552525252E7636363FF6161
      61FF616161FF626262FF676767FFBABABAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFA1A1A1FF616161FF626262FF6161
      61FF616161FF666666FF565656EC3B3B3B5B0000000000000000090909092121
      21FE151515FF5F5F5FFF5C5C5CFF121212FFB7B7B7FFBBBBBBFFBBBBBBFFBBBB
      BBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFF4E4E4EFF3A3A3AFF878787FF2020
      20FF353535FF3C3C3C5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F615A5A5AEF666666FF6363
      63FF646464FF666666FF6C6C6CFFBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFA2A2A2FF666666FF656565FF6464
      64FF636363FF6A6A6AFF606060F3454545690000000000000000090909092121
      21FE151515FF7E7E7EFF8C8C8CFF333333FF565656FF5B5B5BFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5B5B5BFF5B5B5BFF3C3C3CFF656565FFB9B9B9FF2929
      29FF3B3B3BFF3C3C3C5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3E5E5F5F5FEE6D6D6DFF6B6B
      6BFF6D6D6DFF6F6F6FFF757575FFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFA8A8A8FF6F6F6FFF6D6D6DFF6C6C
      6CFF696969FF717171FF656565F2454545680000000000000000090909092121
      21FE151515FF919191FFDADADAFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
      DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDBDBDBFFDADADAFF2626
      26FF1E1E1EFF3C3C3C5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003232324B5E5E5EE4777777FF7373
      73FF757575FF777777FF7D7D7DFFC2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFACACACFF777777FF767676FF7474
      74FF717171FF797979FF646464EA3A3A3A580000000000000000090909092121
      21FE151515FF9E9E9EFFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
      F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF2727
      27FF1C1C1CFF3C3C3C5400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000027272732646464D6808080FF7B7B
      7BFF7C7C7CFF808080FF858585FFC5C5C5FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFB0B0B0FF7E7E7EFF7D7D7DFF7B7B
      7BFF787878FF828282FF5F5F5FDC2828283C0000000000000000070707072525
      25FC1D1D1DFF6D6D6DFFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
      A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF9F9F9FFF2828
      28FF222222FF3838385000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101013585858A5878787FE8585
      85FF888888FF8A8A8AFF8D8D8DFFB9B9B9FFF2F2F2FFF8F8F8FFF9F9F9FFF9F9
      F9FFF9F9F9FFF9F9F9FFF9F9F9FFE8E8E8FFA7A7A7FF8A8A8AFF888888FF8686
      86FF838383FF8D8D8DFF595959B0141414170000000000000000000000001B1B
      1B63343434D04B4B4BFDBEBEBEFFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
      D6FFD7D7D7FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6D6FFD3D3D3FF737373FF3838
      38ED292929960606060800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000202020242424265777777EE9292
      92FE8F8F8FFF919191FF949494FF9D9D9DFFB5B5B5FFBEBEBEFFBFBFBFFFC0C0
      C0FFBFBFBFFFBEBEBEFFBEBEBEFFAFAFAFFF989898FF929292FF8F8F8FFF8D8D
      8DFF949494FF7E7E7EF342424271040404040000000000000000000000000000
      0000000000000303030C0D0D0D2F212121A9212121FF212121FF212121FF2121
      21FF212121FF212121FF212121FF212121FF242424DD1010103A090909210101
      0102000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1D1D26585858C09D9D
      9DFD999999FF989898FF9B9B9BFF9C9C9CFF9D9D9DFF9D9D9DFF9E9E9EFF9F9F
      9FFF9E9E9EFF9D9D9DFF9D9D9DFF9C9C9CFF9B9B9BFF999999FF969696FF9797
      97FFA2A2A2FF5D5D5DC72323232C000000000000000000000000000000000000
      00000000000000000000000000002121218B323232FF323232FF323232FF3232
      32FF323232FF323232FF323232FF323232FF2C2C2CD000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B2B2B3A7575
      75EDA4A4A4FFA3A3A3FFA4A4A4FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8A8FFA9A9
      A9FFA8A8A8FFA8A8A8FFA8A8A8FFA5A5A5FFA4A4A4FFA2A2A2FFA2A2A2FFA7A7
      A7FF7B7B7BF22C2C2C4500000000000000000000000000000000000000000000
      00000000000000000000000000002121218B363636FF363636FF353535FF3535
      35FF363636FF353535FF363636FF353535FF2D2D2DD000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030303034B4B
      4B7D818181E5ADADADFFADADADFFACACACFFADADADFFAEAEAEFFAFAFAFFFB0B0
      B0FFAFAFAFFFAEAEAEFFAEAEAEFFACACACFFABABABFFACACACFFB0B0B0FF8C8C
      8CEC5454548B0505050500000000000000000000000000000000000000000000
      00000000000000000000000000002121218B333333FF343434FF323232FF3333
      33FF323232FF323232FF343434FF333333FF2B2B2BD000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10114D4D4D7B818181ECBBBBBBFEB9B9B9FEB3B3B3FFB5B5B5FFB6B6B6FFB6B6
      B6FFB6B6B6FFB5B5B5FFB4B4B4FFB2B2B2FFB9B9B9FEBDBDBDFE898989F15757
      5789151515170000000000000000000000000000000000000000000000000000
      00000000000000000000000000001717171F2E2E2E3E2E2E2E3E2D2D2D3D2D2D
      2D3D2F2F2F3E2D2D2D3D2D2D2D3D2D2D2D3D2525253000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202022D2D2D3A696969BD9A9A9AEDBBBBBBFDC3C3C3FFC4C4C4FFC6C6
      C6FFC6C6C6FFC4C4C4FFC2C2C2FFBDBDBDFE9E9E9EEF6F6F6FC13030303F0303
      0303000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1F1F25474747636A6A6AA08B8B8BD1959595E19F9F
      9FE8A1A1A1E9969696E28B8B8BD16A6A6AA14A4A4A651F1F1F27000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010101101010112323232B353535454040
      405340404054373737472525252D101010110101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000070707071A1A1A1E2A2A2A47383838603F3F
      3F6A3F3F3F6A3737375E262626411616161B0505050500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040405000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030303032C2C2C3D3C3C3C83424242BC343434E2393939EF3D3D
      3DF43D3D3DF4393939EE333333DF3E3E3EB63737377A27272735020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001616
      161C37373759565656786868686B6868686B6868686B6868686B6868686B6868
      686B6868686B6868686B6868686B6868686B6363636D44444484434343722828
      2838070707080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909090A3232325D3E3E3ED7404040F8474747FF484848FF484848FF4848
      48FF484848FF484848FF484848FF474747FF404040F63C3C3CD02A2A2A4F0606
      0606000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909090B3333
      33AC303030E9737373FAE9E9E9F4E9E9E9F4EAEAEAF4EAEAEAF4EBEBEBF4EBEB
      EBF4EAEAEAF4EAEAEAF4E9E9E9F4E9E9E9F4E1E1E1F57C7C7CFB2D2D2DF73232
      32CD2727275A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001616
      16212E2E2EA2414141F94D4D4DFF4B4B4BFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4A4A4AFF4A4A4AFF4B4B4BFF4E4E4EFF3F3F3FF54242
      42911515151800000000000000000000000000000000030303040505050A0707
      070E0404041000000013000000150000001600000017000000180000001F0101
      0121000000190000001A00000019000000170000001600000015000000130303
      03110606060F0505050A0303030400000000000000000E0E0E112D2D2D9D2E2E
      2EFE2E2E2EFF787878FFF4F4F4FFEBEBEBFFE6E6E6FFE7E7E7FFE7E7E7FFE8E8
      E8FFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FF818181FF2E2E2EFF2E2E
      2EFF2D2D2DF61818182D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606061F1F1F23121212140202
      02020000000000000000000000000000000000000000000000000909090A3131
      31A3444444F24F4F4FFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4D4D4DFF4E4E4EFF4F4F4FFF4646
      46ED4242428E050505050000000000000000010101010000000C000000190000
      0022000000270000002A0000002D0000002F0404042F0A0A0A64282828A82B2B
      2BAF0606064D000000320000003300000031000000300000002D0000002A0000
      002700000023000000190000000C01010101000000002525253A2B2B2BD82E2E
      2EFE2E2E2EFF787878FFF6F6F6FFF0F0F0FFEDEDEDFFEDEDEDFFEEEEEEFFEEEE
      EEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFEBEBEBFF818181FF2E2E2EFF2E2E
      2EFF2E2E2EFF2E2E2E8307070708000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515184848489B434343A53A3A
      3A601515151A00000000000000000000000000000000030303033333335C4646
      46F8515151FF505050FF515151FF525252FF525252FF535353FF535353FF5353
      53FF535353FF535353FF535353FF525252FF515151FF505050FF505050FF5252
      52FF434343F42929294A00000000000000000000000002020202030303050404
      0407050505090606060B0606060C0707070E1818182F434343D5595959FC5B5B
      5BFE323232960C0C0C1D0808080F0707070E0707070E0606060C0606060B0505
      05090404040803030305020202020000000000000000313131522A2A2AE82E2E
      2EFF2E2E2EFF797979FFF6F6F6FFF0F0F0FFEDEDEDFFEDEDEDFFEEEEEEFFEEEE
      EEFFEEEEEEFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFF828282FF2E2E2EFF2E2E
      2EFF2E2E2EFF333333A7101010130000000004040404191919252626263F2727
      2740272727402727274027272740272727402727274027272740272727402727
      27401313131D020202020000000000000000060606062C2C2C5D404040FC3C3C
      3CEA393939A80A0A0A0C0000000000000000000000002D2D2D3C474747D75757
      57FE545454FF545454FF555555FF565656FF5C5C5CFF626262FF585858FF5757
      57FF575757FF585858FF6A6A6AFF5E5E5EFF555555FF555555FF535353FF5454
      54FF585858FF424242C72222222D000000000000000000000000000000000000
      000000000000000000000303030334343445575757CE5F5F5FFE5F5F5FFF5F5F
      5FFF595959EE3B3B3B6503030303000000000000000000000000000000000000
      00000000000000000000000000000000000000000000323232542C2C2CE93131
      31FF323232FF7C7C7CFFF8F8F8FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4
      F4FFF4F4F4FFF3F3F3FFF3F3F3FFF3F3F3FFEEEEEEFF848484FF2F2F2FFF2F2F
      2FFF2E2E2EFF353535AA121212150000000038383881494949F64D4D4DFF4E4E
      4EFF4E4E4EFF4E4E4EFF4D4D4DFF4C4C4CFF4C4C4CFF4B4B4BFF4A4A4AFF4A4A
      4AFF434343F13F3F3F6500000000000000000000000000000000343434A83939
      39FB383838FF343434AF17171720000000000707070743434382505050F85757
      57FF575757FF585858FF585858FF686868FFA5A5A5FFBABABAFF767676FF5B5B
      5BFF5C5C5CFF7E7E7EFFCACACAFFABABABFF696969FF585858FF575757FF5757
      57FF5A5A5AFF4D4D4DF33939396F030303030000000000000000000000000000
      00000000000000000000353535465B5B5BC1626262FB636363FF636363FF6363
      63FF636363FE545454BE2222222B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000032323254303030E93535
      35FF363636FF717171FFF8F8F8FFF4F4F4FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4
      F4FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFEAEAEAFF7E7E7EFF333333FF3232
      32FF323232FF373737AA1212121500000000333333B84B4B4BFF484848FF4848
      48FF474747FF474747FF464646FF464646FF454545FF444444FF434343FF4444
      44FF454545E138383853000000000000000000000000000000002E2E2E4C3E3E
      3EE2363636FF3A3A3AF037373771060606061A1A1A1E4C4C4CBB595959FF5A5A
      5AFF5A5A5AFF5C5C5CFF636363FFABABABFFF3F3F3FFF9F9F9FFC4C4C4FF7171
      71FF787878FFCFCFCFFFFCFCFCFFF3F3F3FFAEAEAEFF656565FF5B5B5BFF5A5A
      5AFF5A5A5AFF5C5C5CFF444444A8111111140000000000000000000000000000
      0000000000001E1E1E235D5D5DCF656565FB676767FF676767FF676767FF6767
      67FF676767FF636363F54A4A4A85000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333354333333E93939
      39FF3A3A3AFF4A4A4AFFDBDBDBFFF9F9F9FFFBFBFBFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFF8F8F8FFCACACAFF5B5B5BFF373737FF3636
      36FF363636FF393939AA1212121500000000373737BF4E4E4EFF4C4C4CFF4C4C
      4CFF4B4B4BFF4B4B4BFF4A4A4AFF494949FF494949FF484848FF484848FE4D4D
      4DFE393939710E0E0E10000000000000000000000000000000001818181D4545
      45B93C3C3CFF3A3A3AFF3C3C3CBF191919222D2D2D464A4A4AE15F5F5FFF5E5E
      5EFF5E5E5EFF5F5F5FFF828282FFE0E0E0FFFEFEFEFFFFFFFFFFFDFDFDFFDBDB
      DBFFE5E5E5FFFFFFFFFFFFFFFFFFFDFDFDFFD5D5D5FF787878FF5E5E5EFF5E5E
      5EFF5D5D5DFF616161FF535353D9272727350000000000000000000000000303
      030335353545606060CF6B6B6BFE6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF696969FA2828283B0202020200000000000000000000
      0000000000000000000000000000000000000000000034343454393939E93F3F
      3FFF404040FF3F3F3FFF4C4C4CFF767676FF8B8B8BFF8B8B8BFF8C8C8CFF8C8C
      8CFF8B8B8BFF8B8B8BFF8A8A8AFF787878FF4C4C4CFF3C3C3CFF3B3B3BFF3A3A
      3AFF3A3A3AFF3B3B3BAA12121215000000003B3B3BBF535353FF505050FF4F4F
      4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4D4D4DFF4E4E4EFF4D4D4DE53A3A
      3A720000000000000000000000000000000000000000000000000B0B0B0C3B3B
      3B97414141FF3A3A3AFF3D3D3DEB373737593D3D3D5F565656EE636363FF6161
      61FF616161FF626262FF696969FFA0A0A0FFE8E8E8FFFEFEFEFFFFFFFFFFFDFD
      FDFFFEFEFEFFFFFFFFFFFFFFFFFFDDDDDDFF919191FF656565FF616161FF6161
      61FF606060FF666666FF525252E53232324D0000000000000000000000003636
      3646626262C16A6A6AFB6C6C6CFF6C6C6CFF6C6C6CFF6E6E6EFF707070FF6D6D
      6DFF6C6C6CFF6C6C6CFF6C6C6CFF585858AD1B1B1B2100000000000000000000
      0000000000000000000000000000000000000000000035353554424242E94B4B
      4BFF4A4A4AFF494949FF484848FF474747FF464646FF454545FF444444FF4444
      44FF434343FF434343FF434343FF414141FF414141FF404040FF3F3F3FFF3E3E
      3EFF3E3E3EFF3D3D3DAA12121215000000003F3F3FBF575757FF545454FF5353
      53FF535353FF535353FF525252FF515151FF515151FF575757F8484848931010
      1013000000000000000000000000000000000000000000000000101010134444
      44A6444444FF3D3D3DFF434343FA4C4C4C77454545695D5D5DF3656565FF6363
      63FF646464FF666666FF676767FF6E6E6EFF9D9D9DFFFBFBFBFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F2FF8F8F8FFF6A6A6AFF676767FF646464FF6363
      63FF626262FF696969FF595959E93737375500000000000000001818181C6262
      62CF6B6B6BFB6D6D6DFF6D6D6DFF6D6D6DFF6C6C6CFE787878F5747474EB7070
      70FD6D6D6DFE6D6D6DFF6D6D6DFF686868F04545456E04040404000000000000
      0000000000000000000000000000000000000000000035353554464646E94F4F
      4FFF4F4F4FFF4E4E4EFF4D4D4DFF4D4D4DFF4C4C4CFF4A4A4AFF494949FF4747
      47FF464646FF464646FF454545FF454545FF444444FF444444FF424242FF4242
      42FF414141FF3D3D3DAA1212121500000000424242BF5B5B5BFF575757FF5757
      57FF565656FF565656FF565656FF555555FF555555FF595959FB515151B82525
      252F000000000000000000000000000000000000000000000000292929364D4D
      4DD2454545FF414141FF454545FF4040408C46464669636363F36C6C6CFF6B6B
      6BFF6D6D6DFF6F6F6FFF717171FF737373FF878787FFEAEAEAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE2E2E2FF868686FF737373FF707070FF6D6D6DFF6B6B
      6BFF686868FF707070FF5F5F5FE93838385500000000000000004A4A4A637474
      74FE6F6F6FFF707070FF707070FF727272FE757575EE3B3B3B55262626306767
      67BF6F6F6FFE707070FF707070FF707070FF626262DE3434344D000000000000
      0000000000000000000000000000000000000000000036363654494949E95252
      52FF525252FF515151FF515151FF505050FF505050FF4F4F4FFF4E4E4EFF4E4E
      4EFF4B4B4BFF4A4A4AFF4A4A4AFF484848FF484848FF484848FF464646FF4545
      45FF454545FF3F3F3FAA1212121500000000454545BF5F5F5FFF5B5B5BFF5B5B
      5BFF5B5B5BFF5B5B5BFF5A5A5AFF595959FF595959FF575757FF5C5C5CFF5858
      58EE353535681E1E1E2707070707000000000303030319191921404040C34D4D
      4DFC484848FF444444FF4A4A4AFD5151517D3D3D3D5C646464EC767676FF7373
      73FF757575FF777777FF7A7A7AFF939393FFD3D3D3FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFD1D1D1FF939393FF797979FF757575FF7373
      73FF707070FF797979FF5F5F5FE33131314A00000000000000001E1E1E226E6E
      6EC9747474FA6F6F6FFF727272FE717171E14E4E4E7805050505040404043A3A
      3A52757575F6717171FF717171FF717171FF707070FC5E5E5EC2111111140000
      00000000000000000000000000000000000000000000363636544B4B4BE95555
      55FF555555FF545454FF545454FF525252FF545454FF555555FF555555FF5555
      55FF545454FF535353FF515151FF4B4B4BFF4C4C4CFF4B4B4BFF4A4A4AFF4949
      49FF484848FF414141AA1212121500000000484848BF666666FF626262FF6060
      60FF606060FF5F5F5FFF5E5E5EFF5D5D5DFF5D5D5DFF5B5B5BFF5B5B5BFF5C5C
      5CFF5B5B5BEE515151C15353538F4848486A4747477C4A4A4AB8545454FD4E4E
      4EFF4B4B4BFF484848FF4A4A4AF3454545692D2D2D435F5F5FE07E7E7EFF7A7A
      7AFF7C7C7CFF7E7E7EFF909090FFD3D3D3FFFCFCFCFFFFFFFFFFFEFEFEFFF4F4
      F4FFFBFBFBFFFEFEFEFFFFFFFFFFFBFBFBFFCFCFCFFF8C8C8CFF7C7C7CFF7B7B
      7BFF787878FF828282FF646464D5272727320000000000000000000000003333
      33416F6F6FC97F7F7FFE787878ED4D4D4D770D0D0D0E00000000000000000606
      0606565656B0737373FC707070FF707070FF707070FF6F6F6FFD4A4A4A790A0A
      0A0B0000000000000000000000000000000000000000373737544D4D4DE95757
      57FF575757FF565656FF555555FF6C6C6CFFA1A1A1FFA7A7A7FFA2A2A2FFA2A2
      A2FFA7A7A7FFAAAAAAFFA7A7A7FF717171FF515151FF4F4F4FFF4D4D4DFF4C4C
      4CFF4C4C4CFF434343AA12121215000000004C4C4CBF707070FF6C6C6CFF6A6A
      6AFF696969FF686868FF656565FF636363FF626262FF5F5F5FFF5E5E5EFF5C5C
      5CFF5C5C5CFF5D5D5DFF5E5E5EFF5A5A5AF45A5A5AF9585858FF515151FF5050
      50FF4E4E4EFF4D4D4DFF484848DF2B2B2B411818181B5D5D5DB6898989FF8585
      85FF878787FF898989FF999999FFD7D7D7FFFCFCFCFFFDFDFDFFE3E3E3FFA8A8
      A8FFB7B7B7FFEFEFEFFFFEFEFEFFF4F4F4FFBFBFBFFF8F8F8FFF878787FF8585
      85FF838383FF898989FE585858A6101010130000000000000000000000000000
      00001F1F1F274A4A4A7D2F2F2F47050505050000000000000000000000000000
      00002323232A666666C0707070FD6F6F6FFF707070FF707070FF6A6A6AF14848
      48770909090A0000000000000000000000000000000037373754505050E95B5B
      5BFF5A5A5AFF5A5A5AFF737373FFD6D6D6FFF5F5F5FFEAEAEAFFE1E1E1FFE1E1
      E1FFC8C8C8FF999999FFB8B8B8FFD3D3D3FF7D7D7DFF515151FF515151FF5050
      50FF505050FF454545AA1212121500000000505050BF7A7A7AFF787878FF7777
      77FF787878FD777777FE707070FF6D6D6DFF6A6A6AFF676767FF666666FF6363
      63FF606060FF5F5F5FFF5D5D5DFF5A5A5AFF595959FF585858FF555555FF5454
      54FF525252FF545454FB494949960D0D0D0E0606060648484879818181F59090
      90FF8E8E8EFF919191FF949494FFA8A8A8FFDBDBDBFFE2E2E2FFB2B2B2FF9A9A
      9AFF9C9C9CFFC1C1C1FFEAEAEAFFC4C4C4FF9C9C9CFF929292FF8F8F8FFF8D8D
      8DFF949494FF787878EF43434367020202020000000000000000000000000000
      0000000000000505050600000000000000000000000000000000000000000000
      0000040404043F3F3F5C717171E26E6E6EFE6F6F6FFF707070FF707070FE6363
      63DB3E3E3E640101010100000000000000000000000038383854535353E95D5D
      5DFF5D5D5DFF5C5C5CFF8C8C8CFFEAEAEAFFF5F5F5FFEAEAEAFFE1E1E1FFE1E1
      E1FF969696FF3B3B3BFF6B6B6BFFDADADAFF939393FF565656FF545454FF5454
      54FF535353FF474747AA1212121500000000545454BF848484FF838383FF7575
      75E8616161A5656565BC7A7A7AFB787878FF737373FF707070FF6C6C6CFF6969
      69FF656565FF636363FF616161FF5E5E5EFF5C5C5CFF5B5B5BFF585858FF5757
      57FF585858FF575757CF2F2F2F3F00000000000000002A2A2A35636363D09F9F
      9FFE989898FF979797FF9A9A9AFF9C9C9CFFA8A8A8FFADADADFFA0A0A0FF9F9F
      9FFF9F9F9FFFA3A3A3FFB0B0B0FF9F9F9FFF9A9A9AFF989898FF959595FF9797
      97FFA0A0A0FF595959C11F1F1F27000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F1058585886737373FD6D6D6DFE6F6F6FFF6F6F6FFF6E6E
      6EFE636363E22626263900000000000000000000000037373753565656E85F5F
      5FFF5E5E5EFF5E5E5EFF909090FFECECECFFF5F5F5FFEAEAEAFFE1E1E1FFE1E1
      E1FF949494FF3F3F3FFF696969FFDBDBDBFF989898FF585858FF565656FF5656
      56FF565656FF494949A91111111400000000565656BE8C8C8CFE898989FE4545
      4573141414171F1F1F26494949A87C7C7CF47F7F7FFE787878FE747474FF7070
      70FF6B6B6BFF686868FF636363FF616161FF606060FF5D5D5DFF5B5B5BFF5D5D
      5DFE636363FA32323258060606060000000000000000010101013131314F8080
      80F5A5A5A5FFA3A3A3FFA4A4A4FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA7A7A7FFA5A5A5FFA4A4A4FFA2A2A2FFA2A2A2FFA6A6
      A6FF7A7A7AF12C2C2C3B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030303616161B3717171F96E6E6EFF6E6E6EFF6D6D
      6DFF707070FF5C5C5CAB13131315000000000000000030303046575757E16262
      62FE616161FF616161FF929292FFEDEDEDFFF5F5F5FFEAEAEAFFE1E1E1FFE1E1
      E1FF999999FF4A4A4AFF727272FFDBDBDBFF9A9A9AFF5B5B5BFF575757FF5959
      59FF5E5E5EFF454545940909090A000000003F3F3F84717171D7494949790000
      00000000000000000000040404042E2E2E41606060A0747474E57F7F7FFA7E7E
      7EFF797979FF727272FF6C6C6CFF676767FF666666FF676767FF666666F35656
      56BB2A2A2A480000000000000000000000000000000000000000070707075858
      5892898989ECAFAFAFFFACACACFFABABABFFADADADFFAEAEAEFFAFAFAFFFAFAF
      AFFFAFAFAFFFAEAEAEFFADADADFFABABABFFAAAAAAFFABABABFFAFAFAFFF8686
      86E9505050840303030300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002A2A2A35686868B9727272FB6E6E6EFF7474
      74FB6C6C6CDD3D3D3D5A0606060600000000000000001919191D555555AF6868
      68FE646464FF636363FF949494FFEDEDEDFFF5F5F5FFEAEAEAFFE1E1E1FFE1E1
      E1FFACACACFF666666FF8E8E8EFFDBDBDBFF9B9B9BFF5D5D5DFF595959FF6060
      60FF656565F73232324C00000000000000001A1A1A212D2D2D3D101010110000
      000000000000000000000000000001010101101010123838384E545454826464
      64AF727272D4696969DE6C6C6CE5646464DE676767D4616161B54242426C2020
      2029040404040000000000000000000000000000000000000000000000001515
      15175C5C5C928F8F8FF6BDBDBDFEB7B7B7FFB3B3B3FFB4B4B4FFB5B5B5FFB6B6
      B6FFB5B5B5FFB4B4B4FFB3B3B3FFB2B2B2FFB8B8B8FEBDBDBDFE888888F15353
      5384121212140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000202020236363643727272CE808080F96363
      63B93232324B05050505000000000000000000000000020202022626263D6767
      67F1757575FE686868FE959595FEECECECFEF3F3F3FEE8E8E8FEDFDFDFFEDFDF
      DFFEDCDCDCFEC7C7C7FED6D6D6FEDADADAFE9B9B9BFE5F5F5FFE6A6A6AFE7474
      74FA3E3E3EAC0707070700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505051515
      15172626262F2C2C2C3E3737374D2C2C2C3E272727301717171A020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505053333334A747474CBA3A3A3F3BFBFBFFFC2C2C2FFC5C5C5FFC7C7
      C7FFC6C6C6FFC4C4C4FFC2C2C2FFBDBDBDFE9F9F9FF16F6F6FC32D2D2D410303
      0303000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C0E2121212F0707
      0708000000000000000000000000000000000000000000000000000000001F1F
      1F314D4D4D8E6F6F6FB97D7D7DB37F7F7F997F7F7F947E7E7E947E7E7E947E7E
      7E947F7F7F947F7F7F947F7F7F947C7C7C947F7F7FA87A7A7ABE606060AC3B3B
      3B5E0909090A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000282828314D4D4D72727272AF939393DA9C9C9CE7A6A6
      A6F0A6A6A6EF9B9B9BE6949494DA6A6A6AA64A4A4A6C2323232A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B0C1919191C171717190B0B0B0C0A0A0A0A0A0A0A0A0A0A0A0A0A0A
      0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A121212141B1B1B1F141414160404
      0404000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004040404151515172D2D2D373C3C3C504B4B
      4B624A4A4A603C3C3C4E2D2D2D36121212140303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606061A1A1A1E292929463737375E3F3F
      3F6A3F3F3F6A3838385E282828441818181C0606060600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050505051616161B262626413737375D3F3F
      3F6A3F3F3F6A393939602A2A2A471B1B1B1F0707070800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030303032A2A2A393939397E414141BB343434E2393939EE3D3D
      3DF43D3D3DF43A3A3AEE343434E13E3E3EB73838387B27272737020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101010125252533363636773F3F3FB6333333DF393939ED3D3D
      3DF43D3D3DF43A3A3AEF353535E2414141BD3D3D3D852C2C2C3D050505050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B0C1717
      171A030303030000000000000001010101020000000302020204020202040101
      0105010101050101010502020204000000030000000301010102010101010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707082F2F2F593C3C3CD3404040F7474747FF484848FF484848FF4848
      48FF484848FF484848FF484848FF474747FF414141F63C3C3CD22B2B2B510707
      0708000000000000000000000000000000000000000000000000000000000000
      0000060606062828284B3A3A3ACC3F3F3FF5474747FF474747FF484848FF4848
      48FF484848FF484848FF484848FF484848FF424242F83E3E3ED7343434620A0A
      0A0B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B0D1313131E1414
      1420141414201111111804040404000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E103E3E3E785151
      51A80E0E0E2E01010106000000090000000A0000000C0000000F000000100000
      00120000001200000011000000100000000E0000000D0000000A000000080000
      0005000000030000000000000000000000000000000000000000000000001616
      16212D2D2D9C3F3F3FF64D4D4DFF4B4B4BFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4A4A4AFF4A4A4AFF4C4C4CFF4E4E4EFF404040F64343
      4394151515180000000000000000000000000000000000000000000000001515
      15184040408E3D3D3DF34D4D4DFF4C4C4CFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4B4BFF4A4A4AFF4B4B4BFF4E4E4EFF424242FA3030
      30A6171717220000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000353535544A4A4AFE494949FF4A4A
      4AFF4A4A4AFF494949FD3C3C3CD3000000000000000000000000000000000000
      000000000000000000000000000000000000000000003F3F3F515A5A5AE55050
      50FE4E4E4ECD2121216C0A0A0A39040404260000001900000018000000190000
      001B0000001B0000001B000000190000001600000015000000120000000E0000
      000B000000070000000400000000000000000000000000000000070707082E2E
      2E9D434343F24E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4D4D4DFF4E4E4EFF4F4F4FFF4747
      47ED444444930606060600000000000000000000000000000000050505054040
      408B464646ED4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4D4D4DFF4E4E4EFF4F4F4FFF4444
      44F3313131A60B0B0B0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000005050507D4B4B4BFE484848FF4949
      49FF494949FF494949FF4A4A4AFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A1D5353538E5252
      52F97A7A7AFC939393EE727272D1555555B03535358C1A1A1A5F0909093A0000
      00190000001200000012000000110000000E0000000D0000000A000000070000
      00050101010201010101000000000000000000000000010101012E2E2E534545
      45F6515151FF505050FF515151FF525252FF525252FF525252FF535353FF5353
      53FF535353FF535353FF535353FF525252FF515151FF515151FF515151FF5252
      52FF454545F62A2A2A4C00000000000000000000000000000000262626444242
      42F2515151FF505050FF515151FF525252FF525252FF525252FF535353FF5353
      53FF535353FF535353FF535353FF525252FF515151FF515151FF505050FF5252
      52FF484848FA3636366305050505000000000000000000000000000000000000
      0000000000000000000000000000000000005252527F4F4F4FFE4B4B4BFF4C4C
      4CFF4C4C4CFF4C4C4CFF4C4C4CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010138888
      88CDB2B2B2FEB0B0B0FFA5A5A5FF9C9C9CFF979797FC888888E96A6A6AC51C1C
      1C4D020202040202020402020204010101020101010101010101000000000000
      0000000000000000000000000000000000000000000027272735444444D15757
      57FE545454FF545454FF555555FF585858FF7D7D7DFF8C8C8CFF686868FF5858
      58FF575757FF575757FF565656FF565656FF555555FF555555FF535353FF5454
      54FF595959FF424242CB2525253100000000000000001F1F1F293D3D3DC25757
      57FE545454FF545454FF555555FF565656FF565656FF565656FF575757FF5757
      57FF575757FF575757FF565656FF565656FF555555FF555555FF545454FF5454
      54FF5A5A5AFF4A4A4ADA2F2F2F3F000000000000000000000000000000000000
      0000000000000000000000000000000000005252527F535353FE505050FF5151
      51FF515151FF515151FF505050FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6F7AD1D1D1F7C1C1C1FFB2B2B2FFACACACFFA5A5A5FFA0A0A0FFAAAAAAFF9C9C
      9CF2313131490606060600000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606063E3E3E7A4F4F4FF55757
      57FF575757FF585858FF585858FF646464FFBEBEBEFFEEEEEEFFC7C7C7FF8F8F
      8FFF5F5F5FFF5A5A5AFF5A5A5AFF595959FF595959FF585858FF575757FF5757
      57FF595959FF4E4E4EF43B3B3B7404040404020202023D3D3D684A4A4AEF5858
      58FE575757FF585858FF818181FF7B7B7BFF606060FF5A5A5AFF5B5B5BFF5B5B
      5BFF838383FF7B7B7BFF606060FF595959FF595959FF595959FF575757FF5656
      56FF585858FF535353F845454586080808090000000000000000000000000000
      0000000000000000000000000000000000005353537F585858FE545454FF5555
      55FF555555FF555555FF535353FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004A4A
      4A4ECDCDCDE5D2D2D2FFBEBEBEFFB3B3B3FFB1B1B1FFB4B4B4FFBCBCBCFFAEAE
      AEFF787878D13838385506060607000000000000000000000000000000000000
      0000000000000000000000000000000000001818181B4A4A4AB6595959FF5A5A
      5AFF5A5A5AFF5C5C5CFF5C5C5CFF696969FFC7C7C7FFFEFEFEFFFDFDFDFFEDED
      EDFFA8A8A8FF6D6D6DFF5D5D5DFF5D5D5DFF5C5C5CFF5C5C5CFF5B5B5BFF5A5A
      5AFF595959FF5D5D5DFF474747B0151515180F0F0F11484848A3585858FE5A5A
      5AFF5A5A5AFF5B5B5BFFD8D8D8FFE0E0E0FFAFAFAFFF616161FF5E5E5EFF5E5E
      5EFFD8D8D8FFE0E0E0FFAFAFAFFF616161FF5C5C5CFF5C5C5CFF5B5B5BFF5A5A
      5AFF595959FF5D5D5DFF505050C21D1D1D210000000000000000000000000000
      0000000000000000000000000000000000005353537F5C5C5CFE585858FF5959
      59FF595959FF595959FF575757FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      282BBEBEBECEE3E3E3FFC9C9C9FFC1C1C1FFB7B7B7FFA2A2A2FFACACACFFBABA
      BAFF959595FD6B6B6BD12A2A2A49000000000000000000000000000000000000
      0000000000000000000000000000000000002828283E484848DD5F5F5FFF5E5E
      5EFF5E5E5EFF5F5F5FFF606060FF6D6D6DFFC8C8C8FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5E5E5FFA4A4A4FF6B6B6BFF616161FF5F5F5FFF5E5E5EFF5E5E
      5EFF5D5D5DFF606060FF484848DB2525253A2323232F505050D45F5F5FFF5E5E
      5EFF5E5E5EFF5F5F5FFFE8E8E8FFFFFFFFFFFFFFFFFFE2E2E2FF9C9C9CFF6D6D
      6DFFE8E8E8FFFFFFFFFFFFFFFFFFDFDFDFFF9B9B9BFF6B6B6BFF5E5E5EFF5E5E
      5EFF5D5D5DFF616161FF4E4E4EE43030304C00000000080808093D3D3D6F3F3F
      3FBE3F3F3FBF404040BF414141BF414141BF4E4E4EDE606060FE5C5C5CFF5D5D
      5DFF5D5D5DFF5D5D5DFF5E5E5EFF424242BF414141BF414141BF404040BF3F3F
      3FBF3F3F3FBF2A2A2A4200000000000000000000000000000000000000000E0E
      0E0E9191919DEDEDEDFFD6D6D6FFBFBFBFFFA1A1A1FF989898FF949494FF9C9C
      9CFFAAAAAAFF8C8C8CFF6C6C6CF2282828490505050600000000000000000000
      00000000000000000000000000000000000039393958545454EB636363FF6161
      61FF616161FF626262FF636363FF6F6F6FFFC9C9C9FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFEFEFFF5F5F5FFBFBFBFFF878787FF666666FF616161FF6161
      61FF606060FF656565FF545454E8353535522E2E2E474F4F4FE2636363FF6161
      61FF616161FF626262FFE9E9E9FFFFFFFFFFFFFFFFFFFEFEFEFFEFEFEFFFC5C5
      C5FFF1F1F1FFFFFFFFFFFFFFFFFFFEFEFEFFEFEFEFFFC3C3C3FF7E7E7EFF6565
      65FF606060FF656565FF595959F040404063000000001818181B545454B75C5C
      5CFE5D5D5DFF5E5E5EFF5F5F5FFF606060FF616161FF606060FF606060FF6060
      60FF606060FF616161FF616161FF616161FF616161FF606060FF5F5F5FFF5E5E
      5EFF5F5F5FFF5252527D00000000000000000000000000000000000000000101
      010166666671CFCFCFF5C1C1C1FFBEBEBEFFA5A5A5FF949494FF909090FF8B8B
      8BFF969696FF979797FF7B7B7BFF515151D13030305506060607000000000000
      000000000000000000000000000000000000434343675D5D5DF2666666FF6363
      63FF646464FF666666FF676767FF747474FFCBCBCBFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFDADADAFF878787FF646464FF6363
      63FF626262FF686868FF5C5C5CF14141416436363654575757E9686868FF6363
      63FF646464FF666666FFE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFDCDCDCFF9A9A
      9AFF676767FF676767FF616161F74A4A4A71000000001B1B1B1F5B5B5BBE5E5E
      5EFE5F5F5FFF606060FF616161FF626262FF626262FF636363FF646464FF6464
      64FF646464FF646464FF646464FF646464FF636363FF636363FF626262FF6161
      61FF636363FF5555558000000000000000000000000000000000000000000000
      00002A2A2A2E8E8E8EC19A9A9AFEAAAAAAFFBDBDBDFF929292FF8B8B8BFF8787
      87FF818181FF868686FF8E8E8EFF616161FD4B4B4BD123232349000000000000
      00000000000000000000000000000000000043434367646464F26D6D6DFF6B6B
      6BFF6D6D6DFF6F6F6FFF717171FF7D7D7DFFCECECEFFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFD5D5D5FF8A8A8AFF6D6D6DFF6B6B
      6BFF696969FF6E6E6EFF616161F040404062363636525D5D5DE86E6E6EFF6A6A
      6AFF6C6C6CFF6E6E6EFFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFC7C7
      C7FF757575FF6D6D6DFF666666F64A4A4A6F000000001B1B1B1F5F5F5FBE6363
      63FE656565FF676767FF696969FF6A6A6AFF6B6B6BFF6C6C6CFF6C6C6CFF6D6D
      6DFF6C6C6CFF6C6C6CFF6C6C6CFF6B6B6BFF6A6A6AFF696969FF686868FF6767
      67FF676767FF5656568000000000000000000000000000000000000000000000
      000000000000151515177C7C7CC4878787FA939393FFB1B1B1FF919191FF8181
      81FF727272FF686868FF6E6E6EFF7E7E7EFF626262FF4F4F4FF23636364D0A0A
      0A0A000000000000000000000000000000003A3A3A57626262EA767676FF7373
      73FF757575FF777777FF797979FF858585FFD0D0D0FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDFDFDFFEFEFEFFFBDBDBDFF919191FF7A7A7AFF757575FF7373
      73FF707070FF787878FF616161E7353535502E2E2E455C5C5CE1777777FF7373
      73FF747474FF777777FFEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF3F3
      F3FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF2F2F2FFBEBEBEFF8E8E
      8EFF727272FF777777FF686868EF41414161000000001B1B1B1F626262BE6B6B
      6BFE6C6C6CFF6D6D6DFF6D6D6DFF6E6E6EFF6F6F6FFF6F6F6FFF707070FF7070
      70FF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6E6E6EFF6E6E6EFF6C6C6CFF6B6B
      6BFF6C6C6CFF5757578000000000000000000000000000000000000000000000
      00000000000000000000303030396C6C6CB6767676F98D8D8DFF9C9C9CFF8282
      82FF696969FF626262FF5D5D5DFF6A6A6AFF6F6F6FFF808080FFA1A1A1D95353
      53640B0B0B0B0000000000000000000000002727273B5C5C5CDC7E7E7EFF7A7A
      7AFF7C7C7CFF7E7E7EFF828282FF8C8C8CFFD2D2D2FFFEFEFEFFFFFFFFFFFEFE
      FEFFFBFBFBFFDBDBDBFFA9A9A9FF878787FF828282FF808080FF7C7C7CFF7B7B
      7BFF787878FF828282FF676767DA2A2A2A372222222D616161D17E7E7EFF7A7A
      7AFF7C7C7CFF7E7E7EFFEBEBEBFFFFFFFFFFFEFEFEFFFDFDFDFFE1E1E1FFB0B0
      B0FFEDEDEDFFFFFFFFFFFEFEFEFFFDFDFDFFE0E0E0FFACACACFF838383FF7B7B
      7BFF787878FF828282FF636363E22F2F2F47000000001A1A1A1D646464BA7272
      72FD737373FE747474FE757575FE767676FE767676FE737373FE727272FF7373
      73FF737373FF737373FF747474FF757575FE747474FE737373FE717171FE7070
      70FE717171FE5757577F00000000000000000000000000000000000000000000
      00000000000000000000020202022E2E2E39636363C4636363FE7D7D7DFF9797
      97FF656565FF5E5E5EFF5A5A5AFF565656FF717171FFC1C1C1FFC4C4C4FEA9A9
      A9DC4B4B4B5C00000000000000000000000014141417595959AF888888FF8585
      85FF878787FF898989FF8C8C8CFF959595FFD6D6D6FFFEFEFEFFFAFAFAFFE4E4
      E4FFAFAFAFFF919191FF909090FF8D8D8DFF8C8C8CFF8B8B8BFF878787FF8585
      85FF838383FF8C8C8CFF545454A8121212140E0E0E10555555A0868686FD8585
      85FF878787FF898989FFEBEBEBFFFBFBFBFFE9E9E9FFB2B2B2FF959595FF9191
      91FFEBEBEBFFFAFAFAFFE7E7E7FFB1B1B1FF909090FF8B8B8BFF888888FF8686
      86FF838383FF8D8D8DFF616161BC1B1B1B1E0000000005050505333333504C4C
      4C934E4E4E944E4E4E944E4E4E944F4F4F94666666C8848484FE7B7B7BFF7B7B
      7BFF7B7B7BFF7D7D7DFF7E7E7EFF4E4E4E944E4E4E944D4D4D944D4D4D944B4B
      4B944B4B4B942727272F00000000000000000000000000000000000000000000
      00000000000000000000000000000000000014141417555555C4565656FA6666
      66FF878787FF656565FF555555FF656565FFB7B7B7FFEAEAEAFFD3D3D3FFD4D4
      D4FFC9C9C9FA3F3F3F53050505060000000004040404434343747C7C7CF49191
      91FF8E8E8EFF909090FF939393FF999999FFCACACAFFE8E8E8FFC9C9C9FFA8A8
      A8FF989898FF979797FF979797FF959595FF949494FF929292FF8F8F8FFF8D8D
      8DFF949494FF7C7C7CF34141416F030303030101010140404063747474ED9191
      91FE8E8E8EFF909090FFC8C8C8FFC9C9C9FFABABABFF989898FF989898FF9898
      98FFCACACAFFC9C9C9FFAAAAAAFF969696FF949494FF929292FF8F8F8FFF8D8D
      8DFF929292FF838383F74C4C4C81070707070000000000000000020202020808
      08090909090A0909090A0909090A0909090A585858838B8B8BFE838383FF8484
      84FF848484FF858585FF808080FF0909090A0909090A0909090A0909090A0909
      090A0909090A0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C2C2C39505050B64D4D
      4DF9676767FF747474FF686868FFB0B0B0FFD8D8D8FFD1D1D1FFD2D2D2FFD5D5
      D5FFC8C8C8FF6D6D6DD2333333540606060600000000282828325F5F5FCB9F9F
      9FFE989898FF979797FF9A9A9AFF9C9C9CFFA7A7A7FFAEAEAEFFA1A1A1FF9F9F
      9FFF9F9F9FFF9E9E9EFF9E9E9EFF9B9B9BFF9A9A9AFF989898FF959595FF9797
      97FFA1A1A1FF5C5C5CC72323232C00000000000000001D1D1D25565656BE9D9D
      9DFD989898FF979797FF9E9E9EFF9E9E9EFF9D9D9DFF9E9E9EFF9F9F9FFF9F9F
      9FFFA3A3A3FFA1A1A1FF9D9D9DFF9C9C9CFF9B9B9BFF999999FF969696FF9797
      97FFA3A3A3FF676767D42F2F2F3B000000000000000000000000000000000000
      0000000000000000000000000000000000005D5D5D7F929292FE8A8A8AFF8B8B
      8BFF8B8B8BFF8C8C8CFF868686FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202022A2A2A394B4B
      4BC4474747FE717171FFB5B5B5FFDBDBDBFFD1D1D1FFD8D8D8FFCFCFCFFFCBCB
      CBFFCDCDCDFF666666FD4C4C4CC11E1E1E2700000000000000002F2F2F4A7D7D
      7DF4A6A6A6FFA3A3A3FFA4A4A4FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA7A7A7FFA5A5A5FFA4A4A4FFA2A2A2FFA2A2A2FFA7A7
      A7FF7B7B7BF22C2C2C45000000000000000000000000000000002B2B2B3A7575
      75EDA4A4A4FFA3A3A3FFA3A3A3FFA4A4A4FFA6A6A6FFA7A7A7FFA8A8A8FFA8A8
      A8FFA8A8A8FFA8A8A8FFA7A7A7FFA5A5A5FFA4A4A4FFA2A2A2FFA2A2A2FFA8A8
      A8FF828282F63A3A3A5A03030303000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5E7F9C9C9CFE949494FF9595
      95FF949494FF969696FF8D8D8DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      1317757575C4BCBCBCFAE8E8E8FFDADADAFFD0D0D0FFD3D3D3FFC2C2C2FFC6C6
      C6FF878787FF5C5C5CFF4B4B4BD2232323320000000000000000050505055858
      5890898989ECAFAFAFFFACACACFFABABABFFADADADFFAEAEAEFFAFAFAFFFAFAF
      AFFFAFAFAFFFAEAEAEFFADADADFFABABABFFAAAAAAFFABABABFFB0B0B0FF8B8B
      8BEC5454548B0505050500000000000000000000000000000000030303034B4B
      4B7D808080E5ADADADFFACACACFFABABABFFADADADFFADADADFFAEAEAEFFAFAF
      AFFFAFAFAFFFAEAEAEFFAEAEAEFFABABABFFAAAAAAFFAAAAAAFFB0B0B0FF8F8F
      8FF25A5A5A9A0909090900000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5F5F7FA3A3A3FE9B9B9BFF9B9B
      9BFF9B9B9BFF9D9D9DFF929292FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000323232398C8C8CB6C9C9C9F9E1E1E1FFD9D9D9FFC9C9C9FFBDBDBDFF9595
      95FF696969FF565656F64141418F0D0D0D0F0000000000000000000000001515
      15175959598D8C8C8CF3BDBDBDFEB7B7B7FFB3B3B3FFB4B4B4FFB5B5B5FFB6B6
      B6FFB5B5B5FFB4B4B4FFB3B3B3FFB2B2B2FFB8B8B8FFBDBDBDFE8A8A8AF25757
      578B151515170000000000000000000000000000000000000000000000001010
      10114F4F4F7E848484EEBABABAFEB7B7B7FEB3B3B3FFB4B4B4FFB5B5B5FFB6B6
      B6FFB5B5B5FFB4B4B4FFB4B4B4FFB2B2B2FFB7B7B7FFBDBDBDFE929292F65E5E
      5E9B1A1A1A1E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005E5E5E7EA8A8A8FDA0A0A0FEA0A0
      A0FEA0A0A0FEA2A2A2FE959595FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020232323239919191C4D5D5D5FEE0E0E0FFDBDBDBFF8E8E8EFF7373
      73FF676767FE494949BB2020202B000000000000000000000000000000000000
      0000050505053333334A727272C9A2A2A2F3BEBEBEFFC3C3C3FFC5C5C5FFC7C7
      C7FFC6C6C6FFC5C5C5FFC3C3C3FFBEBEBEFFA3A3A3F3727272C72F2F2F440505
      0505000000000000000000000000000000000000000000000000000000000000
      0000020202022D2D2D3A6C6C6CC09C9C9CEEBCBCBCFEC2C2C2FFC5C5C5FFC6C6
      C6FFC6C6C6FFC5C5C5FFC4C4C4FFC0C0C0FFA7A7A7F5787878CE373737500707
      0707000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002828282E6A6A6AA3707070A97070
      70A96E6E6EA96C6C6CA74D4D4D82000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000016161617868686BE9D9D9DFA858585FF7B7B7BFF6969
      69F84F4F4FC31313131700000000000000000000000000000000000000000000
      000000000000000000002525252D4C4C4C6F6F6F6FAB949494DA9B9B9BE6A6A6
      A6EFA7A7A7EF9D9D9DE7959595DA6A6A6AA74B4B4B6E2424242C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1F1F27464646676A6A6AA5909090D69A9A9AE4A5A5
      A5EEA8A8A8F09D9D9DE78E8E8EDB737373AF4F4F4F752B2B2B34020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F11121212141212
      1214121212141010101308080809000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002C2C2C375B5B5BB2717171F3636363E64B4B
      4B9D252525320000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303141414162D2D2D373C3C3C4F4A4A
      4A604A4A4A603C3C3C502D2D2D37121212140303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030310101013292929323939394B4747
      475E4B4B4B623E3E3E512C2C2C39161616180404040400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202022121212A474747683B3B3B531515
      1519000000000000000000000000000000000000000000000000060606061E1E
      1E23101010130101010100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909091E1E1E232C2C2C391E1E1E23080808080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606061818181C282828443737375D3F3F
      3F6A3F3F3F6A393939602A2A2A471A1A1A1E0707070700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606061818181C262626413737375D3F3F
      3F6A3F3F3F6A393939602A2A2A471A1A1A1E0707070700000000000000000000
      0000000000000000000000000000000000000000000015151518363636703939
      39C52E2E2E971C1C1C2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F3F3F52363636483D3D3D5A3030303F151515170202
      0202000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020202272727363737377A3F3F3FB7343434E1393939ED3D3D
      3DF43D3D3DF43A3A3AEF353535E2404040BC3B3B3B812B2B2B3B030303030000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020202272727353737377A3F3F3FB7333333DF393939ED3D3D
      3DF43D3D3DF43A3A3AEF353535E2424242BC3B3B3B812B2B2B3B030303030000
      0000000000000000000000000000000000000A0A0A0B3E3E3E7B383838EC3E3E
      3EFE262626F7181818B50909090C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D0E595959D55050508F4343436E3D3D3D5A2323232B0A0A
      0A0A000000000000000001010101010101010101010101010101000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707082B2B2B513B3B3BD2404040F5484848FF484848FF484848FF4848
      48FF484848FF484848FF484848FF464646FF404040F73E3E3ED43030305A0808
      0809000000000000000000000000000000000000000000000000000000000000
      0000070707082B2B2B513C3C3CD0404040F5484848FF484848FF484848FF4848
      48FF484848FF484848FF484848FF464646FF404040F73E3E3ED43131315D0A0A
      0A0B0000000000000000000000000000000029292945323232E1545454FF7676
      76FF555555FF262626FF121212B41A1A1A2C0101010100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000202020250505078525252FE545454D84B4B4B8A4343436F363636491A1A
      1A1D020202024F4F4F686B6B6BF36C6C6CE66C6C6CDE6C6C6CDE5F5F5F8B0000
      0000000000000000000000000000000000000000000000000000000000001515
      1518434343933F3F3FF64D4D4DFF4C4C4CFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4B4BFF4A4A4AFF4B4B4BFF4E4E4EFF404040F82D2D
      2DA0171717220000000000000000000000000000000000000000000000001515
      1518434343933F3F3FF64D4D4DFF4C4C4CFF4A4A4AFF4A4A4AFF4B4B4BFF4B4B
      4BFF4B4B4BFF4B4B4BFF4B4B4BFF4A4A4AFF4B4B4BFF4E4E4EFF404040F82D2D
      2DA0171717220000000000000000000000002525253B323232D54F4F4FFF7474
      74FF727272FF4E4E4EFF181818F71A1A1AA81B1B1B2D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001B1B1B1F5B5B5BC7525252FE515151F9515151B0454545783F3F3F602A2A
      2A340A0A0A0A3333333D6C6C6CD7676767A63A3A3A443535353E232323270000
      0000000000000000000000000000000000000000000000000000060606064343
      4391464646ED4F4F4FFF4E4E4EFF4D4D4DFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4444
      44F32E2E2E9E0808080900000000000000000000000000000000060606064343
      4391464646ED4F4F4FFF4E4E4EFF4D4D4DFF4E4E4EFF4E4E4EFF4F4F4FFF4F4F
      4FFF4F4F4FFF4F4F4FFF4F4F4FFF4E4E4EFF4E4E4EFF4E4E4EFF4E4E4EFF4444
      44F32F2F2FA10A0A0A0B00000000000000000B0B0B0D3232327C343434F05454
      54FE6F6F6FFF707070FF393939FF141414F7111111B50707070B000000000000
      0000000000000101010101010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000047474763555555EF525252FF525252FF545454EA48484881434343713737
      374D17171719080808084E4E4E646E6E6EDC3E3E3E4B00000000000000000000
      00000000000000000000000000000000000000000000000000002929294B4444
      44F4525252FF505050FF505050FF515151FF525252FF525252FF535353FF5353
      53FF535353FF535353FF535353FF525252FF525252FF515151FF505050FF5151
      51FF464646F63232325B030303030000000000000000000000002929294B4444
      44F4535353FF505050FF505050FF515151FF525252FF525252FF535353FF5353
      53FF535353FF535353FF535353FF525252FF525252FF515151FF505050FF5151
      51FF464646F83333335E030303030000000000000000060606062A2A2A5E2626
      26F0404040FF616161FF666666FF3B3B3BFF141414FF141414B72E2E2E623535
      358A292929CF303030F0353535FF2F2F2FD6303030A93A3A3A6A1515151C0303
      0303000000000000000000000000000000000000000000000000000000001B1B
      1B1E5B5B5BBA525252FF525252FF525252FF525252FF525252B94646467C4242
      42682A2A2A340E0E0E0F000000005C5C5C886D6D6DCA3434343C000000000000
      000000000000000000000000000000000000000000002222222D414141C95959
      59FE555555FF535353FF545454FF555555FF565656FF565656FF565656FF5757
      57FF575757FF575757FF575757FF565656FF565656FF555555FF545454FF5454
      54FF575757FF444444D22828283600000000000000002222222D414141C95858
      58FE555555FF535353FF545454FF555555FF565656FF565656FF565656FF5757
      57FF5C5C5CFF7B7B7BFFAAAAAAFF7E7E7EFF565656FF555555FF545454FF5454
      54FF575757FF464646D32A2A2A39000000000000000000000000060606072A2A
      2A7D222222E5373737FF5D5D5DFF595959FF2F2F2FFF202020F92C2C2CEE3737
      37FB464646FE4E4E4EFF505050FF4C4C4CFF474747FE424242F2404040B13131
      314F0909090A0000000000000000000000000000000000000000000000004040
      4053555555F1525252FF525252FF525252FF525252FF535353E74C4C4C914545
      45743838384E1D1D1D21050505051717171A686868AA6C6C6CBA101010110000
      000000000000000000000000000000000000040404043A3A3A714D4D4DF35959
      59FF575757FF575757FF585858FF595959FF595959FF5E5E5EFF767676FF8989
      89FF5A5A5AFF5B5B5BFF5B5B5BFF5E5E5EFF767676FF878787FF585858FF5757
      57FF585858FF4F4F4FF63F3F3F7B06060606030303033939396F4D4D4DF35959
      59FF575757FF575757FF585858FF595959FF595959FF5A5A5AFF5C5C5CFF6B6B
      6BFFACACACFFDFDFDFFFFBFBFBFFA9A9A9FF585858FF595959FF585858FF5757
      57FF585858FF505050F74141417F070707070000000000000000000000000E0E
      0E102929297E191919F0343434FE4A4A4AFF3A3A3AFF353535FF424242FF6C6C
      6CFF6F6F6FFF696969FF676767FF616161FF636363FF555555FF4D4D4DFD4444
      44D82E2E2E5C0000000000000000000000000000000000000000000000005C5C
      5CB4525252FF525252FF525252FF525252FF525252FF525252FA535353B64545
      45723F3F3F604242425A656565AA6B6B6BC16C6C6CDD6A6A6AF95353536A0000
      00000000000000000000000000000000000012121216464646AC5B5B5BFF5959
      59FF595959FF5A5A5AFF5B5B5BFF5C5C5CFF5F5F5FFFA3A3A3FFDADADAFFEDED
      EDFF5B5B5BFF5E5E5EFF5F5F5FFFA3A3A3FFDBDBDBFFECECECFF5A5A5AFF5B5B
      5BFF5A5A5AFF5A5A5AFF4B4B4BB71818181C12121216454545AB5C5C5CFF5959
      59FF595959FF5A5A5AFF5B5B5BFF5C5C5CFF5D5D5DFF5F5F5FFF868686FFCACA
      CAFFF8F8F8FFFFFFFFFFFFFFFFFFACACACFF5B5B5BFF5C5C5CFF5C5C5CFF5B5B
      5BFF5A5A5AFF5A5A5AFF4A4A4AB91919191D0000000000000000000000000000
      0000060606062828285E161616F02A2A2AFF363636FF575757FF8A8A8AFF9E9E
      9EFFCFCFCFFFE9E9E9FFEDEDEDFFDDDDDDFFAAAAAAFF808080FF575757FF5555
      55FF535353FA2626263F020202020000000000000000000000002F2F2F385252
      52FD525252FF525252FF525252FF525252FF525252FF525252FF565656E84A4A
      4A733C3C3C563F3F3F5B4E4E4E6E4B4B4B634949495E4949495E2A2A2A300000
      0000000000000000000000000000000000002A2A2A37545454DA606060FF5D5D
      5DFF5D5D5DFF5E5E5EFF686868FF939393FFD8D8D8FFFEFEFEFFFFFFFFFFFFFF
      FFFF686868FF949494FFDADADAFFFEFEFEFFFFFFFFFFFFFFFFFF5E5E5EFF5E5E
      5EFF5E5E5EFF5F5F5FFF4A4A4ADF2A2A2A4129292936535353D9616161FF5D5D
      5DFF5D5D5DFF5E5E5EFF5F5F5FFF636363FF797979FFC7C7C7FFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAEFF5F5F5FFF606060FF5F5F5FFF5E5E
      5EFF5E5E5EFF5F5F5FFF4A4A4AE12B2B2B440000000000000000000000000000
      00000000000006060607161616B5323232FF505050FF898989FFB7B7B7FFE1E1
      E1FFEFEFEFFFF1F1F1FFEFEFEFFFEEEEEEFFEBEBEBFFD4D4D4FF797979FF5959
      59FF595959FF4C4C4CB1191919200000000000000000070707075858589C5252
      52FE535353F7585858E0525252FE525252FE555555DF525252FC525252FF5B5B
      5BAE2A2A2A332F2F2F3E2626262E0B0B0B0C0000000000000000000000000000
      0000000000000000000000000000000000003333334F525252E6656565FF6060
      60FF636363FF787878FFBDBDBDFFEBEBEBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
      FFFFBDBDBDFFEBEBEBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF616161FF6161
      61FF616161FF636363FF555555EC3B3B3B5B3232324D525252E5666666FF6060
      60FF616161FF616161FF6D6D6DFF9E9E9EFFD8D8D8FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B0B0FF626262FF636363FF626262FF6161
      61FF616161FF636363FF575757ED3C3C3C5D0000000000000000000000000000
      00000000000002020203292929DB404040FF767676FFAFAFAFFFE4E4E4FFF0F0
      F0FFF2F2F2FFEEEEEEFFEEEEEEFFEEEEEEFFEFEFEFFFF0F0F0FFCACACAFF6F6F
      6FFF595959FF5B5B5BEA3B3B3B5800000000000000002F2F2F37595959D95555
      55F2575757925252527F525252FE525252FE5252529E545454AD555555EE5656
      56F53030303C1B1B1B1F1D1D1D210D0D0D0E0101010100000000000000000000
      0000000000000000000000000000000000003D3D3D5F5B5B5BEE686868FF6464
      64FF909090FFD5D5D5FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF656565FF6565
      65FF636363FF666666FF5E5E5EF3454545693A3A3A59595959EB686868FF6262
      62FF636363FF646464FF9E9E9EFFEFEFEFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2FF676767FF686868FF666666FF6565
      65FF636363FF656565FF5F5F5FF44545456A0000000000000000000000000000
      00000000000027272742343434FE565656FF898989FFE9E9E9FFF0F0F0FFF3F3
      F3FFEDEDEDFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF5F5F5FFF9F9F9FFABAB
      ABFF5B5B5BFF686868FF4A4A4A970A0A0A0B08080808565656895A5A5AD73C3C
      3C4E080808083F3F3F52525252FE525252FF5151519A404040613E3E3E555B5B
      5BA95A5A5AA41111111208080808050505050000000000000000000000000000
      0000000000000000000000000000000000003F3F3F5F5F5F5FEE6E6E6EFF7070
      70FFBCBCBCFFF9F9F9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6EFF6E6E
      6EFF6B6B6BFF6D6D6DFF656565F2454545683B3B3B595E5E5EEB6F6F6FFF6868
      68FF6A6A6AFF6D6D6DFF8C8C8CFFD1D1D1FFF6F6F6FFFEFEFEFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B6B6FF717171FF727272FF6F6F6FFF6E6E
      6EFF6B6B6BFF6D6D6DFF646464F3454545680000000000000000000000000000
      0000000000004141416F373737FE626262FFA5A5A5FFECECECFFF2F2F2FFEFEF
      EFFFEDEDEDFFEDEDEDFFEEEEEEFFF0F0F0FFF7F7F7FFFDFDFDFFFEFEFEFFCBCB
      CBFF636363FF696969FF606060B41717171A20202025565656883232323C0101
      0101000000003A3A3A49525252FE525252FF5151519D40404061282828311414
      1416474747602828282F01010101000000000000000000000000000000000000
      0000000000000000000000000000000000003333334D606060E5787878FF7171
      71FF898989FFBABABAFFEEEEEEFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEFEFEFFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575FF7676
      76FF737373FF767676FF636363EA3A3A3A583232324B5F5F5FE4787878FF7070
      70FF727272FF757575FF797979FF8C8C8CFFB4B4B4FFE9E9E9FFFBFBFBFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B9B9FF797979FF7A7A7AFF777777FF7676
      76FF737373FF767676FF656565EC3C3C3C5B0000000000000000000000000000
      0000000000004B4B4B7F3A3A3AFE6E6E6EFFB1B1B1FFEDEDEDFFF2F2F2FFEDED
      EDFFEDEDEDFFEEEEEEFFEFEFEFFFF6F6F6FFFDFDFDFFFFFFFFFFFEFEFEFFD8D8
      D8FF656565FF6B6B6BFF696969BF1C1C1C20141414151818181B010101010000
      00000000000035353540525252FE525252FF525252A040404062292929320A0A
      0A0A494949645F5F5FB22121212400000000000000002828282F5E5E5EB94242
      42570000000000000000000000000000000029292936666666D9818181FF7777
      77FF7A7A7AFF818181FFA6A6A6FFD9D9D9FFFBFBFBFFFEFEFEFFFFFFFFFFFFFF
      FFFFA7A7A7FFDBDBDBFFFBFBFBFFFEFEFEFFFFFFFFFFFFFFFFFF7D7D7DFF7D7D
      7DFF7B7B7BFF7E7E7EFF5D5D5DDE2A2A2A3F27272732656565D6828282FF7777
      77FF797979FF7C7C7CFF808080FF818181FF858585FFA2A2A2FFD2D2D2FFFAFA
      FAFFFEFEFEFFFEFEFEFFFFFFFFFFBDBDBDFF818181FF828282FF808080FF7D7D
      7DFF7B7B7BFF7E7E7EFF5F5F5FDF2B2B2B410000000000000000000000000000
      0000000000004747477A3D3D3DFE646464FFABABABFFEFEFEFFFF1F1F1FFEDED
      EDFFEEEEEEFFEFEFEFFFF3F3F3FFFEFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3
      D3FF656565FF6F6F6FFF6B6B6BBC1B1B1B1E0000000000000000000000000000
      0000000000002F2F2F37525252FE525252FF515151A5414141642B2B2B350B0B
      0B0C3232323B595959E44F4F4F6C1D1D1D201D1D1D205A5A5A925C5C5CDD3535
      353E0000000000000000000000000000000010101013535353A68A8A8AFE8383
      83FF858585FF878787FF8A8A8AFF8E8E8EFFACACACFFE4E4E4FFF9F9F9FFFEFE
      FEFF8D8D8DFF929292FFAFAFAFFFE4E4E4FFF9F9F9FFFDFDFDFF888888FF8888
      88FF858585FF898989FF5B5B5BB31515151910101013535353A6898989FE8383
      83FF858585FF878787FF8A8A8AFF8B8B8BFF8D8D8DFF8F8F8FFF909090FFA5A5
      A5FFDFDFDFFFF6F6F6FFFEFEFEFFC1C1C1FF8B8B8BFF8D8D8DFF8A8A8AFF8888
      88FF858585FF898989FF5D5D5DB61818181B0000000000000000000000000000
      000000000000343434583C3C3CFE595959FF909090FFEEEEEEFFF1F1F1FFEEEE
      EEFFEEEEEEFFF0F0F0FFF8F8F8FFFEFEFEFFFFFFFFFFFFFFFFFFFAFAFAFFB9B9
      B9FF5F5F5FFF777777FF5F5F5FA5101010120000000000000000000000000000
      0000000000002727272D525252FE525252FF535353AA414141652C2C2C370B0B
      0B0C171717195F5F5FB25A5A5ADB5D5D5DBF5D5D5DBF585858E65E5E5EB30E0E
      0E0E00000000000000000000000000000000020202024040406C7A7A7AF19494
      94FF8C8C8CFF8E8E8EFF919191FF929292FF959595FFA6A6A6FFC6C6C6FFD4D4
      D4FF979797FF989898FF989898FFA7A7A7FFC5C5C5FFD0D0D0FF909090FF8F8F
      8FFF919191FF7D7D7DF44646467705050505020202023E3E3E6A767676EF9393
      93FE8D8D8DFF8E8E8EFF919191FF929292FF949494FF969696FF979797FF9898
      98FFA4A4A4FFC1C1C1FFDDDDDDFFB6B6B6FF949494FF949494FF919191FF8F8F
      8FFF919191FF808080F547474779050505050000000000000000000000000000
      0000000000001212121F3A3A3AFD4F4F4FFF686868FFDDDDDDFFF0F0F0FFEEEE
      EEFFEFEFEFFFF1F1F1FFFAFAFAFFFEFEFEFFFEFEFEFFFEFEFEFFEFEFEFFF9191
      91FF5C5C5CFF7F7F7FFA5353537F030303030000000000000000000000000000
      00000000000020202025525252FE525252FF535353AF414141662D2D2D380B0B
      0B0D0404040452525279575757EC3B3B3B494D4D4D6D585858E65050506F0000
      000000000000000000000000000000000000000000002222222B5A5A5AC4A0A0
      A0FE979797FF959595FF989898FF999999FF9B9B9BFF9D9D9DFFA0A0A0FFA3A3
      A3FF9F9F9FFF9F9F9FFF9E9E9EFF9D9D9DFF9E9E9EFF9E9E9EFF989898FF9898
      98FFA0A0A0FF5F5F5FCC27272732000000000000000020202029585858C1A1A1
      A1FE979797FF959595FF989898FF999999FF9B9B9BFF9D9D9DFF9E9E9EFF9F9F
      9FFF9F9F9FFFA1A1A1FFA6A6A6FFA1A1A1FF9C9C9CFF9B9B9BFF989898FF9797
      97FFA1A1A1FF626262CF29292934000000000000000000000000000000000000
      000000000000000000002D2D2DA5434343FB5F5F5FFF828282FFD6D6D6FFEEEE
      EEFFEFEFEFFFF3F3F3FFFDFDFDFFFEFEFEFFFCFCFCFFF6F6F6FF9F9F9FFF5D5D
      5DFF6D6D6DFF7B7B7BD228282836000000000000000000000000000000000000
      0000000000001A1A1A1C525252FE525252FF545454B4414141672D2D2D3A0E0E
      0E0F000000002D2D2D345A5A5AD8383838434F4F4F73575757E91818181B0000
      00000000000000000000000000000000000000000000000000002B2B2B437979
      79F0A6A6A6FFA2A2A2FFA2A2A2FFA3A3A3FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA6A6A6FFA5A5A5FFA4A4A4FFA3A3A3FFA5A5
      A5FF7F7F7FF53030304B000000000000000000000000000000002A2A2A417878
      78F0A6A6A6FFA2A2A2FFA2A2A2FFA3A3A3FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8
      A8FFA8A8A8FFA8A8A8FFA8A8A8FFA6A6A6FFA5A5A5FFA4A4A4FFA3A3A3FFA5A5
      A5FF818181F63434345102020202000000000000000000000000000000000000
      0000000000000000000028282846383838D64C4C4CFF5E5E5EFF878787FFC1C1
      C1FFE6E6E6FFF1F1F1FFF9F9F9FFF3F3F3FFD9D9D9FFA7A7A7FF5C5C5CFF6969
      69FF8D8D8DFD4C4C4C790B0B0B0C000000000000000000000000000000000000
      00000000000012121213525252FE525252FF545454B7414141652D2D2D3A0E0E
      0E0F000000000B0B0B0B5D5D5DB15E5E5EA15D5D5DA75F5F5FB4010101010000
      0000000000000000000000000000000000000000000000000000040404045353
      53888A8A8AECB0B0B0FFABABABFFAAAAAAFFABABABFFADADADFFAEAEAEFFAFAF
      AFFFAFAFAFFFAFAFAFFFAEAEAEFFADADADFFACACACFFACACACFFAFAFAFFF8A8A
      8AEC585858900606060600000000000000000000000000000000030303035151
      5185898989EAAFAFAFFFABABABFFAAAAAAFFABABABFFADADADFFAEAEAEFFAFAF
      AFFFAFAFAFFFAFAFAFFFAEAEAEFFADADADFFACACACFFACACACFFAFAFAFFF8A8A
      8AEC585858920707070700000000000000000000000000000000000000000000
      000000000000000000000808080935353576444444F0515151FE585858FF6565
      65FF878787FF999999FFA2A2A2FF8B8B8BFF6F6F6FFF595959FF676767FE8989
      89FD666666C50F0F0F1200000000000000000000000000000000000000000000
      0000000000000C0C0C0C525252FE525252FF575757B4393939502727272F0A0A
      0A0B000000000000000047474762575757EC5A5A5AE24B4B4B62000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      151756565688898989F1BDBDBDFEB8B8B8FFB2B2B2FFB3B3B3FFB4B4B4FFB5B5
      B5FFB5B5B5FFB5B5B5FFB5B5B5FFB3B3B3FFB7B7B7FFBEBEBEFE8D8D8DF55B5B
      5B90151515170000000000000000000000000000000000000000000000001313
      131554545485888888F1BDBDBDFEB8B8B8FFB2B2B2FFB3B3B3FFB4B4B4FFB5B5
      B5FFB5B5B5FFB5B5B5FFB5B5B5FFB3B3B3FFB7B7B7FFBEBEBEFE8E8E8EF55B5B
      5B90151515170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606062D2D2D55404040DD535353FB5959
      59FF5A5A5AFF5A5A5AFF5A5A5AFF5D5D5DFF676767FF747474FF848484EA5454
      54931515151C0000000000000000000000000000000000000000000000000000
      00000000000000000000525252FD525252FF5A5A5AA51B1B1B1F101010110303
      030300000000000000000E0E0E0E5A5A5AD5606060BE23232327000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404042E2E2E43707070C4A2A2A2F2BDBDBDFEC2C2C2FFC4C4C4FFC6C6
      C6FFC6C6C6FFC4C4C4FFC3C3C3FFBEBEBEFFA4A4A4F3747474C93232324B0505
      0505000000000000000000000000000000000000000000000000000000000000
      0000020202022C2C2C406F6F6FC4A0A0A0F2BDBDBDFEC2C2C2FFC4C4C4FFC6C6
      C6FFC6C6C6FFC4C4C4FFC3C3C3FFBEBEBEFFA4A4A4F3747474C93232324B0505
      0505000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030329292948434343995252
      52D25C5C5CEE686868F9707070FF6E6E6EF06E6E6EE0696969BC3C3C3C5E1515
      1518000000000000000000000000000000000000000000000000000000000000
      000000000000000000005B5B5BD55B5B5BD05454548205050505020202020000
      00000000000000000000000000002D2D2D362828282F07070707000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323232B4A4A4A6C6A6A6AA5949494DA9C9C9CE6A7A7
      A7EFA6A6A6EF9C9C9CE7949494DA707070AC4C4C4C6F2626262E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002323232B4A4A4A6C6A6A6AA5949494DA999999E5A7A7
      A7EFA6A6A6EF9C9C9CE7949494DA707070AC4D4D4D712626262E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E102626
      26323F3F3F5F515151755B5B5B7F45454563323232451B1B1B20000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002525252B242424281616161800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303101010132D2D2D373D3D3D4F4A4A
      4A604A4A4A603C3C3C502D2D2D37141414160303030300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003030303101010132D2D2D363A3A3A4D4A4A
      4A604A4A4A603C3C3C502D2D2D37141414160404040400000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FE007FFFFFFF000000000000F8001FFF
      FFFF000000000000F0000FFFFFFF000000000000E00007FFFFFF000000000000
      C00003FFFFFF000000000000800001F8000F000000000000800001F0000F0000
      00000000000000E00003000000000000000000C00003000000000000000000C0
      0003000000000000000000C00003000000000000000000C00003000000000000
      000000C00003000000000000000000C00003000000000000000000C000030000
      00000000000000E00003000000000000000000F8000F000000000000800001FE
      007F000000000000C00003FE007F000000000000C00003FE007F000000000000
      E00007FE007F000000000000F0000FFFFFFF000000000000FC003FFFFFFF0000
      00000000FE007FFFFFFF000000000000FE007FFFFFFFFFFFBFFFFFFFF8001FFF
      FFFFE00007FFFFFFF0000FFFFFFFC00007FFFFFFE00007800001800003FFFF0F
      C00003000000800001FFFF07800003800001800001000303800001FC01FF8000
      010003C1000000FC01FF8000010003C0000000F801FF8000010003C0000000E0
      007F800001000FC0000000E0007F800001000FC0000000C0003F800001000FC0
      000000C0003F800001000100000000C0001F800001000000000000E0600F8000
      01000000000000F0F007800001000000000000FBF003800001000001800001FF
      F803800001000001800003FFFC018000011C0007C00003FFFE018000031E0007
      E00007FFFE03800003FFC01FF0000FFFFF8FE00007FFFFFFFC003FFFFFFFF000
      0FFFFFFFFE007FFFFFFFFFFFFFFFFFFFFE007FFE007FFFFFFFFFFFFFF8001FF8
      001FFFFFFFC4001FF0000FF0000FFF81FF800007E00007E00007FF01FF800003
      C00003C00003FF01FF800003800003C00001FF01FFC0003F800001800001FF01
      FFE003FF000000000000FF01FFE001FF000000000000FF01FFE001FF00000000
      0000800003E0007F000000000000800003E0003F000000000000800003F0003F
      000000000000800003F8000F000000000000800003FC00070000000000008000
      03FC0007000000000000800003FF0001000000000000C00007FF800080000180
      0001FF01FFFF8000C00003C00001FF01FFFFE000C00003C00003FF01FFFFF000
      E00007E00007FF01FFFFF001F0000FF0000FFF01FFFFFC03FC003FFC001FFF81
      FFFFFE07FE007FFE007FFFFFFFFFFE0FC3FFFFFC1FFFFE007FFE007F83FFFFFC
      0FFFF8001FF8001F01FFFFF80C3FF0000FF0000F007FFFF0001FE00007E00007
      007FFFF0001FC00003C000030039FFF0007FC00001C0000180000FE0023F8000
      01800001C00007E0001F000000000000E00007E0001F000000000000F00001C0
      001F000000000000F800018000FF000000000000F8000180007F000000000000
      F800000000FF000000000000F800000801FF000000000000F8000018018F0000
      00000000F80000F8000F000000000000F80000F8000F000000000000F80000F8
      001F800001800001FC0001F8081FC00003C00001FC0001F8081FC00003C00003
      FC0003F80C3FE00007E00007FE0007FC0C3FF0000FF0000FFF000FFC1E3FFC00
      3FFC003FFFC03FFC7FFFFE007FFE007F00000000000000000000000000000000
      000000000000}
  end
  object BalloonHintModelo: TBalloonHint
    Left = 320
    Top = 48
  end
  object imgPop24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 352
    Top = 48
    Bitmap = {
      494C01010F001800D80018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060637080808410808084108080841080808410808
      0841080808410808084108080841080808410808084106060637000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003A3B3C6A36373A8700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000848181ECC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2
      C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FFC3C2C1FF868482ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002121212E2C2F33F52E3034FF33343679000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000019E9C9BFEF5F5F5FFCECECEFFC1C1C1FFC1C1C1FFC1C1
      C1FFC1C1C1FFC1C1C1FFC1C1C1FFCDCDCDFFF5F5F5FF9F9E9DFF000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B0D38393DD835373BFF34363AFF2D3034FF3F40416B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A2C21088D675221FA535251FF717170FF6D6D6CFF6C6B6AFF6C6B6AFF6C6B
      6AFF6C6B6AFF6C6B6AFF6C6B6AFF6D6D6CFF717170FF535251FF675221FA2D22
      0A8F0000000A0000000000000000000000000000000000000000000000000000
      000000000000414346A337393DFF37393DFF36383CFF35373BFF2E3034FC2728
      295F000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020100111D1605632D22
      0B926C541EE45A4926FF575655FF777776FF6F6F6EFF6D6C6BFF6D6C6BFF6D6C
      6BFF6D6C6BFF6D6C6BFF6D6C6BFF6F6F6EFF777776FF575655FF5A4926FF6C53
      1EE42D230D931C15056404010012000000000000000000000000000000000000
      00003738396536383DFF3B3D41FF3A3C40FF383A3EFF37393DFF36383CFF2E31
      35FA313131510000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001D1605638A6C2DEEA382
      37FEA38338FF826B38FF777675FF9F9F9EFF9F9F9EFF9F9F9EFF9F9F9EFF9F9F
      9EFF9F9F9EFF9F9F9EFF9F9F9EFF9F9F9EFF9F9F9EFF777676FF826A38FFA382
      38FFA58438FF8A6C2EEE1C150564000000000000000000000000000000001F1F
      1F2C383A3DF43E4044FF3D3F42FF3D3E42FF393B3FFF393B3FFF37393DFF3638
      3CFF2D3033F62B2B2B4300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F190A7FAD8A39FFA876
      05FFA57200FF815800FF745000FF745000FF745000FF745000FF745000FF7450
      00FF745000FF745000FF745000FF745000FF745000FF745000FF785300FF9D6C
      00FFA07004FFAD8A39FF211B0C800000000000000000000000000B0B0B0C3D3E
      42D6424447FF414347FF3B3D41FF393B3EC438393B8E35373BF93A3C40FF3739
      3DFF36383CFF2F3134F21D1D1E39000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000211B0B7FB4903CFFAF79
      01FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A
      02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FFAF7A02FF896816FF6B70
      56FF846516FFB5903CFF231D0D800000000000000000000000004344469F4446
      49FF404145FF35373ACE2223244C01010101000000001E1F1F3937383DDC393B
      3FFF37393DFF36383CFF2D2F33ED2121212F0000000000000000000000000000
      000000000000000000000000000000000000050F0DFF070403FF061D1BFF0100
      00FF050304FF05120FFF062122FF070302FF020000FF051C1BFF051919FF0523
      26FF060E0AFF060706FF062524FF050103FF060101FF041213FF010000FF0902
      00FF010201FF012121FF050505FF030102FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000241C0C7FBD9841FFBC8A
      15FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B
      17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FFBE8B17FF9C7822FF8D7B
      41FF9A7620FFBD9741FF261E0E800000000000000000393B3B613F4044FF393C
      40D82B2D2E5900020203000000000000000000000000000000000909090F3B3B
      3D9F35373BFF37393DFF35373BFF333538E71919192500000000000000000000
      000000000000000000000000000000000000085052FF060F0FFF04A5A1FF0402
      02FF093B3FFF086366FF05AAAAFF040000FF040000FF06CBC9FF076767FF08E3
      E2FF064540FF03292BFF0AEDEFFF080104FF051415FF0A9997FF060001FF0203
      05FF0D787AFF05F3F1FF05C8C7FF030200FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000261E0E7FC6A14BFFCEA1
      3BFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA3
      3EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA33EFFCFA3
      3EFFCDA038FFC6A14AFF28200F80000000002525252E333538D92D2D2F660404
      0407000000000000000000000000000000000000000000000000000000000000
      000024242559333539ED35383CFF33363AFF2E3134E11313131F000000000000
      000000000000000000000000000000000000035052FF010F0FFF02AAAAFF0401
      01FF07B4B4FF046665FF08585BFF073539FF043032FF06F0EDFF091F20FF02EA
      EAFF004645FF012A29FF01F3F2FF030001FF085656FF0AE6E4FF010C0BFF0441
      42FF03F0EEFF033030FF08ADA9FF09060AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028200F7FCEA953FFDBB4
      59FFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB7
      5FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB75FFFDDB7
      5FFFDAB356FFCEA952FF2A221180000000002B2C2C4E0404040B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001111111F353639BF323438FF313438FF323437DB101010190000
      000000000000000000000000000000000000005152FF000D0EFF00ABACFF093A
      39FF06F1F1FF006665FF02181AFF0AF5F5FF09F7F7FF06BCBCFF050102FF01EA
      ECFF004645FF012A2AFF00F7F5FF010000FF029FA0FF03EBE9FF013D3DFF049A
      99FF01B0AEFF000000FF022728FF022D2BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B22107FD6B15CFFE6C4
      78FFEACD8CFFEBD196FFEBD297FFEBD297FFEBD297FFEBD297FFEBD297FFEBD2
      97FFEBD297FFEBD297FFEBD297FFEBD297FFEBD297FFEBD297FFEBD197FFEACD
      8DFFE5C375FFD6B05AFF2D241280000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202033233347A2D2F34F8303236FF363639D21010
      101300000000000000000000000000000000005152FF000D0EFF00ABABFF05B6
      B5FF04B0AFFF006665FF010201FF06A0A3FF051D20FF046869FF060002FF01EA
      ECFF004544FF012A2AFF00F7F5FF010000FF07E7E8FF03B5B6FF038687FF06BB
      BCFF048887FF000000FF010D0DFF014F4CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D24117FDDB761FFEED5
      9AFFC8BDA3FF807C79FF757373FF757373FF757373FF757373FF757373FF7573
      73FF757373FF757373FF757373FF757373FF757373FF757373FF807B78FFC8BC
      A2FFEDD395FFDCB65FFF2F261380000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1C1C34313235D92B2D32FF3436
      38C70808080E000000000000000000000000005152FF010D10FF01ADA9FF0AF4
      F1FF073034FF006665FF010000FF08E4E7FF05393BFF021D1FFF000000FF01EB
      ECFF024543FF012A2AFF02F7F3FF034146FF02E9E9FF036666FF03D4D4FF03B2
      B0FF038D8EFF050102FF041111FF074444FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B220F77D0AC5AFAF0D7
      9FFFCDC3B0FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2
      A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFA4A2A1FFCCC1
      ADFFEFD498FFD0AC58FB2D240F78000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000808090E36373A9A2729
      2DFF353839BD060606090000000000000000005152FF000E0FFF06AAAAFF04AF
      ABFF060304FF006665FF010000FF05E9EBFF04C3C3FF000204FF000000FF01EB
      EBFF024544FF012A2AFF03F6F3FF029192FF06B2B3FF022325FF07F0F0FF0976
      78FF06D0CFFF040200FF064F51FF041715FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0A002497762BC0DCBB
      73FEC4B593FFA3A1A0FF9D9A99FF9D9A99FF9D9A99FF9D9A99FF9D9A99FF9D9A
      99FF9D9A99FF9D9A99FF9D9A99FF9D9A99FF9D9A99FF9D9A99FFA3A1A0FFC3B4
      91FFDBBB71FE99762DC20E0A0024000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      2A5327292DEA313337B00404040500000000045352FF020E0EFF09AAACFF0636
      3AFF050100FF006466FF020000FF06AFB2FF02F9FBFF040000FF058E8AFF01F6
      F7FF01B4B4FF05494BFF03F5F5FF06D5D4FF046667FF050102FF06C7C9FF0914
      17FF06DCDAFF04A2A1FF07E9E9FF080102FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000603000C644F
      22AE6D6147DE918E8DFF7B7979FFC8C8C7FFC4C4C3FFC1C0C0FFBDBDBCFFBAB9
      B8FFB5B4B3FFB1AFAFFFACABAAFFA7A5A4FFA2A09EFF706E6EFF918E8DFF6D61
      47DE644F23AF0503000D00000000000000003835306A3B37306B2F2F2D4F0E0E
      0E163A36316F3A36306A3A36306A33322F723A37306B3A36306A3D38316C2926
      236218181A340000000000000000000000001C1C1C433A312589352B1C932726
      24571414151F313336BB3F4042A202020202033330FF05090BFF056668FF0501
      02FF080000FF073E3FFF050101FF064446FF079394FF050506FF058B8BFF0299
      98FF029998FF033739FF069396FF089394FF061719FF070303FF065555FF0403
      02FF081F1EFF069394FF065157FF020001FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F9A9796FF898787FFE7E7E6FFE4E4E3FFE1E0E0FFDEDEDDFFDBDA
      D9FFD7D6D6FFD3D2D1FFCFCECDFFCBCAC9FFC6C5C4FF807D7DFF9A9796FF1E1E
      1E800000000000000000000000000000000036312A82764F18E41E1F1F340808
      080E493F31A2B06500FF7D5620DF2424244C6F4F23D2B06700FF433624AB694C
      23CD9E5C01FF4E453A8A030303035B4C3AA5A15F00FF48381FB125231E674839
      25AD54422BBB04040406323335762D2D3096000100FF050102FF040100FF0400
      00FF010000FF020100FF020000FF070200FF020100FF030101FF050000FF0101
      00FF010100FF030100FF030101FF050302FF010200FF020000FF060000FF0504
      02FF030201FF030201FF040101FF040000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1E1E7FA2A09EFF908F8EFFF0F0F0FFEFEFEEFFEDECECFFEBEAEAFFE8E8
      E7FFE5E5E5FFE3E3E2FFE0DFDEFFDCDBDBFFD9D8D8FF8B8989FFA2A09EFF2120
      20800000000000000000000000000000000001010102634E2BCF453F3290453C
      318A7A521AE2A96200FF3C3A376200000000422F11B6B8740AFF292726592526
      263FA15E00FF855209F32F2E2D65B6750DFF795927D702020203000000000000
      00003433327A0303040D0000000014141521000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1E1E78A09E9DFB999796FFF6F6F6FFF5F5F5FFF4F4F4FFF3F3F3FFF3F3
      F3FFF1F0F0FFEFEFEFFFEDEDEDFFEBEAEAFFE9E9E9FF959493FFA09E9DFB1F1F
      1E790000000000000000000000000000000000000000403D3862554425C63530
      2994B16F07FF805618E80608080900000000463316B7C38419FF312F2D755046
      3799AF6700FF644B2BC15C4C33ACCC8C1FFF5649369D00000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005050533201F1F789C9B9AFEF3F3F3FFF4F4F4FFF5F5F5FFF6F6F6FFF6F6
      F6FFF5F5F5FFF5F5F5FFF4F4F4FFF3F2F2FFF1F1F1FF9E9C9BFF21211F790505
      05330000000000000000000000000000000000000000060608096E5731DA6C58
      36CBBE7B0FFF4842378200000000000000004B381BB7CF9329FF6A5227DDA56C
      11FB6C4A15F31B1B1C2B5E4E32B1D79B2FFF4740319300000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A09E9DFEEBEAEAFFEDECECFFEFEFEEFFF1F0F0FFF3F2
      F2FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FFA4A2A2FF000000010000
      000000000000000000000000000000000000000000000000000049463E7CC086
      21FF9B6A1BF61414151A00000000000000004C3C1EB7D69B32FF2A2928584640
      3683BD7607FF5E4D37A843413C6ADCA339FF705F3CBD00000000000000000000
      0000453E359D0707071D0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000094928FF4CFCECCFFD0CFCEFFD2D1D0FFD3D2D2FFD5D4
      D3FFD6D6D5FFD7D7D6FFD9D8D8FFDBDAD9FFDCDBDBFF999796F5000000000000
      000000000000000000000000000000000000000000000000000010101215A376
      27F4594C38A00000000000000000010101026D5B3ABBDCA339FF323130745B4A
      31B1BC760AFF4E45388E0707070873603CC8CA9737FD31302D6C0C0C0D142C2B
      286185530BFA070809200000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B19196C2423237F2423237F2423237F2423237F2423
      237F2423237F2423237F2423237F2423237F2423237F1A1A196D000000000000
      0000000000000000000000000000000000000000000000000000000000004C45
      3B922423233400000000000000002F2E2D78705E3EC478643CC4675435C46550
      2EBB3C362C840A0A0A0B000000000808080D403A30837A5D2CDD695026ED5748
      2EAE4B3E2BC40707081F0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001616
      161D0404040500000000000000000C0C0C0E1010101510101015101010140A0A
      0A0D00000000000000000000000000000000010101012020212F292A2A3F0808
      080A1B1B1C28060606090000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000120C
      0D40000000190000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000040000000B000000130808
      0445090803470908034709080347090803470908034709080347090803470908
      0347090803470908034709080347090803470908034709080347090803470908
      034708080445000000140000000D000000040000000000000000000000000000
      00000000000000000000020202040F0F0F222C2C2D555F5F5F99868686C29D9D
      9ED6A5A5A5DC969697D17F7F7FB64C4D4D7C2121224208080915000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006758
      58B3080404680000003500000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010101010201010102000000030000
      0003010101020101010201010102010101020000000100000001000000000000
      000000000000000000000000000000000000000000030000000E0000001F9476
      35FCAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA89
      3BFFAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA893BFFAA89
      3BFF947735FC0000002200000011000000030000000000000000000000000000
      00000000000000000001343536637E7F7FC3B6B7B7F6CCCCCDFED6D6D7FFDADA
      DBFFD9DADAFFD8D8D9FFECECEDFFE2E2E2FDB9B9BBE86C6E6EA71313132B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000301010AA597
      98F5241919890000003D00000031000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      020D030303180000001E0000002300000027000000290000012B0000012C0000
      002C0000002A00000025000000290000002900000028000000240000001E0303
      03190202020D000000000000000000000000000000000000000000000001A684
      36FED09C27FFCB920EFFCB920EFFCB920EFFCB920EFFCB920EFFCB920EFFCB92
      0EFFCB920EFFCB920EFFCB920EFFCB920EFFCB920EFFCB920EFFCB920EFFCF9C
      26FFA88536FF0000000300000000000000000000000000000000000000000000
      000000000000242424479F9F9FEBB7B8B8FFC0C1C1FFCDCDCEFFD5D5D6FFD9DA
      D9FFDADADAFFD9D9DAFFE4E4E5FFD4D4D4FFCBCCCCFFB3B3B4FD6C6E6EB40D0D
      0D1D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005040426B5AB
      ABFE2C2121B8000000420000004A000000380000002E00000024000000190000
      000E000000030000000000000000000000000000000000000000000000000303
      030E030303190000001F0000002400000027000000290000002A0000012B0000
      002B0308034E194D22B1050F074D0707072700000027000000240000001F0202
      021A0303030E000000000000000000000000000000000000000000000000A684
      36FECD981FFFC68A00FFC68A00FFC68A00FFC68A00FFC68A00FFC68A00FFC68A
      00FFC68A00FFC68A00FFC68A00FFC68A00FFC68A00FFC68A00FFC68A00FFCC98
      1EFFA88536FF0000000100000000000000000000000000000000000000000000
      000003030305747474AFACACADFEB4B5B5FFBEBFBFFFCBCCCCFFD4D4D5FFD8D8
      D9FFD9D9DAFFD8D8D9FFD3D3D4FFC5C5C5FFB6B7B7FFAFAFB0FF9FA0A1ED3C3D
      3D5D000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005030332B6AC
      ADFE2E2222BE0000004C000000450000003E000000360000002F000000270000
      0020000000170000000500000000000000000000000000000000000000000000
      0000000000000000000000000000010101010101010101010102010101020101
      0102151B1634288744E8217139C3181F1A2A0101010100000000000000000000
      000000000000000000000000000000000000000000000000000000000000A381
      36FEC9951FFFC18600FFC9961EFFE1C480FFE1C480FFE1C480FFE1C480FFE1C4
      80FFE1C480FFE1C480FFE1C480FFE1C480FFE1C480FFCA961FFFC18600FFC894
      1EFFA48336FF0000000100000000000000000000000000000000000000000000
      0000010101025E5E608FACACADFEB1B2B3FFBBBCBCFFC6C7C7FFCECECFFFD1D1
      D2FFD0D0D1FFCBCBCCFFC5C6C6FFBCBDBDFFB2B3B4FFACACADFF969696DE3030
      3042000000000101010100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009060621B7AD
      ADFE2C2121AD000000350000003A000000380000003000000029000000210000
      001A000000110000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009120D1820402F563364
      4887387A53AD299D57F42BA45BFF2B7E4CBE232C273300000000000000000000
      000000000000000000000000000000000000000000000000000000000000A180
      36FEC5931FFFBD8400FFCDA33FFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
      FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFCDA341FFBD8400FFC492
      1EFFA28136FF0000000100000000000000000000000000000000000000000000
      0000000000001414141B878788C4ACACADFDB3B4B4FEB7B8B9FFA6A7A8FFA4A5
      A6FFA5A6A7FFA8A8A9FFBABABBFFC3C3C4FFBFBFBFFFBDBDBDFFA2A3A3CE6F70
      70807D7D7E8D8383849A39393953050505060000000000000000000000000000
      000000000000000000000000000000000000000000000000000009070725B7AD
      AEFE37282899000000000000000B0000002E0000002A000000230000001C0000
      00150000000D0000000200000000000000000000000000000000000000000000
      0000000000000000000002020202121C1723185E398828A665F22AAF6AFF2AAF
      6AFF2AAF6AFF2AB06BFF2AB06BFF2AAF6AFF239359D62F41374B010101010000
      0000000000000000000000000000000000000000000000000000000000009E7F
      36FEC39326FFBC860BFFB4810BFFA0720AFFA0720AFFA0720AFFA0720AFFA072
      0AFFA0720AFFA0720AFFA0720AFFA0720AFFA0720AFFB4810BFFBC850BFFC292
      25FFA07E36FF00000001000000000000000007070707232323242929292C3131
      31343C3C3C3F4949494E60606074A7A7A8D7C0C0C1FDBFBFC0FFB9B9BAFFB8B9
      BAFFBABABBFFBBBCBCFFBCBDBDFFBABBBCFFB8B9BAFFB6B7B9FFB2B4B5FFADAE
      B0FFA9ABADFFAAAAACFF7C7C7CC31E1E1E220000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0807279A92
      92FE39282795000000000000000100000023000000240000001D000000160000
      00100000000B0000000500000001000000000000000000000000000000000000
      00000000000000000000172921321D8756BB26B271F927B774FF27B875FF27B8
      75FF27B875FF27B875FF27B875FF27B875FF27B774FF249E65DD0B19131F0000
      0000000000000000000000000000000000000000000000000000000000009E7F
      38FEC3952CFFBD8A15FFC59932FFDDC489FFDDC489FFDDC489FFDDC489FFDDC4
      89FFDDC489FFDDC489FFDDC489FFDDC489FFDDC489FFC59932FFBD8A15FFC395
      2BFFA08038FF0000000100000000000000002929292C959596C0A2A2A4D7A8A8
      A9E5ABABABEEACADAEF7ADAEAFFBAAABADFDA9AAADFEA9AAADFFA9ACAEFFACAF
      B1FFB0B3B5FFB3B5B7FFB7B8B9FFB9BBBBFFBBBAB9FFBCBABAFFBCB8B4FFBAB4
      AFFFB7B0ABFFB3B1B1FF808181C61F1F1F230000000000000000000000000000
      00000000000000000000000000001F1F1E418E898090C1B499C2DFC7A1E3EECF
      A6FEE1BE94F0C3A079C6896E52982A22195803030118000000130000000F0000
      000B000000060000000200000000000000000000000000000000000000000000
      000000000000030504061C9160C325BC7EFC24BE7DFF23BE7DFF23BE7DFF23BE
      7DFF24BE7DFF25BE7EFF25BE7EFF24BE7DFF27BD7FFE33AE7AE40A15111A0000
      000000000000000000000000000000000000000000000000000000000000A080
      39FEC69A32FFC18F1FFFD0AB56FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD0AB57FFC18F1FFFC699
      31FFA18139FF0000000100000000000000002F2F2F3399989AE8A9AAAEFFACAC
      AEFFACADAFFFAFADACFFB1ADA9FFB3ADA7FFB4AB9FFFB6A99BFFB8A898FFBAA5
      8FFFBAA28AFFB99C7CFFB89571FFB58F68FFB1865BFFAE7E52FFA97648FFA56F
      3EFFA16939FFB4ADA8FF838687C9202020240000000000000000000000000000
      00000000000005050419C3BAB0C4FDFCF7FEFDF5E5FEFDEBCAFEFDE3B7FEFDDC
      AEFEFDD6A5FEFDCF9CFEFDCB97FEFDCF9DFED3B28BDC231F183A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030325684F8122C186FE28C087FB2DBB85F330B381E832B280E52FB7
      81EC28BD86F71FC186FE1EC286FF25BE85FA27956BC10F261E2F000000000000
      000000000000000000000000000000000000000000000000000000000000A283
      3CFEC99E3BFFC5972BFFBE922BFFA98127FFA98127FFA98127FFA98127FFA981
      27FFA98127FFA98127FFA98127FFA98127FFA98127FFBE922AFFC4972BFFC89D
      39FFA4843CFF0000000100000000000000002828282D98938DDBBB935FFFB785
      41FFB78139FFB37930FFB07426FFAF7121FFAF6F20FFAE6C1FFFAD6B1EFFAC6A
      1DFFAA6819FFAA6717FFA96613FFA8650CFFA8650AFFA7650BFFA7630CFFA662
      0DFFA66211FFBAB4ACFF888A8BCC232323270000000000000000000000000000
      00000000000098876F9AFDF1E2FEFDF7EDFEFDEED9FEFDE9CDFEFDE5C7FEFDE3
      C4FEFDE1C1FEFDDFBDFEFDDCB9FEFDD9B1FEFDD7A8FEEBD0A6EC020201080000
      0000000000000000000000000000000000000000000000000000000000000000
      000015211D261DA074D02C9972C2186B4E8A355A4B68354A425330433D4C394F
      4659115A318A1ABA85F221C58EFF228962B30F261D3000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A485
      3DFECCA240FFC99C35FFD0A94FFFE3CD9AFFE3CD9AFFE3CD9AFFE3CD9AFFE3CD
      9AFFE3CD9AFFE3CD9AFFE3CD9AFFE3CD9AFFE3CD9AFFD0A950FFC99C35FFCBA1
      3FFFA6863EFF00000001000000000000000025252528908A80D0B97E24FFB671
      03FFB67304FFB27006FFB4730CFFB67618FFB97A21FFBB7D27FFC0832CFFC489
      2FFFC58A2EFFC5892BFFC58827FFC4861BFFC3850CFFC28305FFC08004FFBF7D
      03FFBF7C09FFC4BEB5FF8A8D8FD0242424280000000000000000000000000000
      000000000000A5947BA7FDEED9FEFDECD3FEFDE9CEFEFDE6C8FEFDE3C1FEFDDF
      BBFEFDDCB5FEFDD9B0FEFDD6AAFEFDD8B0FEFDE3C7FEFDE4C0FE0A0907170000
      0000000000000000000000000000000000000000000000000000000000000000
      000016514063207D5F9E1B1F1E21060807080000000000000000000000000000
      00001E2B24331DB586E7279973C0181C1A1E0000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A687
      3FFECFA647FFCCA240FFD9B970FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFD9BA71FFCDA23FFFCEA5
      44FFA8883FFF0000000100000000000000001F1F1F2288837CC5C6922BFFC786
      00FFC48502FFBF8007FFC28418FFC58925FFC88D2DFFCC9134FFD59C3CFFDDA5
      41FFDDA53FFFDBA43BFFDAA135FFD89D29FFD59A17FFD29502FFCF9000FFCC8B
      00FFCA8904FFCBC5B8FF8E8E92D1242424290000000000000000000000000000
      000000000000A59D8EA7FDF0DCFEFDEDD5FEFDEAD0FEFDECD5FEFDE1BFFEFDD5
      AAFEFDD1A1FEFDD2A3FEFDD4A7FEFDD2A4FEFDD09EFEFDE4C9FE0A0A08170000
      0000000000000000000000000000000000000000000000000000000000000000
      000010251F2D1214141500000000000000000000000008080708382D1C4A1E10
      012D1F252327236C568314181719000000000000000000000000090908091410
      0A1A03030203000000000000000000000000000000000000000000000000A889
      41FED1A94EFFD1A94DFFCAA44CFFB39043FFB39043FFB39043FFB39043FFB390
      43FFB39043FFB39043FFB39043FFB39043FFB39043FFCAA44BFFD1A84BFFD0A8
      4CFFAA8A41FF0000000100000000000000001818181B7E7A79B7CB9B35FFCC8C
      00FFC38404FFBF8010FFC38624FFC58A2DFFC88E35FFCC943DFFDBA64AFFE3B0
      50FFE2AE4EFFE1AB48FFDEA73FFFDBA234FFD89D27FFD49910FFD19300FFCE8E
      00FFCB8B00FFD0C8B9FF939497D42525252B0000000000000000000000000000
      0000000000008C877D8EFDF2E1FEFDEFDBFEFDF6EAFEFDF5E8FEFDE1BEFEFDD2
      A4FEFDCC98FEFDCB97FEFDD8A8FEFDC28CFEFDC793FEEBC8A5EC010101060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000052412769935400E03D25
      085A020202020304040400000000000000000000000000000000463722585433
      077908080609000000000000000000000000000000000000000000000000AA8A
      43FED4AD54FFD4AE56FFDAB96CFFE9D6AAFFE9D6AAFFE9D6AAFFE9D6AAFFE9D6
      AAFFE9D6AAFFE9D6AAFFE9D6AAFFE9D6AAFFE9D6AAFFDAB96DFFD4AE55FFD3AC
      52FFAC8C44FF00000001000000000000000014141416747473ADCB9E3DFFCA8A
      00FFBC7C09FFBB7B18FFBF8228FFC28630FFC58B38FFCB9341FFE0AD54FFE7B5
      5BFFE5B358FFE4B051FFE1AB47FFDDA53AFFDAA02EFFD69A1BFFD29400FFCE8F
      00FFCC8B00FFD5CBB8FF999A9ED82828282D0000000000000000000000000000
      0000000000000101010A9892879AFAEDDCFBFDF7EDFEFDF5E7FEFDE0BDFEFDD2
      A3FEFDCC98FEFDCC97FEFDDBADFEFDC995FEDBAD81DC2D251C3C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004735215E9E5D00EAAC6500FF5332
      06790D0A05120302020303030204130E06192E210F3C63472182915905D35343
      296501010101000000000000000000000000000000000000000000000000AC8C
      45FED7B25BFFD8B360FFE2C78AFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFE2C78BFFD8B35FFFD5AF
      58FFAD8D45FF0000000100000000000000000F0F0F106D6D6DA2CAA34BFFC684
      01FFB5740DFFB7771CFFBA7C28FFBD8130FFC08638FFCA9244FFE5B35DFFECBB
      66FFE9B860FFE5B357FFE2AD4DFFDEA63EFFDBA132FFD79B21FFD29501FFCF90
      00FFCC8A00FFD8CDB7FF9D9FA2DB2828282E0000000000000000000000000000
      00000000000000000000000000001F1C1A29FDF8EDFEFDF4E6FEFDE0BDFEFDD2
      A3FEFDCC97FEFDCC98FEFDDCADFE5B4F3F7A0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000F0D0A115B360583AB6500F2B46C00FFB46C00FFB36B
      00FFAE6900F8A36200E7A36200E7B16B00FCB36B00FFB36B00FF8D5E14BC1412
      0E1600000000000000000000000000000000000000000000000000000000AF8F
      47FED9B563FFDBBA6DFFD4B46BFFBB9F5FFFBB9F5FFFBB9F5FFFBB9F5FFFBB9F
      5FFFBB9F5FFFBB9F5FFFBB9F5FFFBB9F5FFFBB9F5FFFD3B46BFFDBB96BFFD8B4
      5FFFB09048FF0000000100000000000000000A0A0A0B64656596C8A655FEBB76
      04FFB06F13FFB47522FFB97C30FFBC823AFFBE8741FFCD9A52FFEABD6CFFEEC3
      74FFECBD6BFFE7B760FFE3B053FFE0A843FFDBA335FFD79D24FFD39503FFD091
      00FFCB8900FFDACDB2FFA2A4A8DF2A2A2A300000000000000000000000000000
      000000000000000000000000000014120F28FDF8EEFEFDF4E5FEFDDFBBFEFDD2
      A3FEFDCC97FEFDCC98FEFDDCAEFE302A22600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003020203663E048CAF6A00F1B97000FFB97100FFB97100FFB971
      00FFB97100FFB97100FFB97100FFB97000FFB97100FFB8750BF53C2D184B0000
      000000000000000000000000000000000000000000000000000000000000B191
      49FEDBB868FFDFBF77FFE0C17AFFE0C17AFFE0C17AFFE0C17AFFE0C17AFFE0C1
      7AFFE0C17AFFE0C17AFFE0C17AFFE0C17AFFE0C17AFFE0C17AFFDEBE75FFDAB8
      66FFB29249FF000000010000000000000000060606075A5A5D89C4A86AFBB87B
      20FFB77E33FFBC8641FFBF8C4DFFC18F53FFC29258FFD5A969FFECC57CFFEDC7
      81FFECC47CFFEAC074FFE7BB6AFFE4B55CFFE0AF4FFFDCA83CFFD79F1BFFD399
      14FFCF900CFFDACCAFFFA5A8ACE22D2D2D320000000000000000000000000000
      0000000000000000000000000000231F1A46FDF9EFFEFDF0DCFEFDD5A9FEFDC7
      91FEFDC188FEFDC38BFEFDD8A7FE5A5142780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000007050208B3730AE9BE7600FEBE7500FFBF7600FFBF7600FFBF76
      00FFBF7600FFBF7600FFBF7500FFBD7500FEBF7D0CF764420C81040403040000
      000000000000000000000000000000000000000000000000000000000000B392
      4BFEDDBC6FFFE1C482FFE2C685FFE2C685FFE2C685FFE2C685FFE2C685FFE2C6
      85FFE2C685FFE2C685FFE2C685FFE2C585FFE2C585FFE2C585FFE0C37EFFDCBA
      6AFFB4934BFF000000010000000000000000030303035252537BBBA685F8B780
      3AFFB88442FFBA8746FFBC8A4EFFBD8B52FFBE8C55FFD8AB67FFEBC175FFEBC2
      77FFEAC076FFE9BE71FFE7BA6AFFE3B660FFE1B256FFDEAE44FFDAA931FFD8A5
      31FFD69E29FFDBCDB0FFA5A8ACE32E2E2E330000000000000000000000000000
      00000000000000000000000000004D494168FDF7ECFEFDEACBFEFDE1B4FEFDD9
      AAFEFDD09DFEFDC68FFEFDC78DFE8E7B5D900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003C2E1646AB7310D5C37E02FCC57B00FFC67D00FFC67C
      00FFC67D02FFC67F03FEC07D08F4A07018C54938195806050506000000000000
      000000000000000000000000000000000000000000000000000000000000B595
      4CFEDFC076FFE5CB8FFFE6CD93FFE6CD93FFE6CD93FFE6CD93FFE6CD93FFE6CD
      93FFE6CD93FFE6CD93FFE6CD93FFC1AB77FFBAA26CFFBBA36CFFB9A166FFB79A
      57FFAD8E47FF000000010000000000000000000000004747486BAE9B84F3B37B
      3EFFB47E43FFB58143FFB7834AFFB8854EFFB88550FFDBAD62FFE8BC6BFFE8BC
      6CFFE7BB6BFFE6BA68FFE4B761FFE1B358FFE0AF4CFFDCAB39FFD9A731FFD7A4
      32FFD59E2BFFD8C8A9FFA6A8ABE42E2E2E330000000000000000000000000000
      00000000000000000000332D2644F3E9DDF4FDF3E5FEFDEBD2FEFDE6C8FEFDE3
      C4FEFDE1C2FEFDDEBEFEFDDCB6FEF4D1A6F53A342A4F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030303033C2E1645A6710FC9CB8303FECB8200FFB075
      0AD898670DB882570C9D62502E6F1F1C17230000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B897
      4FFEE1C37CFFE8D099FFE9D29DFFE9D29DFFE9D29DFFE9D29DFFE9D29DFFE9D2
      9DFFE9D29DFFE9D29DFFE9D29DFFBEA774FFB89E65FFCCB686FFC6AB6DFFB99A
      53FFAB8D44FB000000010000000000000000000000003F404060A89A8AEFB078
      41FFB07A44FFB17C44FFB37E47FFB4814CFFB6834FFFDEB05DFFE5B863FFE5B8
      64FFE4B763FFE3B660FFE2B35BFFDFB050FFDDAD40FFDBA933FFD8A531FFD6A2
      31FFD39C29FFD4C3A0FFA7A9ACE52E2E2E340000000000000000000000000000
      00000000000000000000A1917AA3FDEFDAFEFDECD3FEFDE7CBFEFDE3C2FEFDDF
      BAFEFDDBB3FEFDD7ACFEFDD9B1FEFDE5CBFEC2B098C300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020202271D0D2DB57C11D7D18803FE563A
      07691B19151C0E0D0C0F02020202000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B999
      50FEE3C683FFEAD5A2FFEBD7A7FFEBD7A7FFEBD7A7FFEBD7A7FFEBD7A7FFEBD7
      A7FFEBD7A7FFEBD7A7FFEBD7A7FFC1AC7BFFCCB785FFEFDEB8FFD7B973FEB998
      4FFB705415920000000000000000000000000000000039393A56A3988CEAAC73
      40FFAB7340FFAB743FFFAC743DFFAC743EFFB17940FFDDAA48FFE0AE4BFFDFAD
      4BFFDEAB48FFDEA942FFDBA639FFD8A225FFD69E17FFD49A13FFD09512FFCE91
      10FFCA880BFFCDB78DFFA9ABAFE82E2E2E340000000000000000000000000000
      000000000000000000009D96899FFDF2E1FEFDEED9FEFDEAD1FEFDE6C8FEFDE1
      BEFEFDDCB5FEFDD7ACFEFDD4A5FEFDD0A0FEBFB0A0C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B140921977022AC442F
      0551000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB9A
      51FEE3C47CFFEAD4A1FFEDD9ACFFEDDAADFFEDDAAEFFEDDAAEFFEDDAAEFFEDDA
      AEFFEDDAAEFFEDDAADFFEDD9ACFFC2AD7DFFC8AC6CFFDABB72FFAE8C42F0533F
      107D0200000C00000000000000000000000000000000303031499A8F85E39550
      19FF934F18FF945018FF955016FF945015FFA46211FFD4980BFFD39713FFD498
      17FFD39714FFD2960DFFD09305FFCD9106FFCB8E08FFC98B09FFC6880AFFC484
      0CFFC07D0DFFC5AD81FFABADB1EC323232370000000000000000000000000000
      000000000000000000001F1E1C2ADCD2C4DDFDF1DFFEFDEED9FEFDEAD2FEFDE5
      C9FEFDE0BFFEFDDBB5FEFDD4A7FEF1C698F2372F294A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001817141A1210
      0B14000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BB9A
      50FEDDBB6DFFE2C788FFE4CB92FFE5CC94FFE5CD95FFE5CD95FFE5CD95FFE5CD
      95FFE5CD95FFE5CC94FFE4CB92FFBDA56DFFBD9D53FFBB994EFB55400F7E0302
      001000000000000000000000000000000000000000002929293E95918BDE9763
      3CFF93603BFF95633EFF96653FFF966741FFA17843FFB89948FFB89B51FFB99D
      57FFBA9F5AFFBBA05DFFBCA364FFBCA46DFFBCA776FFBBA77AFFBAA67BFFB8A5
      7EFFB3A27FFDBBB4A7FBA0A1A2DF2C2C2C310000000000000000000000000000
      000000000000000000000000000001010107413D38579990829BC0B19CC1CDB9
      A3CEC8B197C9A99176AA5346356F0B0806160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B392
      48F9BE9E53FFBEA058FFBFA05AFFBFA15AFFBFA15AFFBFA15AFFBFA15AFFBFA1
      5AFFBFA15AFFBFA15AFFBFA15AFFB69852FFB3944AFB725615920200000C0000
      000000000000000000000000000000000000000000001E1E1E2D7D7C7CBC8B87
      84D6888582D184817FCB7F7C7AC37B7876BC777573B5747473AD737373A67171
      719F6F6F6F986A6C6C9068686889646565825F60617A5B5B5B745355556C5051
      52684A4A4B614343435A2C2D2D410A0A0A0B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004C41
      41792B21218A0000000800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000320000007D0000
      008E0000008E0000008E0000008E0000008E0000008E0000008E0000008E0000
      008E0000008E0000008E0000008E0000008E0000008E0000008E0000008E0000
      008E000000860000004D00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060404189587
      88F41B0F0FAA000000520000001F000000190000001800000010000000050000
      0000000000000000000000000000000000000000005928231EEC685D51FE7669
      5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A
      5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A5CFF776A
      5CFF706557FE3F3831F602020198020202030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010100020000000025170032322000440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005649498F5B45
      45F50200003F000000720000007A000000780000007200000068000000510000
      002400000001000000000000000000000000171612E285786BFE94887AFF998E
      83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E
      83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E83FF998E
      83FF968B7EFF8E8172FF3B362FF3232323410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000150F001C7F5703A7825904AB0503
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010A151C381A2629560E1B2244010508100705051A8A797BF6180B
      0C900000005E0000007F0000007E00000079000000720000006A000000600000
      00510000000F0000000000000000000000003E3833FE958879FFC8C3BEFFE8E5
      E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5
      E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5E3FFE8E5
      E3FFD7D4D1FF9D9185FF6B6157FD3C3C3C6F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000605000963440382C28505FF9F6E04D2251A
      0031000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A75AFB080D7FEFF99E3FCFE58C2FDFE0F9BF8FA1472B9DE2B3A51F30101
      01160000002D0000006E00000079000000740000006C00000063000000590000
      00480000000A000000000000000000000000453F39FF9A8F83FFD5D2CDFFF6F5
      F4FFF6F5F4FFF6F5F4FFF6F5F4FFE2DFDDFF969088FF857D75FFC6C2BEFFF6F4
      F4FFD3D0CDFF8E877EFFDBD8D5FFF6F5F4FFF6F5F4FFF6F5F4FFF6F5F4FFF6F5
      F4FFE5E3E1FFA49A90FF746C62FE3D3D3D730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004731015EA87305DDC28505FFB27A06EA6444
      0383000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000928
      364947CEFDFF4DD2FDFE4ECFFCFE4EC8FCFE35B1FAFE088AECFE0077DEFD0139
      7091000000050000000F0000002C0000003E0000004E000000560000004D0000
      00380000000800000000000000000000000048423DFFA1968AFFD9D5D2FFF9F8
      F7FFF9F8F7FFF9F8F7FFF9F8F7FF847D73FF4D4437FF5C5448FF52493DFFE4E2
      E1FFE5E3E2FF4F4539FF99938CFFF8F7F7FFF9F8F7FFF9F8F7FFF9F8F7FFF9F8
      F7FFE9E7E5FFAAA096FF7A7168FE3D3D3D730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000261A0032A26F04D5C08405FDBC8105F7C08405FD9F6D
      04D10D0900110000000002020003000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000429C
      B3B46FDDFDFE5DD5FCFE43CAFAFD35C2FCFE33BEFAFD53C4FBFE3D9DE8FE0064
      CBFD00488EAE000000020000000000000000000000040000000C0000000C0000
      0004000000000000000000000000000000004A4641FFA79D92FFDCD9D6FFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFF5D5448FF918B82FFD6D3D0FF463D30FFCBC8
      C4FFFBFAFAFF857E74FF61594EFFEBEAE8FFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFEBE9E8FFAFA69DFF7F766EFE3D3D3D730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      000200000000150F011D8C6004B9C28505FFC28505FFC08405FDC28505FFB77E
      05F14C3501650604000801010001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004F94
      A6A87DDFFDFE71D8FCFE53D0FAFE2FB6F5FE2BB9FBFE24B4FDFE37B8FDFE5EAF
      ECFE0070D8FF0025456700000000000000000000000000000000000000000000
      0000000000000000000000000000000000004D4844FFADA39AFFDEDBD9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFF5D5448FF958F88FFDBD9D7FF473E31FFCBC8
      C5FFFCFCFCFFC7C4C0FF4B4235FFC3C0BBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFECECEBFFB4ACA4FF837B74FE3D3D3D730000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020200030000
      00000F0B00156B4A028DC28505FFC28505FFC28505FFC28505FFC28505FFBF83
      05FC9C6B04CD150F011D00000000020100020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A15
      18337BD7F8F995E5FCFE44C0F0FD1888D9FE0976D3FD19A0F2FE19ABFDFE2DAE
      FBFD56ACEFFE0064AEBC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000004F4B47FFB3AAA1FFE0DEDCFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFF5D5448FF959088FFDCDAD7FF473E31FFCCC9
      C5FFC4C1BDFF736B61FF453B2EFF817970FFFDFCFCFFFDFDFDFFFDFCFCFFFCFB
      FBFFEDECEAFFB9B2AAFF87807AFE3D3D3D73000000000000000037374E523232
      3B3F000000002A2A323539398EAA39398EAA39398EAA39398EAA453F68750C0B
      0C0C1F1F23253C3C809639398EAA493B555E020202023A3B525A323241460505
      05053F3F6C7A1E1E222327282D303E3E65720000000000000000020200030B06
      000F5137026AB97F05F4C28505FFBF8305FB895E04B4966704C6C28505FFC285
      05FFC28505FF4731015D06040008020200030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000264ADCECF73DDFAFE2AA1E3FE0B76D1FE0065CAFE006CD3FE0E97FBFE0DA2
      FDFE60BFFCFE0759949900000000000000000000000000000000000000000000
      000000000000000000000000000000000000524E4BFFB8B0A8FFE2E0DEFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF5D5449FF969089FFDCDBD8FF473E31FFCCCA
      C6FF60584CFF645C51FF766F65FF564D41FFE6E5E3FFFCFCFBFFFBFAFAFFF9F9
      F8FFEBEAE8FFBDB7B0FF8B867FFE3D3D3D7300000000000000003F3F717B4343
      565F00000000131315152F2F9BBD393444490000000000000000000000000A0A
      0A0A3A3596B3302D373A020202023D3E626A3F3F5F6A03030303000000000000
      0000000000000000000000000000000000000000000000000000020200033D26
      0054A47005D7C28505FFBE8205FA8C6004B9150F001C2F21003FA67205DAC285
      05FFC28505FF936505C1251A0031000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000143D
      547195E5FDFF44C1F1FE1888D9FE036BCDFE0063CAFE007BE1FE0488FCFE0792
      FDFE33AAF8F9050B0F2100000000000000000000000000000000000000000000
      00000000000000000000000000000000000054514EFFBEB7AFFFE4E2E0FFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF5D5449FF969089FFDCDBD8FF473E31FFCCCA
      C6FF4F4639FFA29E97FFC9C6C3FF4F4639FFD4D2CFFFFAF9F9FFF8F7F7FFF6F5
      F5FFE9E7E6FFC2BBB5FF8F8A85FE3D3D3D7300000000000000003F3F717B4343
      565F000000000000000037374A513E319ABB2A2A323500000000000000000A0A
      0A0A312F3B3F090909090000000020202626433693B216141416000000000000
      00000000000000000000000000000000000000000000000000000E0C0613744A
      00A1C28505FFBC8105F88E6103BA1710001F00000000000000004731015EBE82
      05FAC28505FFC28505FF573D0374020200030101000100000000000000000000
      0000000000000000000000000000000000000000000001040618366D8A8C70C6
      F3F438AEFCFE0C81E9FE0763D1FD0060CAFE0069D0FD008CF2FC088EF8F90580
      D9DB052A455C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000565451FFC3BCB5FFE5E3E1FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF5D5549FF948F87FFDBD9D7FF473D30FFCCCA
      C6FF4F4539FFA39E97FFC8C5C1FF4E4539FFD1CECAFFF6F5F4FFF4F3F1FFF1EF
      EDFFE5E2DFFFC5C0BAFF938F8AFE3D3D3D7300000000000000003F3F717B4343
      565F0000000000000000000000001D1D212131319BB93A3A515A000000000000
      000000000000000000000101010136364A4E433C87A00E0D0E0E000000000000
      0000000000000000000000000000000000000000000000000000020200033C25
      0052996A04CB895E04B5181101200000000002020003000000000D0900116142
      027FC28505FFC28505FFA47105D83A28024D0000000000000000000000000000
      00000000000000000000000000000000000000000000298FBABB52D3FCFE55D1
      FCFE4EC5FCFE29A5F6FE0074DFFE0050CDFE0067E1FE0059999B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000595653FFC8C3BDFFE6E5E3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFF726B61FF61594EFF857E74FF4B4135FFDCDA
      D8FF655D52FF675F54FF7A7369FF544C3FFFDAD7D4FFEFEEECFFEDEAE8FFE8E6
      E3FFDDDAD6FFC9C4BFFF97938FFE3D3D3D7300000000000000003F3F717B4343
      565F000000000000000000000000000000002D2D3B3D2D2D9FC12A2A32350000
      0000000000001D1D212138388EAB3B3C839B2323282B01010101000000000000
      0000000000000000000000000000000000000000000000000000000000000A05
      000E271C0135261A003200000000000000000101000100000000000000001A12
      0122895E04B4BF8305FCC28505FF73500499120D011800000000000000000000
      000000000000000000000000000000000000050D0F1E64DCFCFE61D7FCFE43CA
      FCFE33C0FCFE3DC0FCFE5FBFF6FE1878D5FE0060EBFE000E1C38000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005B5956FFCCC7C2FFE7E6E5FFFFFF
      FEFFFEFEFEFFFEFEFEFFFDFDFDFFD2D0CDFF686054FF564D41FFA29E97FFF7F7
      F6FFC6C3BEFF5F564BFF564E41FFA6A19AFFEBE8E5FFE7E4E1FFE3DFDBFFDDD9
      D4FFD4D0CBFFCCC8C2FF9B9793FE3D3D3D7325252B2D2A2A33373F3F717B4343
      565F00000000000000000000000000000000000000003A3A545B423D8AA40D0D
      0D0D000000000000000019191B1C363692AF342D383C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020100020000
      00002B1E003A996A04CBC28505FFAC7605E25137026A00000000000000000100
      0001000000000000000000000000000000000001010467C0DBDD6ED8FBFD4CCB
      FCFE30BDFCFE26B6FDFE1FAEFBFD69C4FAFE1A84DEFA0003060F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005D5B59FFD1CCC8FFD3D2E6FFE1E1
      FDFFE1E1FCFFE1E1FBFFE0E0FAFFDFDEF9FFDEDDF7FFDDDCF5FFDCDBF3FFDAD9
      F0FFD8D7EEFFD5D4EAFFD2D0E6FFD0CDE3FFCCC9DEFFC8C4D8FFC4C0D3FFC1BD
      CEFFBFBAC9FFCBC7C7FF9E9B97FE3D3D3D732D2D3B3D31319BB92929A6CB4343
      565F0000000013131515493F6F7E121112120000000033334246423D8AA41616
      17173F3F70801717181A040404043E4077873E3E5F6A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020200030000
      0000000000004731015D9E6C04D0C28505FF996A04CB2117012C000000000100
      0001000000000000000000000000000000000000000010242A396ACDF1F357CC
      FCFE33BBFCFE21B2FDFE18ABFDFE12A4FDFE6ABEF8FE02121F40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005F5D5BFFD5D1CDFF3635E7FF0303
      FAFF0303F4FF0404EEFF0303EFFF2222EEFF1B1BEAFF1515E7FF1F1FE5FF2424
      E2FF1212DDFF1E1EDBFF1616D7FF1616D4FF0303CDFF0303C8FF0303C4FF0302
      C3FF1817BCFFB2AEC5FFA19E9BFE3D3D3D73000000000A0A0A0A313199B84242
      555D0000000005050505393A8AA34A3B849C3E3E626F2C2C9FC3323241460000
      00003F3F6673464673853C3C5A63423B899F1915181900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000201
      000200000000000000004C340164A97405DFC28505FF855B04AF0A07000D0000
      00000000000000000000000000000000000000000000000000000711172E3A9E
      CBCC39BEFEFF1FAEFDFE14A7FDFE0BA0FDFE40A2E2E401010208000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000615F5DFFD8D5D2FF3432E7FF0000
      F8FF2A25ADFF625771FF0606DFFF3636F0FF7C7CF3FF5C5CEDFF9B9BF2FF6B6B
      ECFF6161E8FF7777E9FF6868E5FF5353DFFF0707C9FF463E80FF48407AFF0101
      BDFF1514BCFFB4B2CAFFA4A29FFE3D3D3D7300000000000000001D1D21221B1B
      1D1E0000000000000000161618183636474E39394E552A2A3337000000000000
      00000B0B0D0D3333414637374A52232125270000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020200030000000049320160B97F05F3B87E05F25A3F02780906
      000C000000000000000000000000000000000000000000000000000000000000
      0001051924480E6695970C75B4B50568A6A80317263300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000605F5EFFDBD9D6FF3534E9FF0000
      F9FF4742B9FFA79E9AFF0606E2FF2222EEFF3E3EEDFF3D3DEAFF6969EDFF4D4D
      E7FF3D3DE3FF3D3DE0FF5959E2FF4E4EDEFF1F1ECEFF736C9EFF79729BFF0302
      BEFF1515BDFFB7B5CEFFA5A2A0FE3D3D3D710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060500093E2B0152AA7505E0B97F05F33723
      004A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393837F2D9D7D4FF5756E6FF1D1D
      F1FF5A56CDFFBFB8BCFF1D1DE7FF1E1EE5FF1E1EE2FF1E1EDFFF1F1FDDFF1F1F
      DAFF1E1ED7FF1E1ED4FF1F1FD1FF1E1ECEFF201FCAFF8681BBFF8E89B8FF201F
      C0FF3636C0FFC4C2D4FF777674F82D2D2D530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101000100000000050300063A28024C966704C68C5C
      00BD3832253E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020286767574F8C0BEC6FFBAB8
      CEFFB8B3BBFFCBC4BFFFB9B8CCFFBAB8CDFFBAB8CCFFBAB8CCFFBAB8CCFFBAB8
      CCFFBAB8CBFFBAB8CBFFBAB8CAFFBAB8CAFFB9B7C8FFC2BDBEFFC2BDBCFFB8B7
      C6FFBEBCC8FF9D9B9AFC121212BF0707070D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010100020000000000000000301F0042603B
      0085342C21390000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080000006C151513C22424
      24DD605C58FCC7C1BCFF282727EF242424D8242424D8242424D8242424D82424
      24D8242424D8242424D8242424D8242424D8272626E48D8984FF95908BFF2827
      27E71C1C1BCD0202028C0000001C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000907
      030B090806090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00150D0D0DC63D3C3AFC00000066000000000000000000000000000000000000
      0000000000000000000000000000000000000000002C212121EB262424EF0000
      0038000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001010101020101010201010102000000000000
      0000000000000000000001010102010101020101010200000001000000000000
      000000000000000000000000000000000000000000001414142B0101018E0101
      01A7010101A7010101A7010101A7010101A7010101A7010101A7010101A70101
      01A7010101A7010101A7010101A7010101A7010101A7010101A7010101A70101
      01A7010101A70101018E1414142B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02070101011A0202022001010121010101210101012101010121010101210101
      0121010101210101012101010121010101210101012101010121020202200000
      001C030303090000000000000000000000000000000002020209050505150000
      001C000000200000002400000027000000270000001F010101260A0A0E381414
      1E4414141D4309090D3600000024000000200000002800000027000000240000
      00210000001D0505051502020209000000000E0E0E42221F1AF5716558FF8475
      66FF847566FF847566FF847566FF847566FF847566FF847566FF847566FF8475
      66FF847566FF847566FF847566FF847566FF847566FF847566FF847566FF8475
      66FF847566FF716558FF221F1AF50E0E0E420000000000000009000000120000
      00180000001B000000190000001B0000001E0000001F00000020000000210000
      00220000002200000021000000200000001F0000001E0000001B0000001A0000
      001C0000001800000012000000090000000000000000010101020808083B7A7A
      7AB6D4D4D3EBDADAD9EFDADAD9EFDADAD9EFDADAD9EFDADAD9EFDADAD9EFDADA
      D9EFDBDAD9EFDADAD9EFDADAD9EFDAD9D9EFDADAD9EFDAD9D9EFDAD9D9EFD6D6
      D5ED8C8C8BC10F0F0F4A00000003000000000000000002020209050505150000
      001D00000021060606230707052806060F521012389B171B66DF191E75F9181D
      79FF181D79FF191E75F8171A63DB1011329304040C4B07070828060606230000
      00210000001D050505150202020900000000070705CF8C7E70FF928678FF9B91
      87FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B91
      87FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B9187FF9B91
      87FF9B9187FF928678FF8C7E70FF070705CF000001010000000E0000001B0303
      03223535367E7B7B7CBA858586C0868687C0898989C189898BC18B8B8CC18B8B
      8CC18B8B8CC18B8B8BC189898BC1888889C1868687C0858585C0757577B72A2A
      2B6F0000001F0000001C0000000E000001010000000009090937D5D4D4EDB3B3
      B3FF605F61FF5A595BFF5A595BFF5B5A5BFF5B5A5BFF5B5A5CFF5B5A5CFF5B5A
      5BFF5A5A5BFF5A5A5BFF5A5A5BFF5B5A5BFF5B5A5BFF5B595BFF5A595BFF5D5C
      5EFFA2A2A2FFE3E2E2F61111114F010101010000000000000000000000000000
      0000000000000707070B2E30467A171C6DD7171C7EFC171C80FF171D80FF181D
      7EFF181D7EFF171C7EFF171C80FF171C7DFA181B6ACF31324D6E030304050000
      00000000000000000000000000000000000026221FFD9C8F81FFBBB5AEFFF3F1
      EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF1EFEEFFECEAE8FFF1EFEEFFF3F1
      EFFFF3F1EFFFEEECEAFFF0EEEDFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1EFFFF3F1
      EFFFF3F1EFFFBBB5AEFF9C8F81FF26221FFD0000000000000000060606069898
      9ABED0D0D1FFD5D5D6FFD9D9DAFFE4E4E5FFE8E8E9FFE9EAEBFFEAEAEBFFE6E6
      E7FFE1E1E2FFE8E8E9FFE8E8E9FFE7E7E8FFDCDCDDFFD8D8D9FFD4D4D5FFD0D0
      D1FF8383859D00000000000000000000000002020204716F70AEB9B8B8FF1918
      1CFF212124FF222124FF222124FF222124FF222124FF222124FF222124FF2221
      24FF222124FF222124FF222124FF222124FF222124FF222124FF222124FF2121
      24FF1A191CFF9C9A9BFF9D9D9CCB0101010A0000000000000000000000000000
      00000B0B0D0F20225590161C7FF3171C84FF171D84FF171D85FF181D84FE171D
      84FE171D84FE181D85FF171D85FF171D84FF171C84FF181C7DF021234D7D0505
      060700000000000000000000000000000000292622FFA39688FFC0BBB5FFF6F5
      F4FFF6F5F4FFF6F5F4FFF6F5F4FFEFEEECFF908A82FF696156FF928B83FFF0EE
      ECFFF5F4F3FF827A71FFA09B94FFF6F5F4FFF6F5F4FFF6F5F4FFF6F5F4FFF6F5
      F4FFF6F5F4FFC0BBB5FFA39688FF292622FF000000000000000061616172CFCF
      D0FFD4D4D5FFD9D9DAFFCBCBCCFF454546FF3D3D3DFF3D3D3DFF3D3D3DFF7979
      7AFFD3D4D4FF50504FFF292929FF444444FFBBBBBCFFDEDEDFFFD8D8D9FFD3D3
      D4FFCECECFFF4141414A00000000000000000505050DBCBCBBDA6F6E6FFF2423
      26FF252427FF252427FF252427FF252427FF232224FF212023FF242326FF2524
      27FF242326FF1E1D20FF232225FF1F1E21FF222124FF252427FF252427FF2524
      27FF252427FF565657FFD9D9D9EE0000001A0000000000000000000000000C0C
      0E0F1A1F5493171D86F9171D89FF171D89FF171D89FF171D7DE8171C70CC2127
      69B321266AB51A1F76D5181E86F8181E8AFF181E8AFF181E8AFF171D83F42729
      527F0909090A0000000000000000000000002B2824FFA99D91FFC5C0BBFFF9F8
      F8FFF9F8F8FFF9F8F8FFF9F8F8FFABA6A0FF42382BFF888278FF42382AFFACA8
      A1FFF9F8F8FF8F8981FF4A4134FFF0EFEDFFF9F8F8FFF9F8F8FFF9F8F8FFF9F8
      F8FFF9F8F8FFC5C0BBFFA99D91FF2B2824FF0000000000000000939393B7D2D2
      D3FFD7D7D8FFDDDDDEFF9F9FA0FF050607FF0C0C0FFF101113FF0B0C0EFF4647
      47FF303133FF090A0DFF353536FF0C0D0FFF131314FFD9D9DAFFDCDCDDFFD7D7
      D8FFD1D1D2FF76767792000000000000000008080810C0C0C0DD6D6C6DFF2827
      29FF28272AFF28272AFF28272AFF272629FF686768FFE2E1E1FF373638FF2726
      29FF424043FFC0BFBFFFE8E7E7FFDCDBDBFF878686FF252427FF28272AFF2827
      2AFF28272AFF59585AFFDAD9D9EF0000001C0000000000000000000000002728
      3F54181E85EC181D8EFF181D8EFF181D8DFD171C6FC32F2F40521212181E0505
      060707070A0C16164371191E86EE181E8FFF181E8FFF181E8FFF181D8EFF181E
      81E4222233440000000000000000000000002C2927FFB0A59AFFC8C3BFFFFBFA
      FAFFFBFAFAFFFBFAFAFFFBFAFAFF928C84FF5A5146FFFBFAFAFF5A5145FF928C
      84FFFBFAFAFFD9D7D4FF3F3628FFB6B2ACFFFBFAFAFFFBFAFAFFFBFAFAFFFBFA
      FAFFFBFAFAFFC8C3BFFFB0A59AFF2C2927FF00000000000000009E9E9FC3D5D5
      D6FFDBDBDCFFDFDFE0FFE4E4E5FF434449FF090B10FF3D3E43FFDBDBDCFFDDDE
      DFFF080A0FFF24262AFFFEFEFEFF46464AFF06070BFFB7B8BAFFDFDFE0FFDADA
      DBFFD4D4D5FF7B7B7D9A000000000000000008080810C0C0C0DD6F6E6FFF2A29
      2BFF2B2A2CFF2B2A2CFF2B2A2CFF282729FF959494FFFBFBFAFF555456FF3332
      34FFE7E7E7FFE6E6E6FF706F70FFA1A0A0FFF9F8F8FF8F8F8FFF272628FF2B2A
      2CFF2B2A2CFF5A595BFFDADADAEF0000001C0000000000000000000000001A1D
      74C4171D94FF191E94FF181D92FE191C6DB71D1E262E00000000000000000000
      00001C1D39521A1F82DD181E92FD181E94FF181E94FF181E94FF181E94FF181E
      93FF181E67AB0000000000000000000000002E2B28FFB6ACA2FFCBC7C3FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFF928C84FF5C5348FFFCFCFCFF5C5348FF928C
      84FFFCFCFCFFF2F1F0FF625A4FFF6C655AFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFBFFCAC7C3FFB6ACA2FF2E2B28FF00000000000000009F9FA1C3D7D7
      D8FFDDDDDEFFE1E1E2FFE3E3E4FFEAEBEBFF4E4F55FF090C14FF292C34FFE2E3
      E4FF2E3138FF0E111AFF494C52FF12161EFF181B23FFDADBDCFFE0E0E1FFDCDC
      DDFFD6D6D7FF7E7E7E9A000000000000000008080810C0C0C0DD717071FF2E2D
      2FFF2E2D2FFF2E2D2FFF2E2D2FFF2B2A2CFF969595FFFBFBFBFF555456FF8887
      88FFFCFCFBFF6C6B6CFF2C2B2DFF252426FFD7D6D5FFE6E6E5FF2C2B2DFF2E2D
      2FFF2E2D2FFF5C5B5CFFDADADAEF0000001C000000000000000015162735191F
      98FE191F99FF181E99FF1F2482D01E1E262E0000000000000000060607071C1D
      3B53191F95F8181E99FF191F99FF181E99FF181E98FE191F98FD181E98FE181E
      99FF1A2096FB0F0F182000000000000000002F2D2AFFBCB3A9FFCECAC7FFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFF928D85FF5C5448FFFDFDFDFF5C5448FF928D
      85FFDEDDDAFF686055FF4C4336FF403628FFE0DFDCFFFDFDFDFFFCFCFCFFFCFB
      FBFFFBFBFAFFCCC9C5FFBCB3A9FF2F2D2AFF0000000000000000A1A1A2C3D8D8
      D9FFDFDFE0FFE2E2E3FFDADADCFF767981FFE7E8E8FF6A6D73FF0B101CFF6A6C
      73FF767980FF0D121DFF181D28FF0F141FFF4B4F57FFEAEBEBFFE1E1E2FFDEDE
      DFFFD8D8D9FF7E7E7E9A000000000000000008080810C0C0C0DD737273FF3130
      31FF313032FF313032FF313031FF2E2D2FFF979797FFFCFCFBFF525052FFBCBB
      BCFFF9F9F9FF515051FF313032FF29282AFFC6C5C5FFF0EFEFFF353335FF3130
      32FF313032FF5E5C5EFFDBDADAEF0000001C0000000000000000282A5372181E
      9DFE191F9EFF181E9EFF2A2D648C0000000000000000060607072223435B191F
      8DE1171D9CFE191F9EFF191F9EFF181E9DFE1B2184CF1B207DC4181E9DFE191F
      9EFF181E9EFF1F2141590000000000000000312F2CFFC2B9B1FFD0CDCAFFFEFE
      FEFFFEFEFEFFFEFEFEFFFEFEFEFF938D85FF5C5448FFFEFEFEFF5C5448FF938D
      85FF9E9A93FF483F31FFBAB7B2FF493F32FFA5A19AFFFCFCFCFFFBFBFAFFFAFA
      F9FFF9F8F7FFCECAC7FFC2B9B1FF312F2CFF0000000000000000A2A2A3C3DADA
      DBFFDFE0E0FFE2E2E3FFA0A3A8FF050C1CFF70757EFFB9BCC0FF0B1221FF444A
      56FF333945FF121A28FFE1E2E3FF222836FF141B29FFE0E1E2FFE2E2E3FFDFDF
      E0FFD8D8D9FF7E7E7E9A000000000000000008080810C1C0C0DD757474FF3332
      33FF343334FF343334FF343334FF313031FF999898FFFCFCFBFF525152FFCBCB
      CBFFF7F6F6FFA9A9A8FF302F30FF4D4B4DFFF0F0F0FFCECDCDFF2D2C2EFF3433
      34FF343334FF5F5D5FFFDBDADAEF0000001C000000000000000033367098181E
      A1FE191FA3FF181FA3FF1B1D394C00000000000000001B1D3C53192091E1181F
      A1FE181FA3FF191FA3FF181FA2FE1A208EDB2022364420224C69181FA2FE191F
      A3FF181FA3FF292B5C7D000000000000000032302EFFC7C0B8FFD3D0CDFFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFEFF938D85FF5C5448FFFFFFFEFF5C5448FF938D
      85FF948E87FF5C5347FFFDFDFDFF5C5347FF928D85FFFAFAF9FFF9F8F7FFF7F6
      F5FFF5F4F2FFCFCCC7FFC7C0B8FF32302EFF0000000000000000A2A2A3C3DADA
      DBFFE0E0E1FFE3E3E4FFDBDCDDFF1D283CFF0E1C30FF101E32FF0B182EFF999F
      A7FF6F7683FF0C1A2FFF142236FF0D1C30FF465160FFEAEBEAFFE2E2E3FFDFDF
      E0FFD9D9DAFF7E7E809A000000000000000008080810C1C0C0DD777676FF3635
      36FF373637FF3B3A3BFF5B5A5AFF2F2E2FFF9B9A9BFFFCFCFCFF555354FFC6C6
      C6FFF4F3F3FFCDCCCCFFECECECFFF8F8F8FFE9E9E9FF545253FF373536FF3735
      37FF373637FF616060FFDBDBDAEF0000001C0000000000000000393C7CA4181F
      A8FE1A20A9FF1A20A9FF14152834060607071C1D3D531A20A3F8181FA8FF1A20
      A9FF191FA8FF191FA7FE1A2092DB1718232B000000001D203E521A20A8FE1A20
      A9FF1A20A9FF2A2E63830000000000000000343331FFCDC6BFFFD5D3D0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF948E87FF574F43FFFCFCFCFF574F42FF948E
      86FF969089FF574E42FFF8F8F7FF574E42FF928C84FFF6F5F3FFF3F2F0FFF1EF
      EDFFEDECE9FFCECAC6FFCDC6BFFF343331FF0000000000000000A2A2A3C3D9D9
      DAFFDFE0E0FFE2E2E3FFE5E6E6FFD8DADCFF7E8996FF6E7A89FFAEB3BBFFF0F0
      F0FFEEEFEFFF9BA3ADFF697585FF8D96A1FFE4E5E6FFE4E4E5FFE2E2E3FFDFDF
      E0FFD8D8D9FF7E7E7E9A000000000000000008080810C1C0C0DD797878FF3938
      39FF393738FF757475FFFFFFFFFFC8C7C7FFACAAABFFFCFCFCFF5A5959FFAAAA
      AAFFFCFBFBFF4F4D4EFF605F5FFF6A6969FF3D3B3CFF373536FF3A3839FF3938
      39FF3A3839FF636262FFDBDADAEF0000001C0000000000000000373A76961921
      ADFE1A20AEFF1920AEFF16183B50212443571B219AE0191FACFE1A20AEFF1A20
      AEFF191FACFE1B208ED123233946000000000000000025275169191FADFE1920
      ADFF1A21AEFF2B2E607B0000000000000000353433FFD2CCC6FFD7D5D3FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFEFFBAB7B2FF41382AFF6E675CFF41372AFFBAB7
      B1FFBAB7B2FF413729FF6C655AFF41382AFFB5B0ABFFF0EEECFFECEAE7FFE9E6
      E3FFE4E1DCFFCCC8C4FFD2CCC6FF353433FF0000000000000000A5A5A3C3DEDE
      DCFFE4E4E2FFE8E8E6FFEAEBE8FFEDEDEBFFF2F2EFFFF6F6F2FFF2F3F0FFF2F3
      F0FFF2F2F0FFF3F3F0FFF6F7F3FFF0F1EEFFEDEDEAFFEAEAE7FFE8E7E5FFE4E3
      E1FFDDDDDBFF8181809A000000000000000008080810C1C0C0DD7B7979FF3C3A
      3BFF3C3B3BFF3A3838FF696868FFDDDCDCFFFBFBFBFFFBFBFBFF605F5FFF6A68
      68FFFDFDFDFF979595FF343233FF373536FFD7D6D6FFA1A0A0FF383637FF3C3A
      3BFF3C3B3BFF656364FFDBDBDBEF0000001C00000000000000002B2E5A711C25
      B4FE181FB1FF1920B2FF1A208AC41B239BDC1920B1FE1920B2FF1920B2FF1920
      B1FE1C209ADB23243946040404040000000002020303282C78A3191FB1FE1920
      B1FF1E25B5FF222447580000000000000000373534FFD7D2CCFFD9D7D5FFFFFF
      FFFFFEFEFEFFFEFEFEFFFDFDFDFFF8F7F7FFADA9A2FF807970FFACA8A2FFF4F2
      F1FFF2F1EFFFA7A39BFF7B746AFFA59F98FFE7E4E0FFE7E4DFFFE2DEDAFFDCD8
      D3FFD7D2CDFFC9C5C0FFD7D2CCFF373534FF000000000000000024286AC52C31
      88FF33388CFF4F539BFF33368CFF5B5FA2FF32378CFF5C5FA3FF424795FF3338
      8CFF2F348BFF2F348BFF2E338AFF4F539BFF4D519BFF4C5099FF3F4393FF292E
      87FF2C3188FF1B1E529A000000000000000008080810C1C0C0DD7C7B7AFF3E3D
      3DFF3F3D3DFF3F3D3DFF3E3D3DFF3D3B3BFFCFCECEFFFCFCFCFF636162FF3A38
      39FFBFBEBDFFFBFBFAFFB5B4B3FFCECCCCFFFEFEFEFF777676FF3E3C3CFF3E3D
      3DFF3F3D3EFF676566FFDCDBDBEF0000001C000000000000000010112028232D
      BAF81920B7FF1920B7FF1920B8FF1920B8FF1A21B8FF1920B8FF1920B7FE1B21
      9EDA1819252C000000000000000003030303282A46541920A5E51920B7FF1A22
      B8FF252EB8F40D0D12160000000000000000383735FFDBD7D2FFCCBAA6FFE1C2
      9FFFDFC09FFFDEC09FFFDBBE9EFFD9BD9EFFD6BB9DFFD4B99CFFD1B89BFFCFB5
      99FFCCB398FFC9B196FFC5AE94FFC2AB92FFBEA88FFFBAA48CFFB59F88FFB19C
      85FFAF9A84FFB3A79CFFDBD7D2FF383735FF0000000000000000171B73C4171D
      90FF4F54ACFF8B8EC8FF8487C4FF6366B5FF868AC6FF6567B6FF6F73BBFF383D
      A0FF181E91FF181E91FF161C90FF7C80C1FF787BBFFF7477BDFF6C70B9FF5D61
      B1FF161C8FFF1015599A00000000000000000606060FC1C1C1DD7E7C7CFF413E
      40FF413F3FFF403F3FFF403E3EFF403E3EFF4A4848FFBAB9B9FF484747FF413F
      3FFF3F3D3DFF898788FFBEBEBDFFB9B8B8FF6C6A6AFF3D3B3BFF413F3FFF413F
      3FFF413F40FF696767FFDBDBDBEF0000001C0000000000000000010102022228
      94BE1F28C0FF1920BCFF1A21BDFF1A21BDFF1A21BDFF1920BBFC1B2098CD2123
      39450000000000000000000000001F2036401A2096C81920BCFE1920BCFF2029
      C1FF1D247EA5000000000000000000000000393837FFDFDCD8FFB58854FFB15C
      00FFA95800FF93520DFFA05300FFAD6C25FFAD7232FFA76B2BFFAF7C45FFA068
      2BFF9F6A31FFA37340FF946229FF8A561EFF84521BFF6E3B00FF653B0DFF6635
      00FF633400FF8A7054FFDFDCD8FF393837FF0000000000000000191E6DA1191F
      A5FF141BA2FF6D71C5FF868ACFFF383EB2FF898CD0FF3D41B2FF868ACFFF7A7E
      CAFF131AA2FF191FA4FF171DA3FF7C80CBFF787BCBFF7276C7FF767AC9FF7A7E
      CAFF171EA4FF2E314F7B00000000000000000404040BB5B5B4D48B898AFF4240
      41FF434141FF434141FF8E8C8CFF9A9998FF535152FF3D3B3CFF434141FF4341
      41FF434141FF424040FF3C3A3AFF4E4C4CFF999898FF8D8C8BFF434141FF4341
      41FF434141FF6F6E6DFFD7D7D7EC000000170000000000000000000000001714
      3A4F2732BDEF1A22C0FE1921C1FF1A22C1FF1A22C1FF1B22ACE3272A47530404
      0404000000000E0E1214232551621A20A6DB1A21BFFD1A21C1FF1C23C1FE2630
      B4E3292A3A400000000000000000000000003A3938FFE2E0DCFFB78A56FFB15C
      00FF945817FF8F806FFF8B561DFFA86419FFC09461FFBE9363FFE1CFBCFFB88E
      5FFFAE8250FFC6AA8BFFBA9B75FFA37B4EFF9D7549FF6C471DFF8C7D6FFF6440
      17FF633400FF8C7256FFE2E0DCFF3A3938FF00000000000000001E1E2D342732
      BEFA181FB7FF1A21B7FF1921B3FD131756A91A20ACF81A22B7FF1920B7FF1A21
      B7FF1921B8FF1A21B8FF1920B8FF3339A8ED212361B46F73D0FE787CD5FF7B80
      D6FF242EB5EE100E141900000000000000000202020351515197DCDCDBFF4442
      42FF3E3D3DFF9A9998FF757474FF555354FFC4C3C3FF3B393AFF424040FF4240
      40FF424040FF414040FF3B393AFFC4C3C2FF555353FF757473FF989796FF3F3E
      3EFF3F3D3EFFC8C7C7FF787878B4040404070000000000000000000000000707
      0808222463792A36C5F21C22C8FF1A21C7FF1A21C7FF1B22C4FC1A20B6EA1920
      A2CE1A1FA4D11B21BCF11A21C7FF1A21C6FF1920C6FF1C24C8FF2A36BFEB1C1E
      546703030404000000000000000000000000333232FAE6E3E1FFB98B58FFB15C
      00FFA46016FFC3BBB3FF9B5D1AFFA15707FFA4631AFFA46522FFAD7941FF9E65
      27FF975D1FFF966026FF9D6E3BFF956531FF885720FF764A1AFFC2BBB3FF6D44
      16FF633400FF8E7458FFE6E3E1FF333232FA0000000000000000000000001A1B
      424F2B37BDE32935D1FF2530C1F98A8981D32A34B2F12732D0FF2732D0FF2732
      D0FF2732D0FF2732D0FF2732D0FF383FA4EA808084D6232ECCFE2B36D1FF2732
      B1D5120F2A35000000000000000000000000000000000303031FA7A6A6D1E7E6
      E6FFB0AFAEFFD7D5D5FF4D4B4BFF403E3FFFC4C3C3FFAEACACFFB0AFAFFFB0AF
      AEFFAFADADFFAFADADFFACAAAAFFC2C1C1FF403F3FFF4D4B4BFFD5D4D3FFACAC
      ABFFDDDDDCFFC2C2C1E10606072F000000000000000000000000000000000000
      00000E0E121324286E842C37CDF7222CCFFF1A21CBFF181FCBFF1A21CCFF1A22
      CBFF1A22CBFF1A21CBFF181FCBFF1A22CBFF232DCFFF2C38C8F120215F72090A
      0B0C00000000000000000000000000000000050505BDCBC8C6FFCDB59BFFBB87
      4CFFB38755FFD3CDC7FFAE8557FFB0814CFFAD7E4CFFAB7D4CFFA77C4CFFA57A
      4CFFA2784CFF9F774CFF9D764CFF9A744CFF97734CFF967757FFD3CDC7FF9174
      55FF8C6D4CFFB7AA9BFFCBC8C6FF050505BD0000000000000000000000000000
      0000040405051A1A272B20213135A6A6A8F5282936451F2030331F2030331F20
      30331F2030331F2030331F203033383A4D5E8D8F92D71E1F3033171723260101
      0202000000000000000000000000000000000000000001010101040404193232
      3279848383C0F8F7F7FF4F4D4DFF424040FFC9C8C8FFAFAFAFDA7F7E7EB47F7E
      7EB47E7E7EB47D7C7DB4AEAEACDAC7C7C6FF434141FF4F4D4DFFF6F5F4FF8383
      83C13D3C3C840505052201010101000000000000000000000000000000000000
      0000000000000B0B0B0D1215596C2A36BDDF2F3DD7FE2430D3FE1D26D1FF1B23
      D1FF1B23D1FF1E27D1FF2630D3FE2E3DD6FE2732B6D711114B5D070708080000
      0000000000000000000000000000000000001313132B1D1D1DE191908EFFADAB
      AAFFAAA6A2FFD7D1CBFFAAA6A1FFAEACAAFFADACAAFFADACAAFFADACAAFFADAC
      AAFFADABAAFFADABAAFFADABAAFFADABAAFFADABAAFFAAA6A1FFD7D1CCFFAAA6
      A2FFADABAAFF91908EFF1D1D1DE11313132B0000000000000000000000000000
      0000000000000000000004040405AFAFB0F51616161B00000000000000000000
      00000000000000000000000000003232323A939393D000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000606062FF0EFEFFA828080FF666463FFE6E5E5FF2F2F2F78010101050101
      01050101010501010105302F2F79E5E4E4FF656363FF81807EFFEEEEEDFA0606
      062F010101010000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E141525275764242A9BB42934B4D02A36
      BAD82A36B8D72A34B3CF242494AE21234F5B0B0B101100000000000000000000
      000000000000000000000000000000000000000000000D0D0D122D2D2D623C3C
      3C7E141411EDD4D0CCFF181513F03E3E3E803E3E3E803E3E3E803E3E3E803E3E
      3E803E3E3E803E3E3E803E3E3E803E3E3E803E3E3E80181513F0D1CEC9FF1514
      11ED3C3C3C7E2D2D2D620D0D0D12000000000000000000000000000000000000
      00000000000000000000000000005D5D5D7C0606060600000000000000000000
      0000000000000000000000000000121212145454546A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101010644444485DBDADAECE4E3E3F2868484B903030319000000000000
      000000000000000000000202021A868484B9E3E2E2F2DAD8D8EC424242840101
      0106000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000505080913141F221C1D
      2E321C1C2C3112121D1F04030506000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014141455020202B615151559000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151559020202B61414
      1455000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030305000000190000001F0202020900000000000000000000
      00000000000000000000000000000101010A0000011F00000019030303050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FC003FFE7FFF000000000000FC003FFC
      3FFF000000000000F8001FF81FFF000000000000E00007F80FFF000000000000
      800001F007FF000000000000800001E003FF000000000000800001C001FF0000
      00000000800001C080FF00000000000080000183C07F0000000000008000010F
      F03F0000000000008000013FF81F000000000000800001FFFC0F000000000000
      800001FFFF07000000000000800001FFFF83000000000000800001FFFFE10000
      00000000C00003000700000000000000F0000F000000000000000000F0000F01
      0032000000000000F0000F81007F000000000000F0000F83007F000000000000
      FC001FC30073000000000000FC003FC60003000000000000FC003FE602030000
      00000000FFFFFFE60F03000000000000FFE3FFFFFFFF000000FC003FFFE1FFFC
      003F000000F8001FFFC0FFE00007C00003F8000FFFC007E00007E00003F0000F
      FFC003FE007FE00003F0000BFFC003FF807FE00003F80000FFC403FC001FE000
      03000000FFC401FC001FE00003000000FE0003F8001FE00003000000F8003FF0
      003FE00003000000F8001FF0007FE00003000000F8001FF0F0FFE00003000000
      F8001FF381C7E00003000000F8001FFF83C7E00003000000F8003FFF0007E000
      03000000FE007FFC000FE00003000000FE00FFF8001FE00003000000FE00FFF8
      001FE00003000000FE00FFFC003FE00003800000FC007FFC00FFE00003800000
      FC007FFE01FFE00007800000FC007FFF8FFFE00007800000FC007FFFCFFFE000
      0F800000FE00FFFFFFFFE0001F800000FFFFFFFFFFFFFFFFFFFFE3FF800001FF
      FFFFFFFFFFFFC01F000000FFFFFFFE9FFFFFC007000000FFFFFFFF0FFFF00007
      000000FFFFFFFE0FFFF00007000000FFFFFFFE0FFFE00007000000FFFFFFFC05
      FFE0030F000000FFFFFFE801FFE003FF000000FFFFFFD002FFE003FF000000C8
      0000C000FFE003FF000000C8E03FC001FFE003FF000000CC623FC0C07F8007FF
      000000CE3C3FC140FF803FFF000000CF183FE3607F003FFF0000000F8C7FFFD0
      6F003FFF00000008807FFFD82F803FFF00000088107FFFEC1FC03FFF000000CC
      30FFFFFA0FE07FFF000000FFFFFFFFFE0FFFFFFF000000FFFFFFFFFD07FFFFFF
      000000FFFFFFFFFEC7FFFFFF000001FFFFFFFFFFE7FFFFFFE1FF0FFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3F80
      0001FFFFFFE00007800001000000800001800001800001000000000000800000
      F8001F000000C00007000000F0000F000000C00003000000E00007000000C000
      03000000E00007000000C00003000000E07007000000C00003000000C0C00300
      0000C00003000000C18003000000C00003000000C18003000000C00003000000
      C00083000000C00003000000C00183000000C00003000000C00103000000C000
      03000000C00603000000C00003000000C00E07000000C00003000000E0080700
      0000C00003000000E00007000000E00007800001F0000F000000F0000F800001
      F8001F000000FC7E7FF00007FE007F800001FE7E7FF03C0FFF81FFF1FF8FFFFF
      FFF87E1FFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupFiltroPesq: TPopupMenu
    Images = imgPop24
    Left = 480
    Top = 48
    object PesCodigo: TMenuItem
      Caption = 'C'#243'digo'
      Hint = 'Pesquisa Por Codigo'
      ImageIndex = 5
      OnClick = PesCodigoClick
    end
    object PesqToReg: TMenuItem
      Caption = 'Todos Registro'
      Hint = 'Pesquisa Todos os Registros'
      ImageIndex = 9
      OnClick = PesqToRegClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object PesqPPInclusao: TMenuItem
      Caption = 'Por Periodo de Inclus'#227'o'
      Hint = 'Pesquisa por Data de Inclus'#227'o'
      ImageIndex = 1
      OnClick = PesqPPInclusaoClick
    end
    object PesqPPAlteracao: TMenuItem
      Caption = 'Por Periodo de Altera'#231#227'o'
      Hint = 'Pesquisa por Data de Altera'#231#227'o'
      ImageIndex = 2
      OnClick = PesqPPAlteracaoClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object PesqRegBloqueados: TMenuItem
      Caption = 'Registros Bloqueados'
      Hint = 'Pesquisa Todos os Registro Bloqueados'
      ImageIndex = 0
      OnClick = PesqRegBloqueadosClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
  end
  object ADOQCaixaMovim: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_CAIXAMOVIMENTACAO')
    Left = 768
    Top = 48
    object ADOQCaixaMovimID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOQCaixaMovimID_CAIXAMOV: TIntegerField
      FieldName = 'ID_CAIXAMOV'
    end
    object ADOQCaixaMovimSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOQCaixaMovimINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOQCaixaMovimDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOQCaixaMovimDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOQCaixaMovimDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOQCaixaMovimSERVICO: TStringField
      FieldName = 'SERVICO'
      Size = 100
    end
    object ADOQCaixaMovimCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 100
    end
    object ADOQCaixaMovimHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 100
    end
    object ADOQCaixaMovimVLMOVIMENTO: TBCDField
      FieldName = 'VLMOVIMENTO'
      Precision = 12
      Size = 2
    end
    object ADOQCaixaMovimESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 100
    end
    object ADOQCaixaMovimTIPO_MOVIMENTO: TStringField
      FieldName = 'TIPO_MOVIMENTO'
      FixedChar = True
      Size = 1
    end
  end
  object DSCaixaMovim: TDataSource
    DataSet = ADOQCaixaMovim
    Left = 768
    Top = 8
  end
  object PopExcluir: TPopupMenu
    Images = imgPop24
    Left = 539
    Top = 48
    object ExcluirUMReg: TMenuItem
      Caption = 'Excluir Registro Selecionado'
      Hint = 'Excluir Registro Selecionado'
      ImageIndex = 7
      OnClick = ExcluirUMRegClick
    end
    object mN4: TMenuItem
      Caption = '-'
    end
  end
  object ADOCaixa_AbreFecha: TADOQuery
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from TB_CAIXA_ABREFECHA where DATA_FINAL is null and HO' +
        'RA_FINAL is null')
    Left = 605
    Top = 23
    object ADOCaixa_AbreFechaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOCaixa_AbreFechaDATA_INICIO: TDateTimeField
      FieldName = 'DATA_INICIO'
    end
    object ADOCaixa_AbreFechaDATA_FINAL: TDateTimeField
      FieldName = 'DATA_FINAL'
    end
    object ADOCaixa_AbreFechaHORA_INICIO: TWideStringField
      FieldName = 'HORA_INICIO'
      Size = 16
    end
    object ADOCaixa_AbreFechaHORA_FINAL: TWideStringField
      FieldName = 'HORA_FINAL'
      Size = 16
    end
    object ADOCaixa_AbreFechaUSER_INICIO: TIntegerField
      FieldName = 'USER_INICIO'
    end
    object ADOCaixa_AbreFechaUSER_FINAL: TIntegerField
      FieldName = 'USER_FINAL'
    end
    object ADOCaixa_AbreFechaVLTOTALRECEBIDO: TFloatField
      FieldName = 'VLTOTALRECEBIDO'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaVLTOTALSAIDA: TFloatField
      FieldName = 'VLTOTALSAIDA'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaVLTOTALGERAL: TFloatField
      FieldName = 'VLTOTALGERAL'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaVLSAIDACONTAS: TFloatField
      FieldName = 'VLSAIDACONTAS'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSALDO_DINHEIRO: TFloatField
      FieldName = 'SALDO_DINHEIRO'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSALDO_BOLETO: TFloatField
      FieldName = 'SALDO_BOLETO'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSALDO_CHEQUE: TFloatField
      FieldName = 'SALDO_CHEQUE'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSALDO_CARTAO: TFloatField
      FieldName = 'SALDO_CARTAO'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSAIDA_DINHEIRO: TFloatField
      FieldName = 'SAIDA_DINHEIRO'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaSAIDA_CHEQUE: TFloatField
      FieldName = 'SAIDA_CHEQUE'
      DisplayFormat = 'R$ ###,##0.00'
    end
    object ADOCaixa_AbreFechaUSERINICIO: TStringField
      FieldKind = fkLookup
      FieldName = 'USERINICIO'
      LookupDataSet = ADOUsuarios
      LookupKeyFields = 'ID'
      LookupResultField = 'LOGIN'
      KeyFields = 'USER_INICIO'
      Size = 50
      Lookup = True
    end
    object ADOCaixa_AbreFechaUSERFINAL: TStringField
      FieldKind = fkLookup
      FieldName = 'USERFINAL'
      LookupDataSet = ADOUsuarios
      LookupKeyFields = 'ID'
      LookupResultField = 'LOGIN'
      KeyFields = 'USER_FINAL'
      Size = 50
      Lookup = True
    end
    object ADOCaixa_AbreFechaVL_INICIO: TBCDField
      FieldName = 'VL_INICIO'
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 2
    end
    object ADOCaixa_AbreFechaVL_FECHAMENTO: TBCDField
      FieldName = 'VL_FECHAMENTO'
      DisplayFormat = '###,##0.00'
      Precision = 12
      Size = 2
    end
  end
  object ADOUsuarios: TADOQuery
    Active = True
    Connection = DMPrincipal.ADOConnectionPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from TB_USUARIO')
    Left = 893
    Top = 7
    object ADOUsuariosID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOUsuariosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object ADOUsuariosINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object ADOUsuariosDATA_INC: TDateTimeField
      FieldName = 'DATA_INC'
    end
    object ADOUsuariosDATA_ALT: TDateTimeField
      FieldName = 'DATA_ALT'
    end
    object ADOUsuariosDATA_HAB: TDateTimeField
      FieldName = 'DATA_HAB'
    end
    object ADOUsuariosDESC_USUARIO: TStringField
      FieldName = 'DESC_USUARIO'
      Size = 100
    end
    object ADOUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
    end
    object ADOUsuariosSENHA: TStringField
      FieldName = 'SENHA'
    end
    object ADOUsuariosID_PERFIL: TIntegerField
      FieldName = 'ID_PERFIL'
    end
  end
  object DSCaixa_AbreFecha: TDataSource
    DataSet = ADOCaixa_AbreFecha
    Left = 605
    Top = 71
  end
end
