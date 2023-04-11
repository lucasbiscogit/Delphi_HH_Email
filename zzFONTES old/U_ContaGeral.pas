unit U_ContaGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB, DateUtils,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask;

type
// Metodo Para Execuções
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

  TF_ContaGeral = class(TForm)
    ImageListHabilitado: TImageList;
    ImageListDesabilitado: TImageList;
    ToolBarCadPadrao: TToolBar;
    btnAutoFiltrar: TToolButton;
    btnOrdenar: TToolButton;
    btnSeparador1: TToolButton;
    btnInicio: TToolButton;
    btnAnterior: TToolButton;
    btnProximo: TToolButton;
    btnFinal: TToolButton;
    btnSeparador2: TToolButton;
    btnIncluir: TToolButton;
    btnAlterar: TToolButton;
    btnExcluir: TToolButton;
    btnSeparador3: TToolButton;
    btnGravar: TToolButton;
    btnReverter: TToolButton;
    btnSair: TToolButton;
    btnSeparador4: TToolButton;
    btnImpressao: TToolButton;
    BalloonHintModelo: TBalloonHint;
    imgPop24: TImageList;
    PageControlCadastro: TPageControl;
    TabSheetFicha: TTabSheet;
    pnlFichaBotoesCheck: TPanel;
    lblStatus: TLabel;
    edtValorCampo: TEdit;
    btnOk: TBitBtn;
    CheckHabilita: TDBCheckBox;
    RGPesquisaGenerica: TRadioGroup;
    pnlFichaCampos: TPanel;
    TabSheetTela: TTabSheet;
    pnlTela: TPanel;
    GridLista: TDBGrid;
    CheckInativo: TDBCheckBox;
    statBarPadrao: TStatusBar;
    PopupFiltroPesq: TPopupMenu;
    PesCodigo: TMenuItem;
    PesqToReg: TMenuItem;
    N1: TMenuItem;
    PesqPPInclusao: TMenuItem;
    PesqPPAlteracao: TMenuItem;
    N2: TMenuItem;
    PesqRegBloqueados: TMenuItem;
    N6: TMenuItem;
    ADOQContaGeral: TADOQuery;
    DSContaGeral: TDataSource;
    PopOrdenar: TPopupMenu;
    OrdeCodigo: TMenuItem;
    N5: TMenuItem;
    Status1: TMenuItem;
    Inativo1: TMenuItem;
    N8: TMenuItem;
    OrdeDTInclusao: TMenuItem;
    OrdeDTAlteracao: TMenuItem;
    OrdeDTHabilitacao: TMenuItem;
    N3: TMenuItem;
    Descrio1: TMenuItem;
    N4: TMenuItem;
    PopExcluir: TPopupMenu;
    ExcluirUMReg: TMenuItem;
    mN4: TMenuItem;
    ADOQContaGeralID: TAutoIncField;
    ADOQContaGeralSTATUS: TStringField;
    ADOQContaGeralINATIVO: TStringField;
    ADOQContaGeralDATA_INC: TDateTimeField;
    ADOQContaGeralDATA_ALT: TDateTimeField;
    ADOQContaGeralDATA_HAB: TDateTimeField;
    ADOQContaGeralNOME_CLIET_CONTA: TStringField;
    ADOQContaGeralLOCALIDADE: TStringField;
    ADOQContaGeralUF: TStringField;
    ADOQContaGeralCPF_CLIENTE: TStringField;
    ADOQContaGeralCLASSIFICACAO: TStringField;
    ADOQContaGeralATENDIMENTOCPF: TStringField;
    ADOQContaGeralPIN: TIntegerField;
    ADOQContaGeralSEUCODIGO: TIntegerField;
    ADOQContaGeralCONTAMES: TStringField;
    ADOQContaGeralVALORAPAGAR: TBCDField;
    ADOQContaGeralDISCRIMOPERACAO: TStringField;
    ADOQContaGeralQUANTIDADEKW: TIntegerField;
    ADOQContaGeralPRECOMEDIO: TFMTBCDField;
    ADOQContaGeralVALORRS: TBCDField;
    ADOQContaGeralDATALEITURA: TDateTimeField;
    ADOQContaGeralDATAPROXIMALEITURA: TDateTimeField;
    ADOQContaGeralNUMDIAS: TIntegerField;
    ADOQContaGeralDATALEITURAATUAL: TDateTimeField;
    ADOQContaGeralDESCRICAO1: TStringField;
    ADOQContaGeralQUANT1: TIntegerField;
    ADOQContaGeralDESCRICAO2: TStringField;
    ADOQContaGeralQUANT2: TIntegerField;
    ADOQContaGeralDESCRICAO3: TStringField;
    ADOQContaGeralDESCRICAO4: TStringField;
    ADOQContaGeralDESCRICAO5: TStringField;
    ADOQContaGeralPORCENTAGEM1: TBCDField;
    ADOQContaGeralDESCRICAO6: TStringField;
    ADOQContaGeralPORCENTAGEM2: TBCDField;
    ADOQContaGeralDESCRICAO7: TStringField;
    ADOQContaGeralCREDITOSDEVOLVER: TBCDField;
    ADOQContaGeralLEITURAATUAL: TIntegerField;
    ADOQContaGeralLEITURAANTERIOR: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    edtContaMes: TDBEdit;
    Label14: TLabel;
    edtVencimento: TDBEdit;
    Label15: TLabel;
    edtVLTotalPG: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    edtQTDEKWh: TDBEdit;
    Label18: TLabel;
    edtPrecoMedio: TDBEdit;
    Label19: TLabel;
    edtValorMedio: TDBEdit;
    ADOQContaGeralVENCIMENTO: TDateTimeField;
    ADOQContaGeralCEP: TStringField;
    ADOQContaGeralLOCAL_CONTA: TStringField;
    GroupBox1: TGroupBox;
    Label20: TLabel;
    edtDTLeitAnterior: TDBEdit;
    Label21: TLabel;
    edtDTProxLeit: TDBEdit;
    Label23: TLabel;
    edtDTLeitAtual: TDBEdit;
    edtDias: TDBEdit;
    Label22: TLabel;
    GroupBox2: TGroupBox;
    Label36: TLabel;
    edtAparelAtual: TDBEdit;
    Label37: TLabel;
    edtAparelAnterior: TDBEdit;
    ADOQContaGeralVALORRS1: TBCDField;
    ADOQContaGeralVALORRS2: TBCDField;
    ADOQContaGeralVALORRS3: TBCDField;
    ADOQContaGeralVALORRS4: TBCDField;
    ADOQContaGeralVALORRS5: TBCDField;
    ADOQContaGeralVALORRS6: TBCDField;
    ADOQContaGeralVALORRS7: TBCDField;
    ADOQContaGeralCREDDEVOLDESC: TStringField;
    ADOQContaGeralPAGO: TStringField;
    ADOQContaGeralDATAPAGAMENTO: TDateTimeField;
    ADOQContaGeralTARIFAPRECO1: TFMTBCDField;
    ADOQContaGeralTARIFAPRECO2: TFMTBCDField;
    Panel9: TPanel;
    Panel8: TPanel;
    Label35: TLabel;
    Label38: TLabel;
    edtCREDITOSDEVOLVER: TDBEdit;
    edtCREDDEVOLDESC: TDBEdit;
    Panel7: TPanel;
    Label34: TLabel;
    Label45: TLabel;
    edtDESCRICAO7: TDBEdit;
    edtVALORRS7: TDBEdit;
    Panel5: TPanel;
    Label32: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    edtDESCRICAO5: TDBEdit;
    edtVALORRS5: TDBEdit;
    edtPorcenta1: TDBEdit;
    Panel4: TPanel;
    Label31: TLabel;
    Label42: TLabel;
    edtDESCRICAO4: TDBEdit;
    edtVALORRS4: TDBEdit;
    Panel3: TPanel;
    Label30: TLabel;
    Label41: TLabel;
    edtDESCRICAO3: TDBEdit;
    edtVALORRS3: TDBEdit;
    Panel2: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label40: TLabel;
    edtDESCRICAO2: TDBEdit;
    edtQuant2: TDBEdit;
    edtTarifPrec2: TDBEdit;
    edtVALORRS2: TDBEdit;
    Panel1: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    edtDESCRICAO1: TDBEdit;
    edtQuant1: TDBEdit;
    edtTarifPrec1: TDBEdit;
    edtVALORRS1: TDBEdit;
    Panel6: TPanel;
    Label33: TLabel;
    Label44: TLabel;
    Label47: TLabel;
    edtDESCRICAO6: TDBEdit;
    edtVALORRS6: TDBEdit;
    edtPorcentag2: TDBEdit;
    Label48: TLabel;
    DBEdit48: TDBEdit;
    Label49: TLabel;
    ADOQContaGeralDESCRICAO8: TStringField;
    ADOQContaGeralVALORRS8: TBCDField;
    ADOQContaGeralDESCRICAO9: TStringField;
    ADOQContaGeralVALORRS9: TBCDField;
    ADOQContaGeralVALORMEDIOUSAR: TFMTBCDField;
    Label51: TLabel;
    edtPrecoMediousar: TDBEdit;
    Panel10: TPanel;
    Label52: TLabel;
    Label53: TLabel;
    EdtDESCRICAO8: TDBEdit;
    edtVALORRS8: TDBEdit;
    Panel11: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    edtDESCRICAO9: TDBEdit;
    edtVALORRS9: TDBEdit;
    edtMesJuro: TEdit;
    edtMesMulta: TEdit;
    Label50: TLabel;
    Label56: TLabel;
    ADOQContaGeralVINCULADA: TStringField;
    procedure btnSairClick(Sender: TObject);
    procedure GridListaKeyPress(Sender: TObject; var Key: Char);
    procedure GridListaDblClick(Sender: TObject);
    procedure PesCodigoClick(Sender: TObject);
    procedure PesqToRegClick(Sender: TObject);
    procedure PesqRegBloqueadosClick(Sender: TObject);
    procedure btnInicioClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnFinalClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnReverterClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edtValorCampoKeyPress(Sender: TObject; var Key: Char);
    procedure RGPesquisaGenericaClick(Sender: TObject);
    procedure PesqPPInclusaoClick(Sender: TObject);
    procedure PesqPPAlteracaoClick(Sender: TObject);
    procedure OrdeCodigoClick(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure Inativo1Click(Sender: TObject);
    procedure OrdeDTInclusaoClick(Sender: TObject);
    procedure OrdeDTAlteracaoClick(Sender: TObject);
    procedure OrdeDTHabilitacaoClick(Sender: TObject);
    procedure Descrio1Click(Sender: TObject);
    procedure ExcluirUMRegClick(Sender: TObject);
    procedure GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtContaMesEnter(Sender: TObject);
    procedure edtContaMesExit(Sender: TObject);
    procedure edtVencimentoEnter(Sender: TObject);
    procedure edtVencimentoExit(Sender: TObject);
    procedure edtQTDEKWhEnter(Sender: TObject);
    procedure edtQTDEKWhExit(Sender: TObject);
    procedure edtPrecoMedioEnter(Sender: TObject);
    procedure edtPrecoMedioExit(Sender: TObject);
    procedure edtValorMedioEnter(Sender: TObject);
    procedure edtValorMedioExit(Sender: TObject);
    procedure edtDTLeitAtualEnter(Sender: TObject);
    procedure edtDTLeitAtualExit(Sender: TObject);
    procedure edtDTProxLeitEnter(Sender: TObject);
    procedure edtDTProxLeitExit(Sender: TObject);
    procedure edtDTLeitAnteriorEnter(Sender: TObject);
    procedure edtDTLeitAnteriorExit(Sender: TObject);
    procedure edtDiasEnter(Sender: TObject);
    procedure edtDiasExit(Sender: TObject);
    procedure edtAparelAtualEnter(Sender: TObject);
    procedure edtAparelAtualExit(Sender: TObject);
    procedure edtAparelAnteriorEnter(Sender: TObject);
    procedure edtAparelAnteriorExit(Sender: TObject);
    procedure edtQuant1Enter(Sender: TObject);
    procedure edtQuant1Exit(Sender: TObject);
    procedure edtTarifPrec1Enter(Sender: TObject);
    procedure edtTarifPrec1Exit(Sender: TObject);
    procedure edtQuant2Enter(Sender: TObject);
    procedure edtQuant2Exit(Sender: TObject);
    procedure edtTarifPrec2Enter(Sender: TObject);
    procedure edtTarifPrec2Exit(Sender: TObject);
    procedure edtVALORRS3Enter(Sender: TObject);
    procedure edtVALORRS3Exit(Sender: TObject);
    procedure edtVALORRS4Enter(Sender: TObject);
    procedure edtVALORRS4Exit(Sender: TObject);
    procedure edtVALORRS5Enter(Sender: TObject);
    procedure edtVALORRS5Exit(Sender: TObject);
    procedure edtPorcenta1Enter(Sender: TObject);
    procedure edtPorcenta1Exit(Sender: TObject);
    procedure edtPorcentag2Enter(Sender: TObject);
    procedure edtPorcentag2Exit(Sender: TObject);
    procedure edtVALORRS6Enter(Sender: TObject);
    procedure edtVALORRS6Exit(Sender: TObject);
    procedure edtVALORRS7Enter(Sender: TObject);
    procedure edtVALORRS7Exit(Sender: TObject);
    procedure edtCREDITOSDEVOLVEREnter(Sender: TObject);
    procedure edtCREDITOSDEVOLVERExit(Sender: TObject);
    procedure edtVLTotalPGEnter(Sender: TObject);
    procedure edtVLTotalPGExit(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure edtDESCRICAO1Enter(Sender: TObject);
    procedure edtDESCRICAO1Exit(Sender: TObject);
    procedure edtVALORRS1Enter(Sender: TObject);
    procedure edtVALORRS1Exit(Sender: TObject);
    procedure edtDESCRICAO2Enter(Sender: TObject);
    procedure edtDESCRICAO2Exit(Sender: TObject);
    procedure edtVALORRS2Enter(Sender: TObject);
    procedure edtVALORRS2Exit(Sender: TObject);
    procedure edtDESCRICAO3Enter(Sender: TObject);
    procedure edtDESCRICAO3Exit(Sender: TObject);
    procedure edtDESCRICAO4Enter(Sender: TObject);
    procedure edtDESCRICAO4Exit(Sender: TObject);
    procedure edtDESCRICAO5Enter(Sender: TObject);
    procedure edtDESCRICAO5Exit(Sender: TObject);
    procedure edtDESCRICAO6Enter(Sender: TObject);
    procedure edtDESCRICAO6Exit(Sender: TObject);
    procedure edtDESCRICAO7Enter(Sender: TObject);
    procedure edtDESCRICAO7Exit(Sender: TObject);
    procedure edtCREDDEVOLDESCEnter(Sender: TObject);
    procedure edtCREDDEVOLDESCExit(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure Panel3DblClick(Sender: TObject);
    procedure Panel4DblClick(Sender: TObject);
    procedure Panel5DblClick(Sender: TObject);
    procedure Panel6DblClick(Sender: TObject);
    procedure Panel7DblClick(Sender: TObject);
    procedure Panel8DblClick(Sender: TObject);
    procedure Panel10DblClick(Sender: TObject);
    procedure Panel11DblClick(Sender: TObject);
    procedure edtMesJuroExit(Sender: TObject);
    procedure edtMesMultaExit(Sender: TObject);
    procedure edtMesJuroEnter(Sender: TObject);
    procedure edtMesMultaEnter(Sender: TObject);
    procedure edtVALORRS8Exit(Sender: TObject);
    procedure edtVALORRS8Enter(Sender: TObject);
    procedure edtVALORRS9Exit(Sender: TObject);
    procedure edtVALORRS9Enter(Sender: TObject);
  private
    FExecutar: TExecutar; // do Type EXECUTAR
    procedure SetExecutar(const Value: TExecutar); // do Type EXECUTAR
    procedure HabBotoesPesDesCheck;    // Habilitar Botoes e Desabilitar Checks Do Cabecalho da Aba Cadastro
    procedure HabCheckDesBotoes;        // Habilitar Checks e Desabilitar Botoes Do Cabecalho da Aba Cadastro
    procedure PesquisaPorCodigo;   // Fazer Pesquisas por Codigo
    procedure PesquisaPorDescricao;  // Pesquisa Padrao por Descricao
    procedure CalculoTUSD; // Consumo Sistema [KW/h] TUSD
    procedure ConsumoBanVerTE; // Consumo Bandeira Verde
    { Private declarations }

  public
    { Public declarations }
    property Executar: TExecutar read FExecutar write SetExecutar;      // do Type EXECUTAR
    Procedure GridZebrado (RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);   // Procedure para Pintar a Grid
    procedure CalcularValorMedioPUsar; // Calcular o valor medio para usar nas contas
  end;

var
  F_ContaGeral: TF_ContaGeral;

 // Armazena Sentença SQL
    strSql: string;

 // Guardar Mensagem
    mensagem: string;

 // Define o Caption dos Application MessageBox
    MensageAppMesBox: string;

 // Define as Opcoes de Menu - Inclusão - Alteração - Exclusão - Registro
    ModoEdicao: string;

 // Define o Nome da Tabela Em Uso
    nomeTabela: string;

 // Define o Titulo da Janela -- Filhas
    nomeJanela: string;

 // Define o Campo da Descricao da Tela Para realizar a Pesquisa por Descricao -- Filhas
    DescPrincipal: string;

// Armazenar o Nome de uma Tarefa em Andamento
    tarefa: string;

// Armazena Datas o Formato
    valdata1, valdata2, val1, val2: string;

// Controle do Botao Pesquisar da Janela Pesquiar por datas
    tarefaClick: integer;

 {VARIAVEIS PARA DEIXAR COMO GENERICA A TELA}
    ADOTabela: TADOQuery;    // Variaveis Para Receber o ADOQuery

implementation

uses
  U_DMPrincipal, U_PesqData, U_Principal;

{$R *.dfm}

procedure TF_ContaGeral.btnAlterarClick(Sender: TObject);
begin
  ADOTabela.Edit;                                  //*********** ADOQUERY = ADOTABELS **************************************

// Inclusao do Registro
  ADOTabela.FieldByName('DATA_ALT').AsDateTime:= Date;      //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibição de Objetos
    HabCheckDesBotoes;     // Executando funcao de Habchecks
    pnlFichaCampos.Enabled:= true;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Alteraçao de Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha; // Colocando a Tela Certa
end;

procedure TF_ContaGeral.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navegação
     Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_ContaGeral.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navegação
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_ContaGeral.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
begin

// Verificando o que esta sendo Feito -- Adicionando  ou Editando Para Dar a mensagem
    if ADOTabela.State in [dsInsert] then          //*********** ADOQUERY = ADOTABELS **************************************
       begin
             mensagem:= ' Registro Incluído  com Sucesso. ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);

        /////// criando o Log de Operações
                 // Log Operacoes
                DMPrincipal.ADOLog_Operacoes.CLOSE;
                DMPrincipal.ADOLog_Operacoes.Open;
                DMPrincipal.ADOLog_Operacoes.Insert;
                DMPrincipal.ADOLog_Operacoes.FieldByName('USUARIO').AsString:= F_Principal.ADOQLogin.FieldByName('ID').AsString;
                DMPrincipal.ADOLog_Operacoes.FieldByName('DATA').AsDateTime:= Now;
                DMPrincipal.ADOLog_OperacoesHORA.Value:= FormatDateTime('hh:mm:ss',Now);
                DMPrincipal.ADOLog_Operacoes.FieldByName('TABELA').AsString:= nomeTabela;
                DMPrincipal.ADOLog_Operacoes.FieldByName('OPERACAO').AsString:= 'INCLUSAO DE NOVO REGISTRO  ';
                DMPrincipal.ADOLog_Operacoes.Post;
        //////// criando o Log de Operações
        end
    else
      if ADOTabela.State in [dsEdit] then      //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= ' Registro Alterado com Sucesso. ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);


        //////// criando o Log de Operações
            strValorChave:= ADOTabela.FieldByName('ID').AsString;
            // Log Operacoes
            DMPrincipal.ADOLog_Operacoes.CLOSE;
            DMPrincipal.ADOLog_Operacoes.Open;
            DMPrincipal.ADOLog_Operacoes.Insert;
            DMPrincipal.ADOLog_Operacoes.FieldByName('USUARIO').AsString:= F_Principal.ADOQLogin.FieldByName('ID').AsString;
            DMPrincipal.ADOLog_Operacoes.FieldByName('DATA').AsDateTime:= Now;
            DMPrincipal.ADOLog_OperacoesHORA.Value:= FormatDateTime('hh:mm:ss',Now);
            DMPrincipal.ADOLog_Operacoes.FieldByName('TABELA').AsString:= nomeTabela;
            DMPrincipal.ADOLog_Operacoes.FieldByName('OPERACAO').AsString:= 'ALTERACAO DO REGISTRO = '+ strValorChave;
            DMPrincipal.ADOLog_Operacoes.Post;
        //////// criando o Log de Operações
        end;


    ADOTabela.Post;    // Gravar  -- Desativei pq estava com erro no vendas            //*********** ADOQUERY = ADOTABELS **************************************

{Habilitação e Exibicao de Objetos}
    Executar:= habilitaBotoes;
    HabBotoesPesDesCheck;
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;
    pnlFichaCampos.Enabled:= False;


  if ADOTabela.FieldByName('STATUS').AsString = 'N' then       //*********** ADOQUERY = ADOTABELS **************************************
    lblStatus.Visible:= True
  else
    lblStatus.Visible:=  False;

  CheckInativo.Visible:= True;

// Bloqueando os Campos de Descricao e Valor
  edtDESCRICAO1.Enabled:= False;
  edtDESCRICAO1.Color:=  clInfoBk;
  edtVALORRS1.Enabled:= False;
  edtVALORRS1.Color:=  clInfoBk;
  edtDESCRICAO2.Enabled:= False;
  edtDESCRICAO2.Color:=  clInfoBk;
  edtVALORRS2.Enabled:= False;
  edtVALORRS2.Color:=  clInfoBk;
  edtDESCRICAO3.Enabled:= False;
  edtDESCRICAO3.Color:=  clInfoBk;
  edtDESCRICAO4.Enabled:= False;
  edtDESCRICAO4.Color:=  clInfoBk;
  edtDESCRICAO5.Enabled:= False;
  edtDESCRICAO5.Color:=  clInfoBk;
  edtDESCRICAO6.Enabled:= False;
  edtDESCRICAO6.Color:=  clInfoBk;
  edtDESCRICAO7.Enabled:= False;
  edtDESCRICAO7.Color:=  clInfoBk;
  edtCREDDEVOLDESC.Enabled:= False;
  edtCREDDEVOLDESC.Color:=  clInfoBk;

end;

procedure TF_ContaGeral.btnIncluirClick(Sender: TObject);
var
// Pegar Mes Ano e Mostrar no Edit
RecebeMesNumero: Integer;
MES, Ano: string;
begin
   ADOTabela.Active:= True;    //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Open;             //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Insert;           //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibição de Objetos
   HabCheckDesBotoes;
   pnlFichaCampos.Enabled:= true;

 // Marcar ou Desmarcar os Checks, com Valores padroes.
    CheckHabilita.Checked:= False;
    CheckInativo.Checked:= False;
    CheckInativo.Visible:= False;

// Inclusao do Registro
  ADOTabela.FieldByName('STATUS').AsAnsiString:= 'H';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_INC').AsDateTime:= Date;             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('INATIVO').AsAnsiString:= 'N';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_HAB').AsDateTime:= date;        //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('CEP').AsAnsiString:= '14115-000';
  ADOTabela.FieldByName('LOCALIDADE').AsAnsiString:= 'GUATAPARA';
  ADOTabela.FieldByName('UF').AsAnsiString:= 'SP';
  ADOTabela.FieldByName('CLASSIFICACAO').AsAnsiString:= 'B1 RESIDENCIAL - TRIFASICO';
  ADOTabela.FieldByName('LOCAL_CONTA').AsAnsiString:= 'CRT 143A S/N1 CH A';
  ADOTabela.FieldByName('PAGO').AsAnsiString:= 'N';
  ADOTabela.FieldByName('VINCULADA').AsAnsiString:= 'N';

//ARQUIVO INI
  ADOTabela.FieldByName('NOME_CLIET_CONTA').AsAnsiString:= NomeClienteConta;
  ADOTabela.FieldByName('CPF_CLIENTE').AsAnsiString:= CPF_Cliente;
  ADOTabela.FieldByName('ATENDIMENTOCPF').AsAnsiString:= AtendimentoCPFL;
  ADOTabela.FieldByName('PIN').AsAnsiString:= PINCPFL;
  ADOTabela.FieldByName('SEUCODIGO').AsAnsiString:= SeuCodigo;

// Dados que Poderao ser alterados
  ADOTabela.FieldByName('DISCRIMOPERACAO').AsAnsiString:= 'VENDA DE ENERGIA (KWh)';
  ADOTabela.FieldByName('DESCRICAO1').AsAnsiString:= 'CONSUMO USO SISTEMA (KWh) - TUSD';
  ADOTabela.FieldByName('DESCRICAO2').AsAnsiString:= 'CONSUMO BANDEIRA VERDE - TE';
  ADOTabela.FieldByName('DESCRICAO3').AsAnsiString:= 'ADICIONAL DE BANDEIRA AMARELA';
  ADOTabela.FieldByName('DESCRICAO4').AsAnsiString:= 'ADICIONAL DE BANDEIRA VERMELHA';
  ADOTabela.FieldByName('DESCRICAO5').AsAnsiString:= 'PIS/PASEP';
  ADOTabela.FieldByName('DESCRICAO6').AsAnsiString:= 'COFINS';
  ADOTabela.FieldByName('DESCRICAO7').AsAnsiString:= 'ICMS';
  ADOTabela.FieldByName('DESCRICAO8').AsAnsiString:= 'JUROS DE MORA ';
  ADOTabela.FieldByName('DESCRICAO9').AsAnsiString:= 'MULTA POR ATRASO PGTO ';


// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Inclusão de Novo Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha;   // Colocando a Tela Certa
  edtVencimento.SetFocus;

// Colocar '0,00' nos campos de Valor para nao dar erro
  edtPrecoMedio.Text:= '0,00';
  edtValorMedio.Text:= '0,00';
  edtVLTotalPG.Text:= '0,00';
  edtVALORRS1.Text:= '0,00';
  edtVALORRS2.Text:= '0,00';
  edtQuant1.Text:= '0';
  edtTarifPrec1.Text:= '0,00';
  edtQuant2.Text:= '0';
  edtTarifPrec2.Text:= '0,00';
  edtVALORRS3.Text:= '0,00';
  edtVALORRS4.Text:= '0,00';
  edtVALORRS5.Text:= '0,00';
  edtVALORRS6.Text:= '0,00';
  edtVALORRS7.Text:= '0,00';
  edtCREDITOSDEVOLVER.Text:= '0,00';
  edtPorcenta1.Text:= '0';
  edtPorcentag2.Text:= '0';
  edtVALORRS8.Text:= '0,00';
  edtVALORRS9.Text:= '0,00';

// Pegando o Mes e Ano da Conta
  RecebeMesNumero:= (MonthOf(Date)); // Pegando o Mes Atual

  if RecebeMesNumero = 1 then // Verificando se ´´e Janeiro para Jogar Para Dezembro
    begin
      RecebeMesNumero:= 12;  // Colocando o Mes 12
    end
  else
    if RecebeMesNumero <> 1 then
      begin
         RecebeMesNumero:= RecebeMesNumero - 1;    // Voltando um Mes Antes
      end;

  case RecebeMesNumero of  // Case para Colocar a Descricao do MEs
      1: MES:= 'JAN';
      2: MES:= 'FEV';
      3: MES:= 'MAR';
      4: MES:= 'ABR';
      5: MES:= 'MAI';
      6: MES:= 'JUN';
      7: MES:= 'JUL';
      8: MES:= 'AGO';
      9: MES:= 'SET';
      10: MES:= 'OUT';
      11: MES:= 'NOV';
      12: MES:= 'DEZ';
  end;
  Ano:= FormatDateTime('yyyy', date); // Pegar o Ano
  edtContaMes.Text:= MES + '/'+ Ano;    // Passando para o Edit

end;

procedure TF_ContaGeral.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navegação
    Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_ContaGeral.btnOkClick(Sender: TObject);
begin
// Pesquisar por codigo No Botao
     // Pesquisa por Codigo de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
          PesquisaPorCodigo;
          edtValorCampo.Clear;
          edtValorCampo.SetFocus;
       end;
 // Pesquisa por Nome de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 1 then
       begin
         PesquisaPorDescricao;
         edtValorCampo.Clear;
         edtValorCampo.SetFocus;
       end;
end;

procedure TF_ContaGeral.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navegação
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_ContaGeral.btnReverterClick(Sender: TObject);
begin
  // Verificando o que esta sendo Feito -- Adicionando  ou Editando Para Dar a mensagem
    if ADOTabela.State in [dsInsert] then               //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= '          Inserção  de  Dados  Cancelada.          ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONERROR);
        end
    else
      if ADOTabela.State in [dsEdit] then              //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= '          Alteração  de  Dados  Cancelada.          ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONERROR);
        end;

        btnAutoFiltrar.Enabled:= true;
        btnOrdenar.Enabled:= false;
        btnInicio.Enabled:= false;
        btnAnterior.Enabled:= false;
        btnProximo.Enabled:= false;
        btnFinal.Enabled:= false;
        btnIncluir.Enabled:= true;
        btnAlterar.Enabled:= false;
        btnExcluir.Enabled:= false;
        btnGravar.Enabled:= false;
        btnReverter.Enabled:= false;
        btnSair.Enabled:=true;

       ADOTabela.Cancel;                             //*********** ADOQUERY = ADOTABELS **************************************

{Habilitação e Exibicao de Objetos}
    HabBotoesPesDesCheck ;
    PageControlCadastro.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;

    pnlFichaCampos.Enabled:= False;

   // Limpando o Status Bar
     statBarPadrao.Panels[0].Text:= '';
     statBarPadrao.Panels[1].Text:= '';
     statBarPadrao.Panels[2].Text:= '';
     statBarPadrao.Panels[3].Text:= '';

    ADOTabela.Active:= false;    // Fechar o Component           //*********** ADOQUERY = ADOTABELS **************************************
    CheckInativo.Visible:= True;

// Bloqueando os Campos de Descricao e Valor
  edtDESCRICAO1.Enabled:= False;
  edtDESCRICAO1.Color:=  clInfoBk;
  edtVALORRS1.Enabled:= False;
  edtVALORRS1.Color:=  clInfoBk;
  edtDESCRICAO2.Enabled:= False;
  edtDESCRICAO2.Color:=  clInfoBk;
  edtVALORRS2.Enabled:= False;
  edtVALORRS2.Color:=  clInfoBk;
  edtDESCRICAO3.Enabled:= False;
  edtDESCRICAO3.Color:=  clInfoBk;
  edtDESCRICAO4.Enabled:= False;
  edtDESCRICAO4.Color:=  clInfoBk;
  edtDESCRICAO5.Enabled:= False;
  edtDESCRICAO5.Color:=  clInfoBk;
  edtDESCRICAO6.Enabled:= False;
  edtDESCRICAO6.Color:=  clInfoBk;
  edtDESCRICAO7.Enabled:= False;
  edtDESCRICAO7.Color:=  clInfoBk;
  edtCREDDEVOLDESC.Enabled:= False;
  edtCREDDEVOLDESC.Color:=  clInfoBk;
end;

procedure TF_ContaGeral.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;


procedure TF_ContaGeral.CalcularValorMedioPUsar;
var
Resultado, Val1, Val2, Val3, Val4, Val5, Val6, Val7,Val8, Val9, CredDevolver: Double;
Kwh: Integer;
begin
 // Passando os valores para as variaveis temporarias
   Val1:= StrToFloat(edtVALORRS1.Text);
   Val2:= StrToFloat(edtVALORRS2.Text);
   Val3:= StrToFloat(edtVALORRS3.Text);
   Val4:= StrToFloat(edtVALORRS4.Text);
   Val5:= StrToFloat(edtVALORRS5.Text);
   Val6:= StrToFloat(edtVALORRS6.Text);
   Val7:= StrToFloat(edtVALORRS7.Text);
   Val8:= StrToFloat(edtVALORRS8.Text);
   Val9:= StrToFloat(edtVALORRS9.Text);
   CredDevolver:= StrToFloat(edtCREDITOSDEVOLVER.Text);
   Kwh:= StrToInt(edtQTDEKWh.Text);
 // Somando as Variaveis
   Resultado:= (Val1+Val2+Val3+Val4+Val5+Val6+Val7+Val8+Val9)- CredDevolver;
   edtVLTotalPG.Text:= FormatFloat('##,###,##0.00',Resultado);
   Resultado:= Resultado/Kwh;
 // Resultado
  edtPrecoMediousar.Text:= FormatFloat('##,###,##0.00000000',Resultado);
end;

procedure TF_ContaGeral.CalculoTUSD;
var
Resultado, ValKw: Double;
KWh: Integer;
begin
  ValKw:= StrToFloat(edtTarifPrec1.Text);
  KWh:= StrToInt(edtQuant1.Text);
  Resultado:= ValKw *  KWh;
  edtVALORRS1.Text:= FormatFloat('##,###,##0.00',Resultado);
end;

procedure TF_ContaGeral.ConsumoBanVerTE;
var
Resultado, ValKw, KWh: Double;
begin
  ValKw:= StrToFloat(edtTarifPrec2.Text);
  KWh:= StrToInt(edtQuant2.Text);
  Resultado:= ValKw *  KWh;
  edtVALORRS2.Text:= FormatFloat('##,###,##0.00',Resultado);

end;

procedure TF_ContaGeral.Descrio1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY '+DescPrincipal);
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Descrição] ';
end;

procedure TF_ContaGeral.edtAparelAnteriorEnter(Sender: TObject);
begin
  edtAparelAnterior.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtAparelAnteriorExit(Sender: TObject);
begin
  edtAparelAnterior.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtAparelAtualEnter(Sender: TObject);
begin
edtAparelAtual.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtAparelAtualExit(Sender: TObject);
begin
edtAparelAtual.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtContaMesEnter(Sender: TObject);
begin
  edtContaMes.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtContaMesExit(Sender: TObject);
begin
   edtContaMes.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtCREDDEVOLDESCEnter(Sender: TObject);
begin
  edtCREDDEVOLDESC.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtCREDDEVOLDESCExit(Sender: TObject);
begin
  edtCREDDEVOLDESC.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtCREDITOSDEVOLVEREnter(Sender: TObject);
begin
  edtCREDITOSDEVOLVER.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtCREDITOSDEVOLVERExit(Sender: TObject);
begin
  if edtCREDITOSDEVOLVER.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtCREDITOSDEVOLVER.Text:= '0,00';
    end;
  edtCREDITOSDEVOLVER.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO1Enter(Sender: TObject);
begin
  edtDESCRICAO1.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO1Exit(Sender: TObject);
begin
  edtDESCRICAO1.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO2Enter(Sender: TObject);
begin
  edtDESCRICAO2.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO2Exit(Sender: TObject);
begin
  edtDESCRICAO2.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO3Enter(Sender: TObject);
begin
  edtDESCRICAO3.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO3Exit(Sender: TObject);
begin
  edtDESCRICAO3.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO4Enter(Sender: TObject);
begin
  edtDESCRICAO4.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO4Exit(Sender: TObject);
begin
  edtDESCRICAO4.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO5Enter(Sender: TObject);
begin
  edtDESCRICAO5.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO5Exit(Sender: TObject);
begin
  edtDESCRICAO5.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO6Enter(Sender: TObject);
begin
  edtDESCRICAO6.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO6Exit(Sender: TObject);
begin
  edtDESCRICAO6.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDESCRICAO7Enter(Sender: TObject);
begin
  edtDESCRICAO7.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDESCRICAO7Exit(Sender: TObject);
begin
  edtDESCRICAO7.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDiasEnter(Sender: TObject);
begin
  edtDias.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDiasExit(Sender: TObject);
begin
  edtDias.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDTLeitAnteriorEnter(Sender: TObject);
begin
  edtDTLeitAnterior.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDTLeitAnteriorExit(Sender: TObject);
begin
  edtDTLeitAnterior.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDTLeitAtualEnter(Sender: TObject);
begin
  edtDTLeitAtual.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDTLeitAtualExit(Sender: TObject);
begin
  edtDTLeitAtual.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtDTProxLeitEnter(Sender: TObject);
begin
  edtDTProxLeit.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtDTProxLeitExit(Sender: TObject);
begin
  edtDTProxLeit.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtMesJuroEnter(Sender: TObject);
begin
  edtMesJuro.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtMesJuroExit(Sender: TObject);
begin
ADOTabela.FieldByName('DESCRICAO8').AsAnsiString:= 'JUROS DE MORA ' + edtMesJuro.Text;
  edtMesJuro.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtMesMultaEnter(Sender: TObject);
begin
  edtMesMulta.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtMesMultaExit(Sender: TObject);
begin
  ADOTabela.FieldByName('DESCRICAO9').AsAnsiString:= 'MULTA POR ATRASO PGTO ' + edtMesMulta.Text;
  edtMesMulta.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtPorcenta1Enter(Sender: TObject);
begin
  edtPorcenta1.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtPorcenta1Exit(Sender: TObject);
begin
  edtPorcenta1.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtPorcentag2Enter(Sender: TObject);
begin
  edtPorcentag2.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtPorcentag2Exit(Sender: TObject);
begin
  edtPorcentag2.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtPrecoMedioEnter(Sender: TObject);
begin
  edtPrecoMedio.Color:=   clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtPrecoMedioExit(Sender: TObject);
begin
  edtPrecoMedio.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtQTDEKWhEnter(Sender: TObject);
begin
  edtQTDEKWh.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtQTDEKWhExit(Sender: TObject);
begin
  if (edtQTDEKWh.Text = '') or (edtQTDEKWh.Text = '0') then
    begin
       mensagem:= ' O Campo [ QTD KW/H ] Nao pode Ficar vazio ou com [0] ' + #13    // #13 Pular Linha   ' INFORMAÇÂO '
                                     +'Favor Colocar Valor Valido.';
       Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);
       edtQTDEKWh.SetFocus;
    end;

