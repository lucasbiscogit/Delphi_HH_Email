unit U_Perfil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask;

type
// Metodo Para Execu��es
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

  TF_Perfil = class(TForm)
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
    ADOQPerfil: TADOQuery;
    DSPerfil: TDataSource;
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
    pnlDesc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TDBEdit;
    edtDescricao: TDBEdit;
    DBCheckBox161: TDBCheckBox;
    PCPerfil: TPageControl;
    TabCadastro: TTabSheet;
    pnlCadastros: TPanel;
    Label17: TLabel;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    CheckMenuCliFor: TDBCheckBox;
    TabSeguranca: TTabSheet;
    pnlSeguranca: TPanel;
    lblUsuarios: TLabel;
    lblPerfil: TLabel;
    lblLogSistema: TLabel;
    CheckMenuUser: TDBCheckBox;
    CheckIncluir: TDBCheckBox;
    CheckEditar: TDBCheckBox;
    CheckExcluir: TDBCheckBox;
    CheckMarcar: TDBCheckBox;
    CheckImprimir: TDBCheckBox;
    CheckInativos: TDBCheckBox;
    CheckHabilitar: TDBCheckBox;
    CheckMenuPerfil: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    CheckMenuLog: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    TabSistema: TTabSheet;
    pnlSistema: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label23: TLabel;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DescriaoPerfil1: TMenuItem;
    Label3: TLabel;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    ADOQPerfilID: TAutoIncField;
    ADOQPerfilSTATUS: TStringField;
    ADOQPerfilINATIVO: TStringField;
    ADOQPerfilDATA_INC: TDateTimeField;
    ADOQPerfilDATA_ALT: TDateTimeField;
    ADOQPerfilDATA_HAB: TDateTimeField;
    ADOQPerfilDESC_PERFIL: TStringField;
    ADOQPerfilPERFIL_MENU: TStringField;
    ADOQPerfilPERFIL_INC: TStringField;
    ADOQPerfilPERFIL_ALT: TStringField;
    ADOQPerfilPERFIL_EXC: TStringField;
    ADOQPerfilPERFIL_MAR: TStringField;
    ADOQPerfilPERFIL_IMP: TStringField;
    ADOQPerfilPERFIL_INA: TStringField;
    ADOQPerfilPERFIL_HAB: TStringField;
    ADOQPerfilUSUARIO_MENU: TStringField;
    ADOQPerfilUSUARIO_INC: TStringField;
    ADOQPerfilUSUARIO_ALT: TStringField;
    ADOQPerfilUSUARIO_EXC: TStringField;
    ADOQPerfilUSUARIO_MAR: TStringField;
    ADOQPerfilUSUARIO_IMP: TStringField;
    ADOQPerfilUSUARIO_INA: TStringField;
    ADOQPerfilUSUARIO_HAB: TStringField;
    ADOQPerfilOCUTLTAR_C_OCULTO: TStringField;
    ADOQPerfilLOGOFF_MENU: TStringField;
    ADOQPerfilAJUDA_MENU: TStringField;
    ADOQPerfilSOBRE_MENU: TStringField;
    ADOQPerfilERRO_SISTEMA: TStringField;
    ADOQPerfilLOG_INICIAR: TStringField;
    ADOQPerfilLOG_ATIVIDADES: TStringField;
    ADOQPerfilLOG_INC: TStringField;
    ADOQPerfilLOG_ALT: TStringField;
    ADOQPerfilLOG_EXC: TStringField;
    ADOQPerfilLOG_MAR: TStringField;
    ADOQPerfilLOG_IMP: TStringField;
    ADOQPerfilLOG_INA: TStringField;
    ADOQPerfilLOG_HAB: TStringField;
    ADOQPerfilRELATORIOS_MENU: TStringField;
    ADOQPerfilRELATORIOS_PERFIL_BASICO: TStringField;
    ADOQPerfilRELATORIOS_PERFIL_COMP: TStringField;
    ADOQPerfilCADCHACA_MENU: TStringField;
    ADOQPerfilCADCHACA_INC: TStringField;
    ADOQPerfilCADCHACA_ALT: TStringField;
    ADOQPerfilCADCHACA_EXC: TStringField;
    ADOQPerfilCADCHACA_MAR: TStringField;
    ADOQPerfilCADCHACA_IMP: TStringField;
    ADOQPerfilCADCHACA_INA: TStringField;
    ADOQPerfilCADCHACA_HAB: TStringField;
    ADOQPerfilCONTAGERAL_MENU: TStringField;
    ADOQPerfilCONTAGERAL_INC: TStringField;
    ADOQPerfilCONTAGERAL_ALT: TStringField;
    ADOQPerfilCONTAGERAL_EXC: TStringField;
    ADOQPerfilCONTAGERAL_MAR: TStringField;
    ADOQPerfilCONTAGERAL_IMP: TStringField;
    ADOQPerfilCONTAGERAL_INA: TStringField;
    ADOQPerfilCONTAGERAL_HAB: TStringField;
    ADOQPerfilCONFIGURACAO_MENU: TStringField;
    ADOQPerfilCONFIGURACAO_INC: TStringField;
    ADOQPerfilCONFIGURACAO_ALT: TStringField;
    ADOQPerfilCONFIGURACAO_EXC: TStringField;
    ADOQPerfilCONFIGURACAO_MAR: TStringField;
    ADOQPerfilCONFIGURACAO_IMP: TStringField;
    ADOQPerfilCONFIGURACAO_INA: TStringField;
    ADOQPerfilCONFIGURACAO_HAB: TStringField;
    Label10: TLabel;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    ADOQPerfilLEITURACHACARA_MENU: TStringField;
    ADOQPerfilLEITURACHACARA_INC: TStringField;
    ADOQPerfilLEITURACHACARA_ALT: TStringField;
    ADOQPerfilLEITURACHACARA_EXC: TStringField;
    ADOQPerfilLEITURACHACARA_MAR: TStringField;
    ADOQPerfilLEITURACHACARA_IMP: TStringField;
    ADOQPerfilLEITURACHACARA_INA: TStringField;
    ADOQPerfilLEITURACHACARA_HAB: TStringField;
    Label13: TLabel;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox45: TDBCheckBox;
    ADOQPerfilGERARCONTAS_INC: TStringField;
    ADOQPerfilGERARCONTAS_ALT: TStringField;
    ADOQPerfilGERARCONTAS_EXC: TStringField;
    ADOQPerfilGERARCONTAS_MAR: TStringField;
    ADOQPerfilGERARCONTAS_IMP: TStringField;
    ADOQPerfilGERARCONTAS_INA: TStringField;
    ADOQPerfilGERARCONTAS_HAB: TStringField;
    ADOQPerfilGERARCONTAS_MENU: TStringField;
    Label14: TLabel;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    DBCheckBox48: TDBCheckBox;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox53: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    ADOQPerfilRELATORIOS_CONFIGERAL: TStringField;
    tabFinanceiro: TTabSheet;
    Panel1: TPanel;
    Label15: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;
    DBCheckBox69: TDBCheckBox;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    DBCheckBox78: TDBCheckBox;
    DBCheckBox79: TDBCheckBox;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox82: TDBCheckBox;
    DBCheckBox83: TDBCheckBox;
    DBCheckBox84: TDBCheckBox;
    DBCheckBox85: TDBCheckBox;
    DBCheckBox86: TDBCheckBox;
    ADOQPerfilCONTPAGAR_MENU: TStringField;
    ADOQPerfilCONTPAGAR_INC: TStringField;
    ADOQPerfilCONTPAGAR_ALT: TStringField;
    ADOQPerfilCONTPAGAR_EXC: TStringField;
    ADOQPerfilCONTPAGAR_MAR: TStringField;
    ADOQPerfilCONTPAGAR_IMP: TStringField;
    ADOQPerfilCONTPAGAR_INA: TStringField;
    ADOQPerfilCONTPAGAR_HAB: TStringField;
    ADOQPerfilCONTRECEBER_MENU: TStringField;
    ADOQPerfilCONTRECEBER_INC: TStringField;
    ADOQPerfilCONTRECEBER_ALT: TStringField;
    ADOQPerfilCONTRECEBER_EXC: TStringField;
    ADOQPerfilCONTRECEBER_MAR: TStringField;
    ADOQPerfilCONTRECEBER_IMP: TStringField;
    ADOQPerfilCONTRECEBER_INA: TStringField;
    ADOQPerfilCONTRECEBER_HAB: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_MENU: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_INC: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_ALT: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_EXC: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_MAR: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_IMP: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_INA: TStringField;
    ADOQPerfilCAIXAMOVIMENTACAO_HAB: TStringField;
    ADOQPerfilCAIXA_ABRIR: TStringField;
    ADOQPerfilCAIXA_FECHAR: TStringField;
    Label20: TLabel;
    DBCheckBox94: TDBCheckBox;
    Label21: TLabel;
    DBCheckBox95: TDBCheckBox;
    ADOQPerfilGERACONTPAGREC_MENU: TStringField;
    ADOQPerfilCONTAPAGARLIQUIDAR_MENU: TStringField;
    ADOQPerfilCONTARECEBLIQUIDAR_MENU: TStringField;
    Label24: TLabel;
    Label25: TLabel;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    ADOQPerfilCREDITO_CLIENT_MENU: TStringField;
    ADOQPerfilCREDITO_CLIENT_INC: TStringField;
    ADOQPerfilCREDITO_CLIENT_ALT: TStringField;
    ADOQPerfilCREDITO_CLIENT_EXC: TStringField;
    ADOQPerfilCREDITO_CLIENT_MAR: TStringField;
    ADOQPerfilCREDITO_CLIENT_IMP: TStringField;
    ADOQPerfilCREDITO_CLIENT_INA: TStringField;
    ADOQPerfilCREDITO_CLIENT_HAB: TStringField;
    Label26: TLabel;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    DBCheckBox92: TDBCheckBox;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox96: TDBCheckBox;
    DBCheckBox97: TDBCheckBox;
    DBCheckBox98: TDBCheckBox;
    Label27: TLabel;
    DBCheckBox99: TDBCheckBox;
    DBCheckBox100: TDBCheckBox;
    DBCheckBox101: TDBCheckBox;
    DBCheckBox102: TDBCheckBox;
    DBCheckBox103: TDBCheckBox;
    DBCheckBox104: TDBCheckBox;
    DBCheckBox105: TDBCheckBox;
    DBCheckBox106: TDBCheckBox;
    ADOQPerfilFORNEC_MENU: TStringField;
    ADOQPerfilFORNEC_INC: TStringField;
    ADOQPerfilFORNEC_ALT: TStringField;
    ADOQPerfilFORNEC_EXC: TStringField;
    ADOQPerfilFORNEC_MAR: TStringField;
    ADOQPerfilFORNEC_IMP: TStringField;
    ADOQPerfilFORNEC_INA: TStringField;
    ADOQPerfilFORNEC_HAB: TStringField;
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
    procedure btnImpressaoClick(Sender: TObject);
    procedure DescriaoPerfil1Click(Sender: TObject);
  private
    FExecutar: TExecutar; // do Type EXECUTAR
    procedure SetExecutar(const Value: TExecutar); // do Type EXECUTAR
    procedure HabBotoesPesDesCheck;    // Habilitar Botoes e Desabilitar Checks Do Cabecalho da Aba Cadastro
    procedure HabCheckDesBotoes;        // Habilitar Checks e Desabilitar Botoes Do Cabecalho da Aba Cadastro
    procedure PesquisaPorCodigo;   // Fazer Pesquisas por Codigo
    procedure PesquisaPorDescricao;  // Pesquisa Padrao por Descricao
    { Private declarations }

  public
    { Public declarations }
    property Executar: TExecutar read FExecutar write SetExecutar;      // do Type EXECUTAR
    Procedure GridZebrado (RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);   // Procedure para Pintar a Grid

  end;

