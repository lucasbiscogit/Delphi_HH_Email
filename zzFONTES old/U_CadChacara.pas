unit U_CadChacara;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask;

type
// Metodo Para Execu��es
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

   TMinhaJanelaHint = class(THintWindow)
   public
       procedure doActivateHint(Sender: TObject);
   end;

type
    TCellGrid = class(vcl.Grids.TCustomGrid);

  TF_CadChacara = class(TForm)
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
    ADOQCadChaca: TADOQuery;
    DSCadChaca: TDataSource;
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
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    edtNomeChacara: TDBEdit;
    Label3: TLabel;
    edtNomeProp: TDBEdit;
    Label4: TLabel;
    edtNumeroChacara: TDBEdit;
    Label5: TLabel;
    edtLargura: TDBEdit;
    Label6: TLabel;
    edtComprimento: TDBEdit;
    Label15: TLabel;
    edtEmail: TDBEdit;
    ADOCep: TADOQuery;
    DSCep: TDataSource;
    ADOCepID: TAutoIncField;
    ADOCepSTATUS: TStringField;
    ADOCepMARCAR: TStringField;
    ADOCepINATIVO: TStringField;
    ADOCepDATA_INC: TDateTimeField;
    ADOCepDATA_ALT: TDateTimeField;
    ADOCepDATA_HAB: TDateTimeField;
    ADOCepUF: TStringField;
    ADOCepESTADO: TStringField;
    ADOCepCIDADE: TStringField;
    ADOCepBAIRRO: TStringField;
    ADOCepENDERECO: TStringField;
    ADOCepCEP: TStringField;
    ADOCepCAPITAL: TStringField;
    ADOCepREGIAO: TStringField;
    ADOCepN_DE: TIntegerField;
    ADOCepN_ATE: TIntegerField;
    ADOQCadChacaID: TAutoIncField;
    ADOQCadChacaSTATUS: TStringField;
    ADOQCadChacaINATIVO: TStringField;
    ADOQCadChacaDATA_INC: TDateTimeField;
    ADOQCadChacaDATA_ALT: TDateTimeField;
    ADOQCadChacaDATA_HAB: TDateTimeField;
    ADOQCadChacaNOME_CHACARA: TStringField;
    ADOQCadChacaNOME_PROPRIETARIO: TStringField;
    ADOQCadChacaNUMERO_CHACARA: TIntegerField;
    ADOQCadChacaLARGURA: TIntegerField;
    ADOQCadChacaCOMPRIMENTO: TIntegerField;
    ADOQCadChacaTELEFONE_PROP: TStringField;
    ADOQCadChacaCELULAR_PROP: TStringField;
    ADOQCadChacaCEP_PROP: TStringField;
    ADOQCadChacaENDERECO_PROP: TStringField;
    ADOQCadChacaNUMERO_RESID_PROP: TIntegerField;
    ADOQCadChacaBAIRRO_PROP: TStringField;
    ADOQCadChacaCOMPLEMENTO__PROP: TStringField;
    ADOQCadChacaCPF_PROP: TStringField;
    ADOQCadChacaEMAIL_PROP: TStringField;
    Label7: TLabel;
    edtTelRes: TDBEdit;
    Label8: TLabel;
    edtCelular: TDBEdit;
    Label9: TLabel;
    edtCEP: TDBEdit;
    Label10: TLabel;
    edtEndereco: TDBEdit;
    Label11: TLabel;
    edtNumeroRes: TDBEdit;
    Label12: TLabel;
    edtCompRes: TDBEdit;
    Label13: TLabel;
    edtBairro: TDBEdit;
    Label14: TLabel;
    edtCPF: TDBEdit;
    Label16: TLabel;
    edtUF: TDBEdit;
    Label17: TLabel;
    edtCIDADE: TDBEdit;
    ADOQCadChacaUF: TStringField;
    ADOQCadChacaCIDADE_PROP: TStringField;
    ADOQCadChacaNUMERO_RELOGIO: TIntegerField;
    ADOQCadChacaLEITURA_INICIAL: TIntegerField;
    ADOQCadChacaTXRUA: TStringField;
    ADOQCadChacaTXLEITURA: TStringField;
    ADOQCadChacaTXENERGIA: TStringField;
    TabSheetContas: TTabSheet;
    pnlEnergia: TPanel;
    TabSheetCredito: TTabSheet;
    pnlAgua: TPanel;
    GroupBox1: TGroupBox;
    CheckEnergia: TDBCheckBox;
    CheckRua: TDBCheckBox;
    CheckTaxa: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    ADOCreditoClient: TADOQuery;
    DSCreditoCliet: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit6: TDBEdit;
    Label24: TLabel;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    ADOQCadChacaTXAGUA: TStringField;
    ADOQCadChacaTXLEITAGUA: TStringField;
    ADOQCadChacaRATEIOAGUA: TStringField;
    ADOQCadChacaRATEIOGERAL: TStringField;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    ADOQCadChacaLEITURA_INICIAL_AGUA: TIntegerField;
    ADOCreditoClientID: TAutoIncField;
    ADOCreditoClientDATA_INC: TDateTimeField;
    ADOCreditoClientHISTORICOMOV: TStringField;
    ADOCreditoClientVLMOV: TBCDField;
    ADOCreditoClientVLTOTALATUAL: TBCDField;
    ADOCreditoClientTIPOMOV: TStringField;
    ADOCreditoClientTIPOMOV1: TStringField;
    ADOCreditoClientID_CADCHACARA: TIntegerField;
    ADOCreditoClientExpr1: TAutoIncField;
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
    procedure edtNomeChacaraEnter(Sender: TObject);
    procedure edtNomeChacaraExit(Sender: TObject);
    procedure edtNumeroChacaraEnter(Sender: TObject);
    procedure edtNumeroChacaraExit(Sender: TObject);
    procedure edtLarguraEnter(Sender: TObject);
    procedure edtLarguraExit(Sender: TObject);
    procedure edtComprimentoEnter(Sender: TObject);
    procedure edtComprimentoExit(Sender: TObject);
    procedure edtNomePropEnter(Sender: TObject);
    procedure edtNomePropExit(Sender: TObject);
    procedure edtEmailEnter(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtNumeroResEnter(Sender: TObject);
    procedure edtNumeroResExit(Sender: TObject);
    procedure edtCelularEnter(Sender: TObject);
    procedure edtCelularExit(Sender: TObject);
    procedure edtTelResEnter(Sender: TObject);
    procedure edtTelResExit(Sender: TObject);
    procedure edtUFEnter(Sender: TObject);
    procedure edtUFExit(Sender: TObject);
    procedure edtEnderecoExit(Sender: TObject);
    procedure edtEnderecoEnter(Sender: TObject);
    procedure edtBairroEnter(Sender: TObject);
    procedure edtBairroExit(Sender: TObject);
    procedure edtCEPEnter(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure edtCIDADEEnter(Sender: TObject);
    procedure edtCIDADEExit(Sender: TObject);
    procedure edtCompResEnter(Sender: TObject);
    procedure edtCompResExit(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure edtCPFExit(Sender: TObject);
    procedure GridListaTitleClick(Column: TColumn);
    procedure CheckEnergiaClick(Sender: TObject);
    procedure CheckRuaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridListaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
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
    procedure TrazerCreditoCliente; // trazer o credito do cliente
    procedure mouseToCell(X, Y: integer; var ACol, ARow: longint);
  end;

var
  F_CadChacara: TF_CadChacara;
        MeuHint: TMinhaJanelaHint;
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

// Variaveis para Trazer os campos da pesquisa de cep
    UF, CIDADE, ENDERECO, BAIRRO, CEP: string;

 {VARIAVEIS PARA DEIXAR COMO GENERICA A TELA}
    ADOTabela: TADOQuery;    // Variaveis Para Receber o ADOQuery

implementation

uses
  U_DMPrincipal, U_PesqData, U_Principal, U_PesCEP;

{$R *.dfm}

procedure TF_CadChacara.btnAlterarClick(Sender: TObject);
begin
  ADOTabela.Edit;                                  //*********** ADOQUERY = ADOTABELS **************************************

// Inclusao do Registro
  ADOTabela.FieldByName('DATA_ALT').AsDateTime:= Date;      //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
    HabCheckDesBotoes;     // Executando funcao de Habchecks
    pnlFichaCampos.Enabled:= true;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Altera�ao de Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha; // Colocando a Tela Certa
  PageControlCadastro.Pages[2].TabVisible := False;   // Escondendo a outra ABA
end;

procedure TF_CadChacara.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navega��o
     Executar:=exibePanels;  // Executando o metodo Exibepanels
     TrazerCreditoCliente;
end;

procedure TF_CadChacara.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
    TrazerCreditoCliente;
end;

procedure TF_CadChacara.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
begin

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
   PageControlCadastro.ActivePage:= TabSheetFicha;
{Habilita��o e Exibicao de Objetos}
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

// Desbloqueando o campo endereco e voltando a cor original
    edtEndereco.Enabled:= True;
    edtEndereco.Color:= clWhite;
 PageControlCadastro.Pages[2].TabVisible := TRUE;   // Escondendo a outra ABA
end;

procedure TF_CadChacara.btnIncluirClick(Sender: TObject);
begin
   ADOTabela.Active:= True;    //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Open;             //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Insert;           //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
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
  ADOTabela.FieldByName('TXENERGIA').AsAnsiString:= 'N';
  ADOTabela.FieldByName('TXRUA').AsAnsiString:= 'N';
  ADOTabela.FieldByName('TXLEITURA').AsAnsiString:= 'N';

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Inclus�o de Novo Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha;   // Colocando a Tela Certa
  edtNomeChacara.SetFocus;
  PageControlCadastro.Pages[2].TabVisible := False;   // Escondendo a outra ABA
end;

procedure TF_CadChacara.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;  // Executando o metodo Exibepanels
    TrazerCreditoCliente;
end;

procedure TF_CadChacara.btnOkClick(Sender: TObject);
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

procedure TF_CadChacara.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
    TrazerCreditoCliente;
end;

procedure TF_CadChacara.btnReverterClick(Sender: TObject);
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

    pnlFichaCampos.Enabled:= False;

   // Limpando o Status Bar
     statBarPadrao.Panels[0].Text:= '';
     statBarPadrao.Panels[1].Text:= '';
     statBarPadrao.Panels[2].Text:= '';
     statBarPadrao.Panels[3].Text:= '';

    ADOTabela.Active:= false;    // Fechar o Component           //*********** ADOQUERY = ADOTABELS **************************************
    CheckInativo.Visible:= True;

// Desbloqueando o campo endereco e voltando a cor original
    edtEndereco.Enabled:= True;
    edtEndereco.Color:= clWhite;
 PageControlCadastro.Pages[2].TabVisible := TRUE;   // Escondendo a outra ABA
end;

procedure TF_CadChacara.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;


procedure TF_CadChacara.CheckEnergiaClick(Sender: TObject);
begin
  if CheckEnergia.Checked = True or CheckRua.Checked = True then
    begin
      CheckTaxa.Enabled:= True;
    end
  else
    begin
       CheckTaxa.Enabled:= False;
    end;
end;

procedure TF_CadChacara.CheckRuaClick(Sender: TObject);
begin
  if (CheckEnergia.Checked = True) or (CheckRua.Checked = True) then
    begin
      CheckTaxa.Enabled:= True;
    end
  else
    begin
       CheckTaxa.Enabled:= False;
    end;
end;

procedure TF_CadChacara.DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
   MColumn, MRow: Longint;
begin
//Grid Mouse Move da Grid
if (ADOQCadChaca.State in [dsOpening]) then
  begin
   // A partir da posi��o do mouse obtemos a coordenada da c�lula do grid
   MouseToCell(X,Y,MColumn,MRow);
   // Se for uma c�lula v�lida ...
   if (MRow > 0) and (MColumn >0) and (Mcolumn <= DbGrid1.Columns.Count) then
   begin
      // Fazemos a coluna do Grid ser a coluna apontada pelo mouse, para isso usamos a classe amiga
      // definida no come�o da unit
      TCellGrid(DBGrid1).Col := MColumn;

      // Movemos o DataSet para a linha apontada pelo mouse deslocando em rela��o � sua posi��o
      // anterior
      DBGrid1.DataSource.DataSet.MoveBy(MRow - TCellGrid(DBGrid1).Row);

      // Se o dado apontado n�o for do tipo String nem Variant n�o apresentamos o Hint
      if (DBGrid1.Columns[MColumn-1].Field.DataType <> ftString) and
         (DBGrid1.Columns[MColumn-1].Field.DataType <> ftVariant) then
      begin
         DBGrid1.Hint := '';
         MeuHint.ReleaseHandle;
         Exit;
      end;
      // Passamos o conte�do do campo para o Hint do Grid e chamamos a fun��o para exibi-lo

      DBgrid1.Hint := DBGrid1.Columns[MColumn-1].Field.AsString;
      MeuHint.doActivateHint(DBGrid1);
   end
else
   begin
      // Se n�o for c�lula v�lida limpo o Hint
      DBGrid1.Hint := '';
      MeuHint.ReleaseHandle;
    end;
  end;
end;

procedure TF_CadChacara.Descrio1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY '+DescPrincipal);
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Descri��o] ';
end;

procedure TF_CadChacara.edtBairroEnter(Sender: TObject);
begin
edtBairro.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtBairroExit(Sender: TObject);
begin
  edtBairro.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtCelularEnter(Sender: TObject);
begin
  edtCelular.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtCelularExit(Sender: TObject);
begin
  edtCelular.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtCEPEnter(Sender: TObject);
begin
  edtCep.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtCEPExit(Sender: TObject);
begin
    // Colocando os valores trazidos atras do cep digitado
    // Verificando o CEP digitado
  if (edtCep.Text <> '     -   ') and (edtCep.Text <> '') then    //Verificando o campo CEP
    begin
      try
          strSql:= 'SELECT * FROM TB_UF ';
          strSql:= strSql + ' WHERE CEP LIKE ' +#39+'%'+ edtCep.Text+'%'+#39;
        if edtCep.Text <> '     -   ' then    //Verificando o campo CEP
            with ADOCep do
              begin
                  Close;
                  SQL.Clear;
                  SQL.Add(strSql);
                  Open;
                  if (ADOCep.RecordCount = 0) then
                      begin
                          mensagem:= ' N�o Existe Este CEP ' + #13
                                     +'Precisa ser Cadastrado';
                          Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                          edtCep.SetFocus;
                          Exit;
                      end
                  else
                  edtUf.Text:= ADOCepUF.Value;
                  edtCidade.Text:= ADOCepCIDADE.Value;
                  edtBairro.Text:= ADOCepBAIRRO.Value;
                  edtEndereco.Text:= ADOCepENDERECO.Value;
                  edtEndereco.Enabled:= False;
                  edtEndereco.Color:= clInfoBk;
              end;
       edtCep.Color:= clWhite;                  // Voltando a Cor Original
       edtNumeroRes.SetFocus;
      except
           on E: Exception do
            ShowMessage('Erro: '+E.Message);
      end;
      ADOCep.Close;  // Fechando a Tabela
    end
  else
// fazendo os campos ficarem livres para nova pesquisa caso ja tenha digitado um cep errado
   if (edtEndereco.Text <> '') then
    begin
         edtEndereco.Enabled:= True;
         edtEndereco.Color:= clWhite;
         edtEndereco.Clear;
         edtUf.Clear;
         edtCidade.Clear;
         edtBairro.Clear;
         edtEndereco.SetFocus;
    end;
    edtCep.Color:= clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtCIDADEEnter(Sender: TObject);
begin
  edtCidade.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtCIDADEExit(Sender: TObject);
begin
  edtCidade.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtCompResEnter(Sender: TObject);
begin
  edtCompRes.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtCompResExit(Sender: TObject);
begin
  edtCompRes.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtComprimentoEnter(Sender: TObject);
begin
  edtComprimento.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtComprimentoExit(Sender: TObject);
begin
  edtComprimento.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtCPFEnter(Sender: TObject);
begin
  edtCPF.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtCPFExit(Sender: TObject);
begin
  edtCPF.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtEmailEnter(Sender: TObject);
begin
    edtEmail.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtEmailExit(Sender: TObject);
begin
  edtEmail.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtEnderecoEnter(Sender: TObject);
begin
    edtEndereco.Color:=  clMoneyGreen;                  // Mudando a cor de fundo

// Abrir a tela de pesquisa cep
  try
    F_PesqCEP:= TF_PesqCEP.Create(Application);
    F_PesqCEP.ShowModal;
  finally
    FreeAndNil(F_PesqCEP);
  end;

// Colocando os valores da busca da tela de pesquisa cep nos componetes da tela de trasnportadora
     edtCep.Text:= CEP;
     edtUf.Text:= UF;
     edtCidade.Text:= CIDADE;
     edtBairro.Text:= BAIRRO;
     edtEndereco.Text:= ENDERECO;
     edtNumeroRes.SetFocus;
     edtEndereco.Enabled:= False;
     edtEndereco.Color:= clInfoBk;


// Fazendo uma verificacao para nao deixar de digitar o cep ou endereco
   if edtCidade.Text = '' then
      begin
        edtCep.SetFocus;
        edtEndereco.Enabled:= True;
        edtEndereco.Color:= clWhite;                  // Voltando a Cor Original
      end;
end;

procedure TF_CadChacara.edtEnderecoExit(Sender: TObject);
begin
  edtEndereco.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtLarguraEnter(Sender: TObject);
begin
   edtLargura.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtLarguraExit(Sender: TObject);
begin
 edtLargura.Color:= clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtNomeChacaraEnter(Sender: TObject);
begin
  edtNomeChacara.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtNomeChacaraExit(Sender: TObject);
begin
  edtNomeChacara.Color:= clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtNomePropEnter(Sender: TObject);
begin
  edtNomeProp.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtNomePropExit(Sender: TObject);
begin
  edtNomeProp.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtNumeroChacaraEnter(Sender: TObject);
begin
  edtNumeroChacara.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtNumeroChacaraExit(Sender: TObject);
begin
   edtNumeroChacara.Color:= clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtNumeroResEnter(Sender: TObject);
begin
 edtNumeroRes.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtNumeroResExit(Sender: TObject);
begin
  edtNumeroRes.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtTelResEnter(Sender: TObject);
begin
edtTelRes.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtTelResExit(Sender: TObject);
begin
  edtTelRes.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtUFEnter(Sender: TObject);
begin
edtUf.Color:= clMoneyGreen;              // Mudando a cor de fundo
end;

procedure TF_CadChacara.edtUFExit(Sender: TObject);
begin
  edtUf.Color:=  clWhite;                  // Voltando a Cor Original
end;

procedure TF_CadChacara.edtValorCampoKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       btnOk.Click;
end;

procedure TF_CadChacara.ExcluirUMRegClick(Sender: TObject);
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

procedure TF_CadChacara.FormActivate(Sender: TObject);
begin
  ADOTabela:= ADOQCadChaca;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_CADCHACARA'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Cadastro das Chacaras';  // Nome que ira aparecer
  GridLista.DataSource:= DSCadChaca;    //Colocando o Data Source no Grid
  DescPrincipal:= 'NOME_CHACARA';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('CADCHACA_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CADCHACA_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'Cadastro das Chacaras';

 UF := '';
 CIDADE:= '';
 ENDERECO:= '';
 BAIRRO:= '';

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

  // Form Active do Formulario
   // Crio a minha janela de Hint
   MeuHint := TMinhaJanelaHint.Create(Self);
 end;

procedure TF_CadChacara.FormClose(Sender: TObject; var Action: TCloseAction);
begin
ADOCreditoClient.Close;
end;

procedure TF_CadChacara.GridListaDblClick(Sender: TObject);
begin
       // ADOTabela.Locate('ID',ADOTabelaID.Value,[]);
        PageControlCadastro.ActivePage:= TabSheetFicha;
        TrazerCreditoCliente;
end;

procedure TF_CadChacara.GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_CadChacara.GridListaKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_CadChacara.GridListaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
   MColumn, MRow: Longint;
begin
//Grid Mouse Move da Grid

if (ADOQCadChaca.State in [dsOpening]) then
  begin

   // A partir da posi��o do mouse obtemos a coordenada da c�lula do grid
   MouseToCell(X,Y,MColumn,MRow);
   // Se for uma c�lula v�lida ...
   if (MRow > 0) and (MColumn >0) and (Mcolumn <= DbGrid1.Columns.Count) then
   begin
      // Fazemos a coluna do Grid ser a coluna apontada pelo mouse, para isso usamos a classe amiga
      // definida no come�o da unit
      TCellGrid(DBGrid1).Col := MColumn;

      // Movemos o DataSet para a linha apontada pelo mouse deslocando em rela��o � sua posi��o
      // anterior
      DBGrid1.DataSource.DataSet.MoveBy(MRow - TCellGrid(DBGrid1).Row);

      // Se o dado apontado n�o for do tipo String nem Variant n�o apresentamos o Hint
      if (DBGrid1.Columns[MColumn-1].Field.DataType <> ftString) and
         (DBGrid1.Columns[MColumn-1].Field.DataType <> ftVariant) then
      begin
         DBGrid1.Hint := '';
         MeuHint.ReleaseHandle;
         Exit;
      end;
      // Passamos o conte�do do campo para o Hint do Grid e chamamos a fun��o para exibi-lo

      DBgrid1.Hint := DBGrid1.Columns[MColumn-1].Field.AsString;
      MeuHint.doActivateHint(DBGrid1);
   end
else
   begin
      // Se n�o for c�lula v�lida limpo o Hint
      DBGrid1.Hint := '';
      MeuHint.ReleaseHandle;
    end;
  end;
end;

procedure TF_CadChacara.GridListaTitleClick(Column: TColumn);
var
  sIndexName: string;
  i: smallint;
begin
      // retira a formata��o em negrito de todas as colunas
      for i := 0 to GridLista.Columns.Count - 1 do
        GridLista.Columns[i].Title.Font.Style := [];

      // configura a ordena��o ascendente ou descendente
      if ADOTabela.Sort = Column.FieldName + ' ASC' then
        sIndexName := Column.FieldName + ' DESC'
      else
        sIndexName := Column.FieldName + ' ASC';

      // formata o t�tulo da coluna em negrito
      Column.Title.Font.Style := [fsBold];

      // atribui a ordena��o selecionada
      ADOTabela.Sort := sIndexName;

      ADOTabela.First;
end;

procedure TF_CadChacara.GridZebrado(RecNo: Integer; Grid: TDBGrid; Rect: TRect;
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

procedure TF_CadChacara.HabBotoesPesDesCheck;
begin
// Habilitar Botoes de Pesquisa e Desabilitar os Check    // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= true;
    edtValorCampo.Enabled:= True;
    btnOk.Visible:= True;
    RGPesquisaGenerica.Visible:= true;

    CheckHabilita.Enabled:= False;
    CheckInativo.Enabled:= False;
end;

procedure TF_CadChacara.HabCheckDesBotoes;
begin
// Habilitar os Checks e Desabilitar os Campos de Desquisa   // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= False;
    edtValorCampo.Enabled:= False;
    btnOk.Visible:= False;
    RGPesquisaGenerica.Visible:= False;

    CheckHabilita.Enabled:= True;
    CheckInativo.Enabled:= False;
end;

procedure TF_CadChacara.Inativo1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY INATIVO');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [INATIVO] ';
end;

procedure TF_CadChacara.mouseToCell(X, Y: integer; var ACol, ARow: Integer);
var
   Coord: TGridCoord;
begin
// Procedure Criada
   Coord := DbGrid1.MouseCoord(X,Y);
   ACol := Coord.X;
ARow := Coord.Y;
end;

procedure TF_CadChacara.OrdeCodigoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [ID] ';
end;

procedure TF_CadChacara.OrdeDTAlteracaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_ALT');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Altera��o] ';
end;

procedure TF_CadChacara.OrdeDTHabilitacaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_HAB');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Habilita��o] ';
end;

procedure TF_CadChacara.OrdeDTInclusaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_INC');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Inclus�o] ';
end;

procedure TF_CadChacara.PesCodigoClick(Sender: TObject);
begin
// Pesquisando por Codigo, colocando a Tela na pagina de Pesquisa e colocando o foco no campo de pesquisa
    WindowState:= wsNormal;
    PageControlCadastro.ActivePageIndex:= 0;   // Colocando a Tela Certa
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;
end;

procedure TF_CadChacara.PesqPPAlteracaoClick(Sender: TObject);
begin
// Pesquisa Por Data de Altera��o de Registros
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

procedure TF_CadChacara.PesqPPInclusaoClick(Sender: TObject);
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

procedure TF_CadChacara.PesqRegBloqueadosClick(Sender: TObject);
begin
//Pesquisa por Registros Bloqueados
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE STATUS = ' + #39 + 'S' + #39;

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
end;

procedure TF_CadChacara.PesqToRegClick(Sender: TObject);
begin
// Pesquisa todos os Registros
  strSql:= 'SELECT * FROM ' + nomeTabela;
  statBarPadrao.Panels[2].Text:= ' Todos os Registros Selecionados ';      // Mensagem que vai aparecer no statusBar
  ADOTabela.Open;                                                      //*********** ADOQUERY = ADOTABELS **************************************
  Executar:= sentencaSQL;    // Executando o metodo Sentenca SQL
  Executar:= navegacao; // Executando o metodo Navega��o
  Executar:=exibePanels; // Executando o metodo Exibepanels
  Executar:=habilitaBotoes;    // Executando o metodo Habilita Botoes

  TrazerCreditoCliente;
end;

procedure TF_CadChacara.PesquisaPorCodigo;
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

procedure TF_CadChacara.PesquisaPorDescricao;
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
                 edtValorCampo.Text:= '';
                  btnInicio.Enabled:= false;
                  btnAnterior.Enabled:= false;
                  btnProximo.Enabled:= false;
                  btnFinal.Enabled:= false;
            end;
      end;
end;

procedure TF_CadChacara.RGPesquisaGenericaClick(Sender: TObject);
begin
  edtValorCampo.SetFocus;
end;

procedure TF_CadChacara.SetExecutar(const Value: TExecutar);
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

procedure TF_CadChacara.Status1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY STATUS');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [STATUS] ';
end;

procedure TF_CadChacara.TrazerCreditoCliente;
var
CodChaca: integer;
begin
ADOCreditoClient.Open;

ADOQCadChaca.Locate('ID',ADOQCadChacaID.Value,[]);

CodChaca:= ADOQCadChaca.FieldByName('ID').AsInteger;

strSql:= ' SELECT TB_CREDITO_CLIENTE.ID, TB_CREDITO_CLIENTE.DATA_INC, TB_CREDITO_CLIENTE.HISTORICOMOV, TB_CREDITO_CLIENTE.VLMOV, TB_CREDITO_CLIENTE.VLTOTALATUAL, TB_CREDITO_CLIENTE.TIPOMOV, ';
strSql:= strSql + ' CASE TIPOMOV WHEN ''C'' THEN ''CREDITO'' ELSE ''DEBITO'' END AS TIPOMOV1, TB_CREDITO_CLIENTE.ID_CADCHACARA, TB_CADCHACARA.ID AS Expr1 ';
strSql:= strSql + ' FROM TB_CREDITO_CLIENTE INNER JOIN TB_CADCHACARA ON TB_CREDITO_CLIENTE.ID_CADCHACARA = TB_CADCHACARA.ID ';
strSql:= strSql + ' WHERE TB_CREDITO_CLIENTE.ID_CADCHACARA = :CODCHAC ';
strSql:= strSql + ' ORDER BY TB_CREDITO_CLIENTE.ID DESC ';

ADOCreditoClient.Close;
ADOCreditoClient.SQL.Clear;
ADOCreditoClient.SQL.Add(strSql);
ADOCreditoClient.Parameters[0].Value:= CodChaca;
ADOCreditoClient.Open;

end;

{ TMinhaJanelaHint }

procedure TMinhaJanelaHint.doActivateHint(Sender: TObject);
var
   r : TRect;
   wdth_hint, hght_hint : integer;
begin
// Procedure Criada
   if (Sender is TDbGrid) then
   begin
      // Calculo as dimens�es necess�rias � janela de Hint sendo o limite igual � 1/3 da tela
      r := CalcHintRect((Screen.Width div 3), (Sender as TDbGrid).Hint, nil);
      wdth_hint := r.Right - r.Left;
      hght_hint := r.Bottom - r.Top;

      // Reposiciono a janela do Hint para pr�ximo da posi��o do mouse mantendo o tamanho
      // calculado pela rotina anterior
      r.Left := r.Left + mouse.CursorPos.X + 16;
      r.Top := r.Top + mouse.CursorPos.Y + 16;
      r.Right := r.Left + wdth_hint;
      r.Bottom := r.Top + hght_hint;
      // Executo o procedimento para exibi��o do Hint na tela

      ActivateHint(r,(Sender as TDbGrid).Hint);
   end;
end;

end.