edtQTDEKWh.Color:=   clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtQuant1Enter(Sender: TObject);
begin
  edtQuant1.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtQuant1Exit(Sender: TObject);
begin
 if edtQuant1.Text <> '' then
  begin
    CalculoTUSD;
  end
 else
   begin
     edtQuant1.Text:= '0';
   end;

  edtQuant1.Color:=   clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtQuant2Enter(Sender: TObject);
begin
  edtQuant2.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtQuant2Exit(Sender: TObject);
begin
  if edtQuant2.Text <> '' then
    begin
      ConsumoBanVerTE;
    end
  else
    begin
      edtQuant2.Text:= '0';
    end;

  edtQuant2.Color:=   clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtTarifPrec1Enter(Sender: TObject);
begin
  edtTarifPrec1.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtTarifPrec1Exit(Sender: TObject);
begin
  if edtTarifPrec1.Text <> ''then
   begin
    CalculoTUSD;
   end
  else
    begin
      edtTarifPrec1.Text:= '0,00';
    end;
  edtTarifPrec1.Color:=   clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtTarifPrec2Enter(Sender: TObject);
begin
  edtTarifPrec2.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtTarifPrec2Exit(Sender: TObject);
begin
  if edtTarifPrec2.Text <> '' then
    begin
      ConsumoBanVerTE;
    end
  else
    begin
      edtTarifPrec2.Text:= '0,00';
    end;
  edtTarifPrec2.Color:=   clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtValorCampoKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       btnOk.Click;