var
  F_Perfil: TF_Perfil;

 // Armazena Senten�a SQL
    strSql: string;

 // Guardar Mensagem
    mensagem: string;

 // Define o Caption dos Application MessageBox
    MensageAppMesBox: string;

 // Define as Opcoes de Menu - Inclus�o - Altera��o - Exclus�o - Registro
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

  // Variavel para Mostrar o Relatorio certo no Botao Impressao
  RelatorioPerfil: Integer; // Variavel para Verificar qual relatorio tera que executar (Todos e Um S�)
  caminhoRelPerfil: string;   // Para Gerar o Relatorio

implementation

uses
  U_DMPrincipal, U_PesqData, U_Principal, U_PesqString, U_DMRelatorios;

{$R *.dfm}

procedure TF_Perfil.btnAlterarClick(Sender: TObject);
begin
  ADOTabela.Edit;                                  //*********** ADOQUERY = ADOTABELS **************************************

// Inclusao do Registro
  ADOTabela.FieldByName('DATA_ALT').AsDateTime:= Date;      //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
    HabCheckDesBotoes;     // Executando funcao de Habchecks

// Ativar o Pnl fica campos para poder navegar entre as abas
    pnlFichaCampos.Enabled:= True;
    pnlDesc.Enabled:= True;
    pnlCadastros.Enabled:= True;
    pnlSeguranca.Enabled:= True;
    pnlSistema.Enabled:= True;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Altera�ao de Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha; // Colocando a Tela Certa

