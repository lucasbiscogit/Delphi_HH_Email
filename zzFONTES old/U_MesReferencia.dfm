object F_MesReferencia: TF_MesReferencia
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Mes de Referencia'
  ClientHeight = 123
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblMesReferencia: TLabel
    Left = 38
    Top = 49
    Width = 129
    Height = 22
    Caption = 'Mes Referencia'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object MEMesReferencia: TMaskEdit
    Left = 173
    Top = 46
    Width = 106
    Height = 30
    CharCase = ecUpperCase
    Color = clInfoBk
    Enabled = False
    EditMask = 'lll/0000;1;'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 0
    Text = '   /    '
    Visible = False
    OnEnter = MEMesReferenciaEnter
    OnExit = MEMesReferenciaExit
    OnKeyPress = MEMesReferenciaKeyPress
  end
end