end;

procedure TF_ContaGeral.edtValorMedioEnter(Sender: TObject);
begin
  edtValorMedio.Color:=    clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtValorMedioExit(Sender: TObject);
begin
  edtValorMedio.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS1Enter(Sender: TObject);
begin
  edtVALORRS1.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS1Exit(Sender: TObject);
begin
  edtVALORRS1.Color:=  clWhite;                  // Voltando a Cor Origina
end;

procedure TF_ContaGeral.edtVALORRS2Enter(Sender: TObject);
begin
  edtVALORRS2.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS2Exit(Sender: TObject);
begin
  edtVALORRS2.Color:=  clWhite;                  // Voltando a Cor Origina
end;

procedure TF_ContaGeral.edtVALORRS3Enter(Sender: TObject);
begin
  edtVALORRS3.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS3Exit(Sender: TObject);
begin
  if edtVALORRS3.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS3.Text:= '0,00';
    end;

edtVALORRS3.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS4Enter(Sender: TObject);
begin
  edtVALORRS4.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS4Exit(Sender: TObject);
begin
  if edtVALORRS4.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS4.Text:= '0,00';
    end;

  edtVALORRS4.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS5Enter(Sender: TObject);
begin
  edtVALORRS5.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS5Exit(Sender: TObject);