end;

procedure TF_Perfil.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navega��o
     Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_Perfil.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_Perfil.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
begin
// Verificando se o Campo Login esta Vazio
  if Trim(edtDescricao.Text) = '' then
     begin
       Beep;
       ShowMessage('O Campo DESCRICAO DE PERFIL, n�o pode Ficar Vazio.');
       edtDescricao.SetFocus;
       Abort;
     end;

// Verificando o que esta sendo Feito -- Adicionando  ou Editando Para Dar a mensagem
    if ADOTabela.State in [dsInsert] then          //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= ' Registro Inclu�do  com Sucesso. ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);

        /////// criando o Log de Opera��es
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
        //////// criando o Log de Opera��es
        end
    else
      if ADOTabela.State in [dsEdit] then      //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= ' Registro Alterado com Sucesso. ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);


        //////// criando o Log de Opera��es
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
        //////// criando o Log de Opera��es
        end;


    ADOTabela.Post;    // Gravar  -- Desativei pq estava com erro no vendas            //*********** ADOQUERY = ADOTABELS **************************************

{Habilita��o e Exibicao de Objetos}
    Executar:= habilitaBotoes;
    HabBotoesPesDesCheck;
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;

  if ADOTabela.FieldByName('STATUS').AsString = 'N' then       //*********** ADOQUERY = ADOTABELS **************************************
    lblStatus.Visible:= True
  else
    lblStatus.Visible:=  False;

  CheckInativo.Visible:= True;

// Ativar o Pnl fica campos para poder navegar entre as abas
    pnlFichaCampos.Enabled:= True;
    pnlDesc.Enabled:= False;
    pnlCadastros.Enabled:= False;
    pnlSeguranca.Enabled:= False;
    pnlSistema.Enabled:= False;
end;

procedure TF_Perfil.btnImpressaoClick(Sender: TObject);
begin

 case RelatorioPerfil of
  // Registro pesquisado pelo campo edtvalor na tela inicial
  1:
      begin
        try
          if RGPesquisaGenerica.ItemIndex = 0 then
          begin
          if edtValorCampo.Text = '' then
             begin
                ShowMessage('Campo nao pode ficar Vazio');
                Exit;
             end
          else
            begin
             strSql:= 'SELECT * FROM VW_PERFILTODOS';
             strSql:= strSql + ' WHERE ID = :Codigo';

              with DMRelatorios.ADOPerfilTodosC do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add(strSql);
                   SQL.Add('order by ID');
                   Parameters.ParamByName('Codigo').Value:= StrToInt(edtValorCampo.Text);
                   Open;
                 end;
            end;
          end
          else
            if RGPesquisaGenerica.ItemIndex = 1 then
               if edtValorCampo.Text = '' then
                 begin
                    ShowMessage('Campo nao pode ficar Vazio');
                    Exit;
                 end
               else
                begin
                   strSql:= 'SELECT * FROM VW_PERFILTODOS';
                   strSql:= strSql + ' WHERE DESC_PERFIL like :DescPerfil';

              with DMRelatorios.ADOPerfilTodosC do
                 begin
                   Close;
                   SQL.Clear;
                   SQL.Add(strSql);
                   SQL.Add('order by DESC_PERFIL');
                   Parameters.ParamByName('DescPerfil').Value:= (edtValorCampo.Text);
                   Open;
                 end;
                end;

        except
              on E: Exception do
              ShowMessage('Erro: '+E.Message);
        end;
      end;

  // Pesquisa de Todos os Registro
  2:
      begin
      try
        begin
          strSql:= 'SELECT * FROM VW_PERFILTODOS';

          with DMRelatorios.ADOPerfilTodosC do
             begin
                Close;
                SQL.Clear;
                SQL.Add(strSql);
                SQL.Add('order by ID');
                Open;
             end;
        end;
      except
        on E: Exception do
        ShowMessage('Erro: '+E.Message);
      end;
      end;

  // Por Periodo de Inclusao
  3:
      begin
      try
          begin
            with DMRelatorios.ADOPerfilTodosC do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from VW_PERFILTODOS where DATA_INC between :DataIni and :DataFim');
                 SQL.Add('order by DATA_INC asc');
                 Parameters.ParamByName('DataIni').Value:= val1;
                 Parameters.ParamByName('DataFim').Value:= val2;
                 Open;
               end;
          end;
      except
            on E: Exception do
            ShowMessage('Erro: '+E.Message);
      end;
      end;

  // Por Periodo de alteracao
  4:
      begin
      try
          begin
            with DMRelatorios.ADOPerfilTodosC do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from VW_PERFILTODOS where DATA_ALT between :DataIni and :DataFim');
                 SQL.Add('order by DATA_INC asc');
                 Parameters.ParamByName('DataIni').Value:= val1;
                 Parameters.ParamByName('DataFim').Value:= val2;
                 Open;
               end;
          end;
      except
            on E: Exception do
            ShowMessage('Erro: '+E.Message);
      end;
      end;

  // Por Registros Bloqueado
  5:
      begin
      try
          begin
            with DMRelatorios.ADOPerfilTodosC do
               begin
                 Close;
                 SQL.Clear;
                 SQL.Add('select * from VW_PERFILTODOS where STATUS = :Bloqueado');
                 Parameters.ParamByName('Bloqueado').Value:= 'S';
                 Open;
               end;
          end;
      except
            on E: Exception do
            ShowMessage('Erro: '+E.Message);
      end;
      end;
 end;

 // Relatorio de Perfil Completo
  caminhoRelBanco:= 'C:\Emprestimo\RELATORIO\';   // Caminho do Relatorio
  DMRelatorios.FRXPerfilTodosC.LoadFromFile(caminhoRelBanco+'RelPerfilTodosC.fr3'); // Lendo o Arquivo de Relatorio)
  DMRelatorios.FRXPerfilTodosC.Variables['Nome_Empresa']:= QuotedStr(NOMEEMPRESA); // Colocando a Variavel do titulo do Relatorio
  DMRelatorios.FRXPerfilTodosC.ShowReport();

   RelatorioPerfil:=0;  // Zerando a Variavel