begin
  if edtVALORRS5.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS5.Text:= '0,00';
    end;
  edtVALORRS5.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS6Enter(Sender: TObject);
begin
  edtVALORRS6.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS6Exit(Sender: TObject);
begin
  if edtVALORRS6.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS6.Text:= '0,00';
    end;
  edtVALORRS6.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS7Enter(Sender: TObject);
begin
  edtVALORRS7.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS7Exit(Sender: TObject);
begin
  if edtVALORRS7.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS7.Text:= '0,00';
    end;
  edtVALORRS7.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS8Enter(Sender: TObject);
begin
  edtVALORRS8.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS8Exit(Sender: TObject);
begin
  if edtVALORRS8.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS8.Text:= '0,00';
    end;
    edtVALORRS8.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVALORRS9Enter(Sender: TObject);
begin
  edtVALORRS9.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVALORRS9Exit(Sender: TObject);
begin
  if edtVALORRS9.Text <> '' then
    begin
      CalcularValorMedioPUsar;
    end
  else
    begin
      edtVALORRS9.Text:= '0,00';
    end;
    edtVALORRS9.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.edtVencimentoEnter(Sender: TObject);
begin
edtVencimento.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVencimentoExit(Sender: TObject);
begin
edtVencimento.Color:=  clWhite;                  // Voltando a Cor Original
// Colocando o Mes/Ano da conta nos edit de juros e multa para o cliente nao precisar digitar
edtMesJuro.Text:= edtContaMes.Text;
edtMesMulta.Text:= edtContaMes.Text;
end;

procedure TF_ContaGeral.edtVLTotalPGEnter(Sender: TObject);
begin
  edtVLTotalPG.color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_ContaGeral.edtVLTotalPGExit(Sender: TObject);
begin
  edtVLTotalPG.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_ContaGeral.ExcluirUMRegClick(Sender: TObject);
var  // Excluir Um Registro - Inativar Registro
  confExcl: integer;
  strValorChave: string;
begin
  strValorChave:= ADOTabela.FieldByName('ID').AsString;
   beep;
   confExcl:= Application.MessageBox(' Confirma a Exclusão? ',PChar(MensageAppMesBox) , MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

   if confExcl = IDYES then
      begin
      //////// criando o Log de Operações
            // Log Operacoes
            DMPrincipal.ADOLog_Operacoes.CLOSE;
            DMPrincipal.ADOLog_Operacoes.Open;
            DMPrincipal.ADOLog_Operacoes.Insert;
            DMPrincipal.ADOLog_Operacoes.FieldByName('USUARIO').AsString:= F_Principal.ADOQLogin.FieldByName('ID').AsString;
            DMPrincipal.ADOLog_Operacoes.FieldByName('DATA').AsDateTime:= Now;
            DMPrincipal.ADOLog_OperacoesHORA.Value:= FormatDateTime('hh:mm:ss',Now);
            DMPrincipal.ADOLog_Operacoes.FieldByName('TABELA').AsString:= nomeTabela;
            DMPrincipal.ADOLog_Operacoes.FieldByName('OPERACAO').AsString:= 'EXCLUSAO DO REGISTRO = '+ strValorChave;
            DMPrincipal.ADOLog_Operacoes.Post;
      //////// criando o Log de Operações

      // Inativando Registro
          ADOTabela.Open;
          ADOTabela.Edit;                                      //*********** ADOQUERY = ADOTABELS **************************************
          ADOTabela.FieldByName('INATIVO').AsAnsiString:= 'S';             //*********** ADOQUERY = ADOTABELS **************************************
          ADOTabela.Post;
          mensagem:= ' O Registro foi Excluido com Sucesso!! ';
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox),mb_ok+MB_ICONINFORMATION);
      end;

   if confExcl =  IDNO then
      begin
          mensagem:= ' A Exclusão desse Registro foi Cancelada!! ';
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox),mb_ok+MB_ICONINFORMATION);
      end;

  if PageControlCadastro.ActivePageIndex = 0 then
      begin
          edtValorCampo.clear;
          edtValorCampo.SetFocus;
      end;
      Executar:= habilitaBotoes;
      Executar:= exibePanels;