end;

procedure TF_Perfil.btnIncluirClick(Sender: TObject);
begin
   ADOTabela.Active:= True;    //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Open;             //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Insert;           //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
   HabCheckDesBotoes;


 // Marcar ou Desmarcar os Checks, com Valores padroes.
    CheckHabilita.Checked:= False;
    CheckInativo.Checked:= False;
    CheckInativo.Visible:= False;

// Ativar o Pnl fica campos para poder navegar entre as abas
    pnlFichaCampos.Enabled:= True;
    pnlDesc.Enabled:= True;
    pnlCadastros.Enabled:= True;
    pnlSeguranca.Enabled:= True;
    pnlSistema.Enabled:= True;

// Inclusao do Registro
  ADOTabela.FieldByName('STATUS').AsAnsiString:= 'H';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_INC').AsDateTime:= Date;             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('INATIVO').AsAnsiString:= 'N';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_HAB').AsDateTime:= date;        //*********** ADOQUERY = ADOTABELS **************************************

// Colocando Valor para o Campo Marcar que nao esta visivel no sistema
   ADOTabela.FieldByName('PERFIL_MAR').AsAnsiString:= 'N';
   ADOTabela.FieldByName('USUARIO_MAR').AsAnsiString:= 'N';
   //ADOTabela.FieldByName('EMPRESTAR_MAR').AsAnsiString:= 'N';
   //ADOTabela.FieldByName('EMPRESA_MAR').AsAnsiString:= 'N';
   ADOTabela.FieldByName('LOG_MAR').AsAnsiString:= 'N';

  CheckMenuLog.Checked := False;
  if CheckMenuLog.Checked = True then
    begin
      ADOTabela.FieldByName('LOG_INICIAR').AsAnsiString:= 'S';
      ADOTabela.FieldByName('LOG_ATIVIDADES').AsAnsiString:= 'S';
    end
  else
    if CheckMenuLog.Checked = False then
      begin
        ADOTabela.FieldByName('LOG_INICIAR').AsAnsiString:= 'N';
        ADOTabela.FieldByName('LOG_ATIVIDADES').AsAnsiString:= 'N';
      end;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Inclus�o de Novo Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha;   // Colocando a Tela Certa
  edtDescricao.SetFocus