end;

procedure TF_ContaGeral.FormActivate(Sender: TObject);
begin
  ADOTabela:= ADOQContaGeral;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_CONTA_GERAL'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Cadastro de Conta Geral';  // Nome que ira aparecer
  GridLista.DataSource:= DSContaGeral;    //Colocando o Data Source no Grid
  //DescPrincipal:= 'DESC_USUARIO';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('CONTAGERAL_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTAGERAL_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'Cadastro de Conta Geral';

// Evento do Form Active
    Executar:= exibeBotoes;
    PageControlCadastro.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
//*********************************************
// Habilitar e Desabilitar os Botoes
    btnAutoFiltrar.Enabled:=  True;
    btnOrdenar.Enabled:=          False;
    btnInicio.Enabled:=           False;
    btnAnterior.Enabled:=         False;
    btnProximo.Enabled:=          False;
    btnFinal.Enabled:=            False;
    btnIncluir.Enabled:=      True;
    btnAlterar.Enabled:=          False;
    btnExcluir.Enabled:=          False;
    btnGravar.Enabled:=           False;
    btnReverter.Enabled:=         False;
    btnSair.Enabled:=         True;
    btnImpressao.Enabled:=        False;
//**************************************************
// Controlando o Panel e Check
    HabBotoesPesDesCheck;
    pnlFichaCampos.Enabled:= False;
    edtValorCampo.SetFocus;

{ Fazendo Verificacao se tem permissao de Alterar ou Incluir, caso nao, os checks nem irao aparecer}

  if (copy(ModoEdicao,1,1) = 'N') AND (copy(ModoEdicao,2,1) = 'N') then
    begin
        CheckHabilita.Visible:= False;
    end;

  // Definindo a TAG dos Panel para evitar erro
  Panel1.Tag:= 0;
  Panel2.Tag:= 0;
  Panel3.Tag:= 0;
  Panel4.Tag:= 0;
  Panel5.Tag:= 0;
  Panel6.Tag:= 0;
  Panel7.Tag:= 0;
  Panel8.Tag:= 0;
  Panel10.Tag:= 0;
  Panel11.Tag:= 0;
end;

procedure TF_ContaGeral.GridListaDblClick(Sender: TObject);
begin
       // ADOTabela.Locate('ID',ADOTabelaID.Value,[]);
        PageControlCadastro.ActivePage:= TabSheetFicha;
end;

procedure TF_ContaGeral.GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_ContaGeral.GridListaKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_ContaGeral.GridZebrado(RecNo: Integer; Grid: TDBGrid; Rect: TRect;
  Column: TColumn; State: TGridDrawState);
begin
  if gdSelected in State then
    begin
       Grid.Canvas.Font.Color := clRed; // Texto da linha selecionada
       Grid.Canvas.Font.Style:= [fsBold]; // Negritando linha Selecionada
      // Grid.Canvas.Font.Size:= 10;  // Mudando o tamanho da Fonte
       Grid.Canvas.Brush.Color:= clMoneyGreen; //linha selecionada
    end
  else
    begin
      If odd(RecNo) then
         begin
           Grid.Canvas.Font.Color := clNavy;    // Texto da Linha Impar
           Grid.Canvas.Brush.Color:= clInfoBk; // Pintando a Linha Impar
         end
      else
         begin
           Grid.Canvas.Font.Color := clMaroon;  // TExto da Linha Par
           Grid.Canvas.Brush.Color:= clSkyBlue;   // Pintando a Linha Par
         end;
    end;

Grid.Canvas.FillRect(Rect);
Grid.Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);
end;

procedure TF_ContaGeral.HabBotoesPesDesCheck;
begin
// Habilitar Botoes de Pesquisa e Desabilitar os Check    // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= true;
    edtValorCampo.Enabled:= True;
    btnOk.Visible:= True;
    RGPesquisaGenerica.Visible:= true;

    CheckHabilita.Enabled:= False;
    CheckInativo.Enabled:= False;
end;

procedure TF_ContaGeral.HabCheckDesBotoes;
begin
// Habilitar os Checks e Desabilitar os Campos de Desquisa   // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= False;
    edtValorCampo.Enabled:= False;
    btnOk.Visible:= False;
    RGPesquisaGenerica.Visible:= False;

    CheckHabilita.Enabled:= True;
    CheckInativo.Enabled:= False;
end;

procedure TF_ContaGeral.Inativo1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY INATIVO');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [INATIVO] ';
end;

procedure TF_ContaGeral.OrdeCodigoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [ID] ';
end;

procedure TF_ContaGeral.OrdeDTAlteracaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_ALT');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Alteração] ';
end;

procedure TF_ContaGeral.OrdeDTHabilitacaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_HAB');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Habilitação] ';
end;

procedure TF_ContaGeral.OrdeDTInclusaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_INC');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Inclusão] ';
end;

procedure TF_ContaGeral.Panel10DblClick(Sender: TObject);
begin
  if Panel10.Tag = 0 then
    begin
      edtDESCRICAO8.Enabled:= True;
      edtDESCRICAO8.Color:= clWhite;
      Panel10.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO8.Enabled:= False;
      edtDESCRICAO8.Color:= clInfoBk;
      Panel10.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel11DblClick(Sender: TObject);
begin
  if Panel11.Tag = 0 then
    begin
      edtDESCRICAO9.Enabled:= True;
      edtDESCRICAO9.Color:= clWhite;
      Panel11.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO9.Enabled:= False;
      edtDESCRICAO9.Color:= clInfoBk;
      Panel11.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel1DblClick(Sender: TObject);
begin
 if Panel1.Tag = 0 then
    begin
      edtDESCRICAO1.Enabled:= True;
      edtDESCRICAO1.Color:= clWhite;
      edtVALORRS1.Enabled:= True;
      edtVALORRS1.Color:=  clWhite;
      Panel1.Tag:= 1;
    end
 else
    begin
      edtDESCRICAO1.Enabled:= False;
      edtDESCRICAO1.Color:= clInfoBk;
      edtVALORRS1.Enabled:= False;
      edtVALORRS1.Color:=  clInfoBk;
      Panel1.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel2DblClick(Sender: TObject);
begin
  if Panel2.Tag = 0 then
    begin
      edtDESCRICAO2.Enabled:= True;
      edtDESCRICAO2.Color:= clWhite;
      edtVALORRS2.Enabled:= True;
      edtVALORRS2.Color:=  clWhite;
      Panel2.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO2.Enabled:= False;
      edtDESCRICAO2.Color:= clInfoBk;
      edtVALORRS2.Enabled:= False;
      edtVALORRS2.Color:=  clInfoBk;
      Panel2.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel3DblClick(Sender: TObject);
begin
  if Panel3.Tag = 0 then
    begin
      edtDESCRICAO3.Enabled:= True;
      edtDESCRICAO3.Color:= clWhite;
      Panel3.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO3.Enabled:= False;
      edtDESCRICAO3.Color:= clInfoBk;
      Panel3.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel4DblClick(Sender: TObject);
begin
  if Panel4.Tag = 0 then
    begin
      edtDESCRICAO4.Enabled:= True;
      edtDESCRICAO4.Color:= clWhite;
      Panel4.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO4.Enabled:= False;
      edtDESCRICAO4.Color:= clInfoBk;
      Panel4.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel5DblClick(Sender: TObject);
begin
  if Panel5.Tag = 0 then
    begin
      edtDESCRICAO5.Enabled:= True;
      edtDESCRICAO5.Color:= clWhite;
      Panel5.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO5.Enabled:= False;
      edtDESCRICAO5.Color:= clInfoBk;
      Panel5.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel6DblClick(Sender: TObject);
begin
  if Panel6.Tag = 0 then
    begin
      edtDESCRICAO6.Enabled:= True;
      edtDESCRICAO6.Color:= clWhite;
      Panel6.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO6.Enabled:= False;
      edtDESCRICAO6.Color:= clInfoBk;
      Panel6.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel7DblClick(Sender: TObject);
begin
  if Panel7.Tag = 0 then
    begin
      edtDESCRICAO7.Enabled:= True;
      edtDESCRICAO7.Color:= clWhite;
      Panel7.Tag:= 1;
    end
  else
    begin
      edtDESCRICAO7.Enabled:= False;
      edtDESCRICAO7.Color:= clInfoBk;
      Panel7.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.Panel8DblClick(Sender: TObject);
begin
  if Panel8.Tag = 0 then
    begin
      edtCREDDEVOLDESC.Enabled:= True;
      edtCREDDEVOLDESC.Color:= clWhite;
      Panel8.Tag:= 1;
    end
  else
    begin
      edtCREDDEVOLDESC.Enabled:= False;
      edtCREDDEVOLDESC.Color:= clInfoBk;
      Panel8.Tag:= 0;
    end;
end;

procedure TF_ContaGeral.PesCodigoClick(Sender: TObject);
begin
// Pesquisando por Codigo, colocando a Tela na pagina de Pesquisa e colocando o foco no campo de pesquisa
    WindowState:= wsNormal;
    PageControlCadastro.ActivePageIndex:= 0;   // Colocando a Tela Certa
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;
end;

procedure TF_ContaGeral.PesqPPAlteracaoClick(Sender: TObject);
begin
// Pesquisa Por Data de Alteração de Registros
  tarefa:= 'Pesquisa de Registros Alterados no Periodo';
  F_PesqData.ShowModal;
         //Chamando a Tela de Pesquisa

    if tarefaClick = 1 then     // Para tirar o erro ao sair da tela de Pesquisa por DAta
    begin
      statBarPadrao.Panels[2].Text:= ' Registros Alterados Entre: '+ valdata1 +
                            ' e ' + valdata2;
      strSql:= 'SELECT * FROM ' + nomeTabela;
      strSql:= strSql + ' where DATA_ALT >= ' + #39 + VAL1 + #39;
      strSql:= strSql + ' AND DATA_ALT <= ' + #39 + VAL2 + #39;

      Executar:= sentencaSQL;
      Executar:= exibePanels;
      Executar:= navegacao;
      Executar:= habilitaBotoes;
    end;
end;

procedure TF_ContaGeral.PesqPPInclusaoClick(Sender: TObject);
begin
// Pesquisa por data de inclusao
   tarefa:= 'Pesquisa de Registros incuidos no Periodo';
    F_PesqData.ShowModal;

      statBarPadrao.Panels[2].Text:= ' Registros Incluidos Entre: '+ valdata1 + ' e ' + valdata2;
      strSql:= 'SELECT * FROM ' + nomeTabela;
      strSql:= strSql + ' where DATA_INC >= ' + #39 + VAL1 + #39;
      strSql:= strSql + ' AND DATA_INC <= ' + #39 + VAL2 + #39;

      Executar:= sentencaSQL;
      Executar:= exibePanels;
      Executar:= navegacao;
      Executar:= habilitaBotoes;

end;

procedure TF_ContaGeral.PesqRegBloqueadosClick(Sender: TObject);
begin
//Pesquisa por Registros Bloqueados
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE STATUS = ' + #39 + 'S' + #39;

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
end;

procedure TF_ContaGeral.PesqToRegClick(Sender: TObject);
begin
// Pesquisa todos os Registros
  strSql:= 'SELECT * FROM ' + nomeTabela;
  statBarPadrao.Panels[2].Text:= ' Todos os Registros Selecionados ';      // Mensagem que vai aparecer no statusBar
  ADOTabela.Open;                                                      //*********** ADOQUERY = ADOTABELS **************************************
  Executar:= sentencaSQL;    // Executando o metodo Sentenca SQL
  Executar:= navegacao; // Executando o metodo Navegação
  Executar:=exibePanels; // Executando o metodo Exibepanels
  Executar:=habilitaBotoes;    // Executando o metodo Habilita Botoes

end;

procedure TF_ContaGeral.PesquisaPorCodigo;
var                                     // Pesquisa padrao por Codigo
  converte: string;       // Pesquisar por codigo
  x: integer;             // Pesquisar por codigo
begin
    strSql:= 'SELECT * FROM ' + nomeTabela;
    strSql:= strSql + ' WHERE ID = '+ #39 + edtValorCampo.Text + #39;

    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
          converte:= '';
          for x := 1 to length(edtValorCampo.Text) do
              begin
                  if (edtValorCampo.Text[x] in ['0'..'9']) then
                      begin
                          converte:= converte+copy(edtValorCampo.Text,x,1);
                      end;
              end;
          edtValorCampo.Text:= converte;
          edtValorCampo.SetFocus;
       end;

    if edtValorCampo.Text <> '' then
        begin
            statBarPadrao.Panels[2].Text:=' Pesquisa por Código do Registro, Código =  '+edtValorCampo.Text;
            Executar:= sentencaSQL;
            Executar:= exibePanels;
            Executar:= navegacao;
            Executar:= habilitaBotoes;

             if (ADOTabela.RecordCount = 0) then    /// comandos para colocar o Foco no Edit novamente
              begin
                   edtValorCampo.Text:= '';
                    btnInicio.Enabled:= false;
                    btnAnterior.Enabled:= false;
                    btnProximo.Enabled:= false;
                    btnFinal.Enabled:= false;
              end;
        end;

end;

procedure TF_ContaGeral.PesquisaPorDescricao;
begin
  edtValorCampo.SetFocus;
   statBarPadrao.Panels[2].Text:= ' Nome Contém: '+ edtValorCampo.Text;
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE '+ DescPrincipal + ' LIKE ' +#39+'%'+ edtValorCampo.Text+'%'+#39;

   if edtValorCampo.Text <> '' then
      begin
          statBarPadrao.Panels[2].Text:=' Pesquisa por DESCRIÇÂO do Registro';
          Executar:= sentencaSQL;
          Executar:= exibePanels;
          Executar:= navegacao;
          Executar:= habilitaBotoes;

           if (ADOTabela.RecordCount = 0) then    /// comandos para colocar o Focu no Edit novamente
            begin
                 edtValorCampo.Text:= '';
                  btnInicio.Enabled:= false;
                  btnAnterior.Enabled:= false;
                  btnProximo.Enabled:= false;
                  btnFinal.Enabled:= false;
            end;
      end;
end;

procedure TF_ContaGeral.RGPesquisaGenericaClick(Sender: TObject);
begin
  edtValorCampo.SetFocus;
end;

procedure TF_ContaGeral.SetExecutar(const Value: TExecutar);
begin
  FExecutar := Value;   {$REGION 'TEXECUTAR'} // Inicio   // Executar === Criacao Inicio

  case value of
   navegacao:  {$REGION 'NAVEGAÇÃO'} // Inicio                     // ####### Metodo EXECUTAR NAVEGAÇÃO##########################