end;

procedure TF_Perfil.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_Perfil.btnOkClick(Sender: TObject);
begin
  RelatorioPerfil:= 1;     // Colocando o Codigo para Mostrar o Relatorio
// Pesquisar por codigo No Botao
     // Pesquisa por Codigo de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
          PesquisaPorCodigo;
          //edtValorCampo.Clear;
          edtValorCampo.SetFocus;
       end;
 // Pesquisa por Nome de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 1 then
       begin
         PesquisaPorDescricao;
        // edtValorCampo.Clear;
         edtValorCampo.SetFocus;
       end;
 RelatorioPerfil:= 1;     // Colocando o Codigo para Mostrar o Relatorio
 PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_Perfil.btnReverterClick(Sender: TObject);
begin
  // Verificando o que esta sendo Feito -- Adicionando  ou Editando Para Dar a mensagem
    if ADOTabela.State in [dsInsert] then               //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= '          Inser��o  de  Dados  Cancelada.          ';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONERROR);
        end
    else
      if ADOTabela.State in [dsEdit] then              //*********** ADOQUERY = ADOTABELS **************************************
        begin
             mensagem:= '          Altera��o  de  Dados  Cancelada.          ';
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

{Habilita��o e Exibicao de Objetos}
    HabBotoesPesDesCheck ;
    PageControlCadastro.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;

// Ativar o Pnl fica campos para poder navegar entre as abas
    pnlFichaCampos.Enabled:= True;
    pnlDesc.Enabled:= False;
    pnlCadastros.Enabled:= False;
    pnlSeguranca.Enabled:= False;
    pnlSistema.Enabled:= False;

   // Limpando o Status Bar
     statBarPadrao.Panels[0].Text:= '';
     statBarPadrao.Panels[1].Text:= '';
     statBarPadrao.Panels[2].Text:= '';
     statBarPadrao.Panels[3].Text:= '';

    ADOTabela.Active:= false;    // Fechar o Component           //*********** ADOQUERY = ADOTABELS **************************************
    CheckInativo.Visible:= True;

end;

procedure TF_Perfil.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;


procedure TF_Perfil.DescriaoPerfil1Click(Sender: TObject);
begin
 tarefa:= 'Pesquisa Alfanumerica por [DESC_PERFIL] ';             // Mensagem no Rodape
  F_PesqString.ShowModal; // Chamar a Tela de Pesquisa

      //Pesquisa por string que contem

 if F_PesqString.RadioGroup1.ItemIndex = 0 then
    begin
        statBarPadrao.Panels[2].Text:= ' Nome Cont�m: ' + F_PesqString.edtValor.Text;
        strSql:=' SELECT * FROM ' + nomeTabela;
        strSql:= strSql + ' WHERE UPPER (DESC_PERFIL) LIKE ' + #39 + '%' +
        F_PesqString.edtValor.Text + '%' + #39;
    end;

     //Pesquisa por string que Inicia Com

 if F_PesqString.RadioGroup1.ItemIndex = 1 then
    begin
        statBarPadrao.Panels[2].Text:= ' Nome Inicia Com: ' + F_PesqString.edtValor.Text;
        strSql:=' SELECT * FROM ' + nomeTabela;
        strSql:= strSql + ' WHERE UPPER (DESC_PERFIL) LIKE ' + #39 +
        F_PesqString.edtValor.Text + '%' + #39;
    end;

         //Pesquisa por string que Termina Com

 if F_PesqString.RadioGroup1.ItemIndex = 2 then
    begin
        statBarPadrao.Panels[2].Text:= ' Nome Termina Com: ' + F_PesqString.edtValor.Text;
        strSql:=' SELECT * FROM ' + nomeTabela;
        strSql:= strSql + ' WHERE UPPER (DESC_PERFIL) LIKE ' + #39 + '%' +
        F_PesqString.edtValor.Text + #39;
    end;

  // Executar Acoes Padroes
    Executar:= sentencaSQL;
    Executar:= exibePanels;
    Executar:= navegacao;
    Executar:= habilitaBotoes;
    PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.Descrio1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY '+DescPrincipal);
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Descri��o] ';
end;