// { Habilita Botoes de Navegação} // ####### Metodo EXECUTAR ##########################
// Para Habilitar ou Desabilitar os Botoes de Navegacao
            begin
               if ADOTabela.Eof then             // Ultimo Registro        //*********** ADOQUERY = ADOTABELS **************************************
                  begin
                      btnProximo.Enabled:= False;
                      btnFinal.Enabled:= False;
                  end
                else
                  begin
                      btnProximo.Enabled:= True;
                      btnFinal.Enabled:= True;
                  end;

               if ADOTabela.Bof then            // Primeiro Registro      //*********** ADOQUERY = ADOTABELS **************************************
                  begin
                      btnInicio.Enabled:= False;
                      btnAnterior.Enabled:= False;
                  end
               else
                    begin
                        btnInicio.Enabled:= True;
                        btnAnterior.Enabled:= True;
                    end;
            end; {$ENDREGION} // Fim

   sentencaSQL:  {$REGION 'SENTENCA SQL'} // Inicio                                  // ####### Metodo EXECUTAR SENTENCASQL ##########################
//  {Executa a Sentença SQL}                             // ####### Metodo EXECUTAR ##########################
// Para Armazenar as Sentenças SQL, todos os Codigos
            begin
               with ADOTabela do               //*********** ADOQUERY = ADOTABELS **************************************
                  begin
                      Close;
                      SQL.Clear;
                      SQL.Add(strSql);
                      Open;
                      First;

                     if (ADOTabela.RecordCount = 0)  then      //*********** ADOQUERY = ADOTABELS **************************************
                      begin
                          mensagem:= ' Não foi encontrado nenhum Registro que ' + #13    // #13 Pular Linha   ' INFORMAÇÂO '
                                     +'Satisfaça a sua Pesquisa.';
                          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
                      end;
                  end;
            end; {$ENDREGION} // Fim

   exibePanels: {$REGION 'EXIBIR PANELS'} // Inicio                             // ####### Metodo EXECUTAR EXIBEPANELS ##########################
//  {Exibe os Textos nos Paineis de Status}         // ####### Metodo EXECUTAR ##########################
// Exibir as mensagens dos paineis
            begin
               statBarPadrao.Panels[0].Text:= ' INC: ' + ADOTabela.FieldByName('DATA_INC').AsAnsiString;          //*********** ADOQUERY = ADOTABELS **************************************
               statBarPadrao.Panels[1].Text:= ' ALT: ' + ADOTabela.FieldByName('DATA_ALT').AsAnsiString;         //*********** ADOQUERY = ADOTABELS **************************************
               statBarPadrao.Panels[3].Text:= ' ID: ' + ADOTabela.FieldByName('ID').AsAnsiString;              //*********** ADOQUERY = ADOTABELS **************************************

                if (ADOTabela.RecordCount = 0) then             //*********** ADOQUERY = ADOTABELS **************************************
                    begin
                       statBarPadrao.Panels[0].Text:= '';
                       statBarPadrao.Panels[1].Text:= '';
                       statBarPadrao.Panels[2].Text:= '';
                       statBarPadrao.Panels[3].Text:= '';
                    end;

                if ADOTabela.FieldByName ('STATUS').AsAnsiString = 'D' then            //*********** ADOQUERY = ADOTABELS **************************************
                     lblStatus.Visible:= True
                else
                     lblStatus.Visible:= False;
            end;  {$ENDREGION} // Fim

   desabilitaBotoes:   {$REGION 'DESABILITA BOTOES'} // Inicio                                   // ####### Metodo EXECUTAR DESABILITA BOTOES ##########################
// {Desabilita botoes ao Incluir ou alterar um registro}     // ####### Metodo EXECUTAR ##########################
// Desabilitar os Botoes
            begin
                    btnAutoFiltrar.Enabled:= false;
                    btnOrdenar.Enabled:= false;
                    btnInicio.Enabled:= false;
                    btnAnterior.Enabled:= false;
                    btnProximo.Enabled:= false;
                    btnFinal.Enabled:= false;
                    btnIncluir.Enabled:= false;
                    btnAlterar.Enabled:= false;
                    btnExcluir.Enabled:= false;
                    btnGravar.Enabled:= true;
                    btnReverter.Enabled:= true;
                    btnSair.Enabled:=false;
                    btnImpressao.Enabled:= False;
            end;  {$ENDREGION} // Fim

   habilitaBotoes: {$REGION 'HABILITA BOTOES'} // Inicio                                        // ####### Metodo EXECUTAR HABILITA BOTOES ##########################
// {Habilita botoes ao Incluir ou alterar um registro}        // ####### Metodo EXECUTAR ##########################
// Habilitar os Botoes
            begin
                     btnAutoFiltrar.Enabled:=  True;
                     btnInicio.Enabled:=       True;
                     btnAnterior.Enabled:=     True;
                     btnProximo.Enabled:=      True;
                     btnFinal.Enabled:=        True;
                     btnIncluir.Enabled:=      True;

                 if ADOTabela.RecordCount > 0 then              //*********** ADOQUERY = ADOTABELS **************************************
                    begin
                        btnOrdenar.Enabled:= True;
                        btnImpressao.Enabled:= True;
                    end
                 else
                        btnOrdenar.Enabled:= False;

                 if ADOTabela.RecordCount = 0 then            //*********** ADOQUERY = ADOTABELS **************************************
                        begin
                            btnAlterar.Enabled:=      False;
                            btnExcluir.Enabled:=      False;
                        end
                 else
                        begin
                            btnAlterar.Enabled:=      True;
                            btnExcluir.Enabled:=      True;
                        end;
                 btnReverter.Enabled:=   False;
                 btnGravar.Enabled:=     False;
                 btnSair.Enabled:=       True;
            end; {$ENDREGION} // Fim

   exibeBotoes: {$REGION 'EXIBIR BOTOES'} // Inicio                                   // ####### Metodo EXECUTAR EXIBE BOTOES +++ PERMISSOES +++ ##########################
// {Metodo Exibe Botoes de Permissao de Perfil}               // ####### Metodo EXECUTAR ##########################
// Exibir Botoes conforme Perfil do Usuario
       begin
         if modoEdicao = 'NNNNNNN' then     // 1
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                ////btnMarcar.Visible:=     False;
                ////CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNNS' then      //2
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=        True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNSN' then       //3
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNNNNSS' then        //4
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNSNN' then        //5
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSNS' then     //6
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNNNSSN' then       //7
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSSS' then        //8
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNNN' then     //9
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=            True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNNS' then     //10
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=            True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNSNN' then     //11
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=            True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=          True;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNSNNSN' then      //12
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=            True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=         True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNSS' then     //13
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=            True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=          True;
                CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=         True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNSNS' then    //14
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=             True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=           True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=          True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=          True;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNSNSSN' then       //15
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NNSNSSS' then       //16
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNNNN' then       //17
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNNS' then      //18
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSN' then      //19
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=       True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNSNN' then           //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:=      True;
            end;

         if modoEdicao = 'NSNNSNS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNNNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNNS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSN' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSS' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNSNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSNS' then         //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSN' then           //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSS' then             //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNSN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNSS' then           //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSN' then             //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNN' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                ////CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNS' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSN' then             //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSSNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSNS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSN' then         //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNNNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSN' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSS' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNSNN' then           //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSNNN' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNNS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSS' then          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSSNN' then         //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSNS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSN' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SSNSNNN' then      ///          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SSNSNNS' then                 //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSN' then       //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSS' then         //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSSNN' then           //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSNS' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSN' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNNNNN' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNNS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNSN' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNNSS' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNN' then              //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNS' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSN' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSS' then              //80
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSNNN' then              //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNNS' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNSN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

           if modoEdicao = 'NSNSNSS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSSNN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSNS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSSN' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSNSSSS' then           //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NNSSNNN' then         //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNSSNNS' then          //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NNSSNSN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSNSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSSNN' then             //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSNS' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSSN' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNSSSSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNNSNNN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNNSNNS' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSN' then         //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSS' then          //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSSNN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSNS' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSSN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

        if modoEdicao = 'NNNSSSS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnExcluir.Visible:=    False;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSSSNNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSNNS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSS' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSSNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NSSSSNS' then         //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;                 ;
              end;

          if modoEdicao = 'NSSSSSN' then            //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSSSSSS' then           //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNNNN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNNS' then            //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNNSN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNSS' then         //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNSNN' then        //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNSNS' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSNSSN' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSNSSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSSNNN' then           //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSSNNS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSNSN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

            if modoEdicao = 'SSSSNSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNS' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=  False;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSN' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnExcluir.Visible:=          True;
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                CheckInativo.Visible:=        True;
                CheckHabilita.Visible:=       True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;
       end;{$ENDREGION}
  {$ENDREGION} // Fim
  end;
end;

procedure TF_ContaGeral.Status1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY STATUS');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [STATUS] ';
end;

end.