procedure TF_Perfil.edtValorCampoKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       btnOk.Click;
end;

procedure TF_Perfil.ExcluirUMRegClick(Sender: TObject);
var  // Excluir Um Registro - Inativar Registro
  confExcl: integer;
  strValorChave: string;
begin
  strValorChave:= ADOTabela.FieldByName('ID').AsString;
   beep;
   confExcl:= Application.MessageBox(' Confirma a Exclus�o? ',PChar(MensageAppMesBox) , MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION);

   if confExcl = IDYES then
      begin
      //////// criando o Log de Opera��es
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
      //////// criando o Log de Opera��es

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
          mensagem:= ' A Exclus�o desse Registro foi Cancelada!! ';
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

procedure TF_Perfil.FormActivate(Sender: TObject);
begin
  ADOTabela:= ADOQPerfil;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_PERFIL'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Cadastro de Perfil';  // Nome que ira aparecer
  GridLista.DataSource:= DSPerfil;    //Colocando o Data Source no Grid
  DescPrincipal:= 'DESC_PERFIL';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('PERFIL_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('PERFIL_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'Cadastro de Usuarios';

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
    edtValorCampo.SetFocus;

// Ativar o Pnl fica campos para poder navegar entre as abas
    pnlFichaCampos.Enabled:= True;
    pnlDesc.Enabled:= False;
    pnlCadastros.Enabled:= False;
    pnlSeguranca.Enabled:= False;
    pnlSistema.Enabled:= False;

{ Fazendo Verificacao se tem permissao de Alterar ou Incluir, caso nao, os checks nem irao aparecer}

  if (copy(ModoEdicao,1,1) = 'N') AND (copy(ModoEdicao,2,1) = 'N') then
    begin
        CheckHabilita.Visible:= False;
    end;
end;

procedure TF_Perfil.GridListaDblClick(Sender: TObject);
begin
        ADOTabela.Locate('ID',ADOQPerfilID.Value,[]);
        PageControlCadastro.ActivePage:= TabSheetFicha;
end;

procedure TF_Perfil.GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_Perfil.GridListaKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_Perfil.GridZebrado(RecNo: Integer; Grid: TDBGrid; Rect: TRect;
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

procedure TF_Perfil.HabBotoesPesDesCheck;
begin
// Habilitar Botoes de Pesquisa e Desabilitar os Check    // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= true;
    edtValorCampo.Enabled:= True;
    btnOk.Visible:= True;
    RGPesquisaGenerica.Visible:= true;

    CheckHabilita.Enabled:= False;
    CheckInativo.Enabled:= False;
end;

procedure TF_Perfil.HabCheckDesBotoes;
begin
// Habilitar os Checks e Desabilitar os Campos de Desquisa   // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= False;
    edtValorCampo.Enabled:= False;
    btnOk.Visible:= False;
    RGPesquisaGenerica.Visible:= False;

    CheckHabilita.Enabled:= True;
    CheckInativo.Enabled:= False;
end;

procedure TF_Perfil.Inativo1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY INATIVO');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [INATIVO] ';
end;

procedure TF_Perfil.OrdeCodigoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [ID] ';
end;

procedure TF_Perfil.OrdeDTAlteracaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_ALT');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Altera��o] ';
end;

procedure TF_Perfil.OrdeDTHabilitacaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_HAB');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Habilita��o] ';
end;

procedure TF_Perfil.OrdeDTInclusaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_INC');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Inclus�o] ';
end;

procedure TF_Perfil.PesCodigoClick(Sender: TObject);
begin
// Pesquisando por Codigo, colocando a Tela na pagina de Pesquisa e colocando o foco no campo de pesquisa
    WindowState:= wsNormal;
    PageControlCadastro.ActivePageIndex:= 0;   // Colocando a Tela Certa
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;
end;

procedure TF_Perfil.PesqPPAlteracaoClick(Sender: TObject);
begin
// Pesquisa Por Data de Altera��o de Registros
  tarefa:= 'Pesquisa de Registros Alterados no Periodo';
  F_PesqData.ShowModal;
         //Chamando a Tela de Pesquisa

      statBarPadrao.Panels[2].Text:= ' Registros Alterados Entre: '+ valdata1 +
                            ' e ' + valdata2;
      strSql:= 'SELECT * FROM ' + nomeTabela;
      strSql:= strSql + ' where DATA_ALT >= ' + #39 + VAL1 + #39;
      strSql:= strSql + ' AND DATA_ALT <= ' + #39 + VAL2 + #39;

      Executar:= sentencaSQL;
      Executar:= exibePanels;
      Executar:= navegacao;
      Executar:= habilitaBotoes;
      RelatorioPerfil:=4;   // Colocando o Codigo para Mostrar o Relatorio
PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.PesqPPInclusaoClick(Sender: TObject);
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
      RelatorioPerfil:=3;    // Colocando o Codigo para Mostrar o Relatorio
  PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.PesqRegBloqueadosClick(Sender: TObject);
begin
//Pesquisa por Registros Bloqueados
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE STATUS = ' + #39 + 'S' + #39;

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
   RelatorioPerfil:=5;  // Colocando o Codigo para Mostrar o Relatorio
   PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.PesqToRegClick(Sender: TObject);
begin
// Pesquisa todos os Registros
  strSql:= 'SELECT * FROM ' + nomeTabela;
  statBarPadrao.Panels[2].Text:= ' Todos os Registros Selecionados ';      // Mensagem que vai aparecer no statusBar
  ADOTabela.Open;                                                      //*********** ADOQUERY = ADOTABELS **************************************
  Executar:= sentencaSQL;    // Executando o metodo Sentenca SQL
  Executar:= navegacao; // Executando o metodo Navega��o
  Executar:=exibePanels; // Executando o metodo Exibepanels
  Executar:=habilitaBotoes;    // Executando o metodo Habilita Botoes
  RelatorioPerfil:=2;  // Colocando o Codigo para Mostrar o Relatorio
  PageControlCadastro.ActivePage:= TabSheetTela;   // Colocando a Tela Certa
end;

procedure TF_Perfil.PesquisaPorCodigo;
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
            statBarPadrao.Panels[2].Text:=' Pesquisa por C�digo do Registro, C�digo =  '+edtValorCampo.Text;
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

procedure TF_Perfil.PesquisaPorDescricao;
begin
  edtValorCampo.SetFocus;
   statBarPadrao.Panels[2].Text:= ' Nome Cont�m: '+ edtValorCampo.Text;
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE '+ DescPrincipal + ' LIKE ' +#39+'%'+ edtValorCampo.Text+'%'+#39;

   if edtValorCampo.Text <> '' then
      begin
          statBarPadrao.Panels[2].Text:=' Pesquisa por DESCRI��O do Registro';
          Executar:= sentencaSQL;
          Executar:= exibePanels;
          Executar:= navegacao;
          Executar:= habilitaBotoes;

           if (ADOTabela.RecordCount = 0) then    /// comandos para colocar o Focu no Edit novamente
            begin
                // edtValorCampo.Text:= '';
                  btnInicio.Enabled:= false;
                  btnAnterior.Enabled:= false;
                  btnProximo.Enabled:= false;
                  btnFinal.Enabled:= false;
            end;
      end;
end;

procedure TF_Perfil.RGPesquisaGenericaClick(Sender: TObject);
begin
  edtValorCampo.SetFocus;
end;

procedure TF_Perfil.SetExecutar(const Value: TExecutar);
begin
  FExecutar := Value;   {$REGION 'TEXECUTAR'} // Inicio   // Executar === Criacao Inicio

  case value of
   navegacao:  {$REGION 'NAVEGA��O'} // Inicio                     // ####### Metodo EXECUTAR NAVEGA��O##########################
// { Habilita Botoes de Navega��o} // ####### Metodo EXECUTAR ##########################
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
//  {Executa a Senten�a SQL}                             // ####### Metodo EXECUTAR ##########################
// Para Armazenar as Senten�as SQL, todos os Codigos
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
                          mensagem:= ' N�o foi encontrado nenhum Registro que ' + #13    // #13 Pular Linha   ' INFORMA��O '
                                     +'Satisfa�a a sua Pesquisa.';
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

procedure TF_Perfil.Status1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY STATUS');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [STATUS] ';
end;

end.
