unit U_ContaReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask;

type
// Metodo Para Execu��es
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

  TF_ContaReceber = class(TForm)
    ImageListHabilitado: TImageList;
    ImageListDesabilitado: TImageList;
    ToolBarCadPadrao: TToolBar;
    btnAutoFiltrar: TToolButton;
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
    edtValorCampo: TEdit;
    btnOk: TBitBtn;
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
    ADOQContaReceber: TADOQuery;
    DSContaReceber: TDataSource;
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
    DBEdit1: TDBEdit;
    edtNumDoc: TDBEdit;
    ComboCliente: TDBLookupComboBox;
    Label3: TLabel;
    lblDtVenc: TLabel;
    edtDTVenc: TDBEdit;
    Label5: TLabel;
    edtNumParcela: TDBEdit;
    Label6: TLabel;
    edtTotParcela: TDBEdit;
    lblVlParcela: TLabel;
    edtValorParcela: TDBEdit;
    Label8: TLabel;
    RichOBS: TDBRichEdit;
    Label9: TLabel;
    grupBoxPGT: TGroupBox;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtDTPGT: TDBEdit;
    edtVLPago: TDBEdit;
    edtFormPGT: TDBEdit;
    Label11: TLabel;
    DBText1: TDBText;
    lblPago: TLabel;
    lblVencido: TLabel;
    lblAPagar: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    ADOQContaReceberID: TAutoIncField;
    ADOQContaReceberSTATUS: TStringField;
    ADOQContaReceberINATIVO: TStringField;
    ADOQContaReceberDATA_INC: TDateTimeField;
    ADOQContaReceberDATA_ALT: TDateTimeField;
    ADOQContaReceberDATA_HAB: TDateTimeField;
    ADOQContaReceberNUMDOC: TStringField;
    ADOQContaReceberID_CLIENTE: TIntegerField;
    ADOQContaReceberID_CLASSCONT: TIntegerField;
    ADOQContaReceberNUMPARCELA: TStringField;
    ADOQContaReceberTOTALPARCELA: TStringField;
    ADOQContaReceberVLTOTAL: TBCDField;
    ADOQContaReceberVALORPARCELA: TBCDField;
    ADOQContaReceberLIQUIDADO: TStringField;
    ADOQContaReceberDTPAGMENTO: TWideStringField;
    ADOQContaReceberFORMA_PGTO: TStringField;
    ADOQContaReceberVLPAGO: TBCDField;
    ADOQContaReceberDATA_VENC: TDateTimeField;
    ADOQContaReceberOBS: TMemoField;
    ComboContabil: TDBLookupComboBox;
    ADOClient: TADOQuery;
    ADOClassContabil: TADOQuery;
    DSClient: TDataSource;
    DSClassCont: TDataSource;
    ADOClientID: TAutoIncField;
    ADOClientSTATUS: TStringField;
    ADOClientINATIVO: TStringField;
    ADOClientDATA_INC: TDateTimeField;
    ADOClientDATA_ALT: TDateTimeField;
    ADOClientDATA_HAB: TDateTimeField;
    ADOClientNOME_CHACARA: TStringField;
    ADOClientNOME_PROPRIETARIO: TStringField;
    ADOClientNUMERO_CHACARA: TIntegerField;
    ADOClientLARGURA: TIntegerField;
    ADOClientCOMPRIMENTO: TIntegerField;
    ADOClientTELEFONE_PROP: TStringField;
    ADOClientCELULAR_PROP: TStringField;
    ADOClientCEP_PROP: TStringField;
    ADOClientENDERECO_PROP: TStringField;
    ADOClientNUMERO_RESID_PROP: TIntegerField;
    ADOClientBAIRRO_PROP: TStringField;
    ADOClientCOMPLEMENTO__PROP: TStringField;
    ADOClientCPF_PROP: TStringField;
    ADOClientEMAIL_PROP: TStringField;
    ADOClientUF: TStringField;
    ADOClientCIDADE_PROP: TStringField;
    ADOClientNUMERO_RELOGIO: TIntegerField;
    ADOClientLEITURA_INICIAL: TIntegerField;
    ADOClientTXRUA: TStringField;
    ADOClientTXLEITURA: TStringField;
    ADOClientTXENERGIA: TStringField;
    Label2: TLabel;
    edtNomeCha: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    edtVlTotal: TDBEdit;
    btnOrdenar: TToolButton;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNumDocEnter(Sender: TObject);
    procedure edtNumDocExit(Sender: TObject);
    procedure ComboClienteEnter(Sender: TObject);
    procedure ComboClienteExit(Sender: TObject);
    procedure edtDTVencEnter(Sender: TObject);
    procedure edtDTVencExit(Sender: TObject);
    procedure edtNumParcelaEnter(Sender: TObject);
    procedure edtNumParcelaExit(Sender: TObject);
    procedure edtTotParcelaEnter(Sender: TObject);
    procedure edtTotParcelaExit(Sender: TObject);
    procedure edtValorParcelaEnter(Sender: TObject);
    procedure edtValorParcelaExit(Sender: TObject);
    procedure edtVlTotalEnter(Sender: TObject);
    procedure edtVlTotalExit(Sender: TObject);
    procedure ComboContabilEnter(Sender: TObject);
    procedure ComboContabilExit(Sender: TObject);
    procedure RichOBSEnter(Sender: TObject);
    procedure RichOBSExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumParcelaKeyPress(Sender: TObject; var Key: Char);
    procedure edtTotParcelaKeyPress(Sender: TObject; var Key: Char);
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
    procedure VerificaSeTaRecebido; // Variavel para verificar se ja foi liquidada a contac
  end;

var
  F_ContaReceber: TF_ContaReceber;

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

implementation

uses
  U_DMPrincipal, U_PesqData, U_Principal, U_GeraParcelas_Pag_Recr;

{$R *.dfm}

procedure TF_ContaReceber.btnAlterarClick(Sender: TObject);
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

  // Abindo as conexoes
  ADOClassContabil.Open;
  ADOClient.Open;
end;

procedure TF_ContaReceber.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navega��o
     Executar:=exibePanels;  // Executando o metodo Exibepanels
  VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
    VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
begin
// IF PARA NAO DEIXAR COM ZERO OU EM BRANCO
   if (Trim(edtTotParcela.Text) = '' ) OR (Trim(edtTotParcela.Text) = '0' ) then
      begin
        edtTotParcela.Text:= '1';
      end;

 // IF PARA NAO DEIXAR COLOCAR VALOR MENOR QUE A PARCELA
    if (Trim(edtTotParcela.Text)) <  (Trim(edtNumParcela.Text)) then
      begin
        edtNumParcela.SetFocus;
        Exit;
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
    pnlFichaCampos.Enabled:= False;

  CheckInativo.Visible:= True;
  VerificaSeTaRecebido;
end;

procedure TF_ContaReceber.btnIncluirClick(Sender: TObject);
begin
   ADOTabela.Active:= True;    //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Open;             //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Insert;           //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
   HabCheckDesBotoes;
   pnlFichaCampos.Enabled:= true;

 // Marcar ou Desmarcar os Checks, com Valores padroes.
    CheckInativo.Checked:= False;
    CheckInativo.Visible:= False;

// Inclusao do Registro
  ADOTabela.FieldByName('STATUS').AsAnsiString:= 'H';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_INC').AsDateTime:= Date;             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('INATIVO').AsAnsiString:= 'N';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_HAB').AsDateTime:= date;        //*********** ADOQUERY = ADOTABELS **************************************

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Inclus�o de Novo Registro';
  Executar:= exibePanels ;

  PageControlCadastro.ActivePage:= TabSheetFicha;   // Colocando a Tela Certa

 // COLOCAR O FOCO NO EDIT DOCUMENTO
 edtNumDoc.SetFocus;

   // Colocando valores padrao para os campos

  ADOTabela.FieldByName('VLTOTAL').AsFloat:= 0.0;
  ADOTabela.FieldByName('VALORPARCELA').AsFloat:= 0.0;
  ADOTabela.FieldByName('VLPAGO').AsFloat:= 0.0;
  ADOTabela.FieldByName('LIQUIDADO').AsString:= 'N';
  ADOTabela.FieldByName('TOTALPARCELA').AsString:= '1';
  ADOTabela.FieldByName('NUMPARCELA').AsString:= '1';
  ADOTabela.FieldByName('DATA_VENC').AsDateTime:= Date+15;

// Abindo as conexoes
  ADOClassContabil.Open;
  ADOClient.Open;
end;

procedure TF_ContaReceber.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;  // Executando o metodo Exibepanels
    VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.btnOkClick(Sender: TObject);
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
  // ABRIR COMPONENTES
  ADOClient.Open;
  ADOClassContabil.Open;
end;

procedure TF_ContaReceber.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
    VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.btnReverterClick(Sender: TObject);
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
   VerificaSeTaRecebido;
end;

procedure TF_ContaReceber.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;


procedure TF_ContaReceber.ComboClienteEnter(Sender: TObject);
begin
ComboCliente.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.ComboClienteExit(Sender: TObject);
begin
ComboCliente.Color:= clWindow;
end;

procedure TF_ContaReceber.ComboContabilEnter(Sender: TObject);
begin
ComboContabil.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.ComboContabilExit(Sender: TObject);
begin
ComboContabil.Color:= clWindow;

  // Colocar Dados Padrao na OBS
if Trim(RichOBS.Text) = '' then
  begin
    RichOBS.Text:= edtNumDoc.Text + '_' + edtNomeCha.Text +'_'+ ComboContabil.Text + '_TLCONTA_RECEBER';
  end;
end;

procedure TF_ContaReceber.Descrio1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY '+DescPrincipal);
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Descri��o] ';
end;

procedure TF_ContaReceber.edtDTVencEnter(Sender: TObject);
begin
edtDTVenc.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtDTVencExit(Sender: TObject);
begin
edtDTVenc.Color:= clWindow;
end;

procedure TF_ContaReceber.edtNumDocEnter(Sender: TObject);
begin
edtNumDoc.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtNumDocExit(Sender: TObject);
begin
edtNumDoc.Color:= clWindow;
end;

procedure TF_ContaReceber.edtNumParcelaEnter(Sender: TObject);
begin
   edtNumParcela.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtNumParcelaExit(Sender: TObject);
begin
   if (Trim(edtNumParcela.Text) = '' ) OR (Trim(edtNumParcela.Text) = '0' ) then
      begin
        edtNumParcela.Text:= '1';
      end;

   edtNumParcela.Color:= clWindow;
end;

procedure TF_ContaReceber.edtNumParcelaKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TF_ContaReceber.edtTotParcelaEnter(Sender: TObject);
begin
  edtTotParcela.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtTotParcelaExit(Sender: TObject);
begin
// IF PARA NAO DEIXAR COM ZERO OU EM BRANCO
   if (Trim(edtTotParcela.Text) = '' ) OR (Trim(edtTotParcela.Text) = '0' ) then
      begin
        edtTotParcela.Text:= '1';
      end;

 // IF PARA NAO DEIXAR COLOCAR VALOR MENOR QUE A PARCELA
    if (Trim(edtTotParcela.Text)) <  (Trim(edtNumParcela.Text)) then
      begin
        edtNumParcela.SetFocus;
      end;

 // VERIFICANDO SE O TOTAL DE PARCELA E MAIOR QUE A PARCELA PARA ABRIR O GERADOR DE PARCELAS

    if (Trim(edtTotParcela.Text)) >  (Trim(edtNumParcela.Text)) then
      begin
     //  MensageAppMesBox:= '   ABRIR  CAIXA  ';
        mensagem:= 'O NUMERO DE PARCELAS E MAIOR QUE O TOTAL DE PARCELAS,'    +#13 +#13
                       +' DESEJA GERAR TODAS AS PARCELAS AUTOMATICO?' +#13;
      // MENSAGEM
          if Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_YESNO+MB_ICONINFORMATION) = mrYes then
            begin
            // DEFININDO SO VALORES PARA AS VARIAVEIS
            // verificando se o campo esta vazio
              if edtNumDoc.Text = '' then
                begin
                  edtNumDoc.Text:= '0';
                  NUMDOC:= edtNumDoc.Text;
                end
              else
                begin
                   NUMDOC:= edtNumDoc.Text;
                end;

            // verificando se o campo esta vazio
              if ComboCliente.Text = '' then
                begin
                  ComboCliente.KeyValue:= 0;
                  IDCLINT:= ComboCliente.KeyValue;
                end
              else
                begin
                   IDCLINT:= ComboCliente.KeyValue;
                end;

            // verificando se o campo esta vazio
              if edtDTVenc.Text = '' then
                begin
                  edtDTVenc.Text:= '0';
                  DTVENCIMENTO:= edtDTVenc.Text;
                end
              else
                begin
                   DTVENCIMENTO:= edtDTVenc.Text;
                end;

            // verificando se o campo esta vazio
              if edtNumParcela.Text = '' then
                begin
                  edtNumParcela.Text:= '0';
                  NUMPARCEL:= edtNumParcela.Text;
                end
              else
                begin
                   NUMPARCEL:= edtNumParcela.Text;
                end;

            // verificando se o campo esta vazio
              if edtTotParcela.Text = '' then
                begin
                  edtTotParcela.Text:= '0';
                  TOTPARCEL:= edtTotParcela.Text;
                end
              else
                begin
                   TOTPARCEL:= edtTotParcela.Text;
                end;

            // verificando se o campo esta vazio
              if edtTotParcela.Text = '' then
                begin
                  edtTotParcela.Text:= '0';
                  TOTPARCEL:= edtTotParcela.Text;
                end
              else
                begin
                   TOTPARCEL:= edtTotParcela.Text;
                end;

            // verificando se o campo esta vazio
              if edtValorParcela.Text = '' then
                begin
                  edtValorParcela.Text:= '0';
                  VLPARCEL:= edtValorParcela.Text;
                end
              else
                begin
                   VLPARCEL:= edtValorParcela.Text;
                end;

             // verificando se o campo esta vazio
              if edtVlTotal.Text = '' then
                begin
                  edtVlTotal.Text:= '0';
                  VLTOTALPARCEL:= edtVlTotal.Text;
                end
              else
                begin
                   VLTOTALPARCEL:= edtVlTotal.Text;
                end;

             // verificando se o campo esta vazio
              if ComboContabil.Text = '' then
                begin
                  ComboContabil.KeyValue:= 0;
                  IDCLASCONT:= ComboContabil.KeyValue;
                end
              else
                begin
                   IDCLASCONT:= ComboContabil.KeyValue;
                end;

             // verificando se o campo esta vazio
              if RichOBS.Text = '' then
                begin
                  RichOBS.Text:= '0';
                  OBS:= RichOBS.Text;
                end
              else
                begin
                   OBS:= RichOBS.Text;
                end;

            // CANCELANDO A OPERACAO DESTA TELA
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

                 ADOTabela.Cancel;

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

            // Definindo o Valor da Variavel pra saber de onde vem
            DEONDEVEM:= 1;

            // MUDANDO A COR DO EDIT
              edtTotParcela.Color:= clWindow;

            // FECHANDO A TELA
               Close;

            // Criar o From Abrir TELA DE GERAR CONTAS A PAGAR E RECEBER
              // Criar o From Cadastro de Chacaras em tempo de Execucao
              try
                F_GeraParcelas_Pag_Recr:= TF_GeraParcelas_Pag_Recr.Create(Application);
                F_GeraParcelas_Pag_Recr.ShowModal;
              finally
                FreeAndNil(F_GeraParcelas_Pag_Recr);
              end;

            end;
      end;
end;

procedure TF_ContaReceber.edtTotParcelaKeyPress(Sender: TObject; var Key: Char);
begin
If not( key in['0'..'9',#08] ) then
  key:=#0;
end;

procedure TF_ContaReceber.edtValorCampoKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       btnOk.Click;
end;

procedure TF_ContaReceber.edtValorParcelaEnter(Sender: TObject);
begin
   edtValorParcela.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtValorParcelaExit(Sender: TObject);
var
VLParc, Tot: Currency;
TotalParce: Integer;
begin
     if (Trim(edtValorParcela.Text) = '') OR (Trim(edtValorParcela.Text) = 'R$ 0,00') then
     begin
       edtValorParcela.SetFocus;
       Exit;
     end;

// PASSANDO O VALOR MULTIPLICADO DA PARCELA COM VALOR DA PARCELA
   VLParc:=  StrToFloat(edtValorParcela.Text);
   TotalParce:= StrToInt(edtTotParcela.Text);
   Tot:=  ( VLParc * TotalParce);
   edtVlTotal.Text:= FormatFloat('##,###,##0.00', Tot);

   edtValorParcela.Color:= clWindow;
end;

procedure TF_ContaReceber.edtVlTotalEnter(Sender: TObject);
begin
  edtVlTotal.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.edtVlTotalExit(Sender: TObject);
begin
  edtVlTotal.Color:= clWindow;
end;

procedure TF_ContaReceber.ExcluirUMRegClick(Sender: TObject);
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

procedure TF_ContaReceber.FormActivate(Sender: TObject);
begin
  ADOTabela:= ADOQContaReceber;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_CONTARECEBER'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Cadastro de Contas a Receber';  // Nome que ira aparecer
  GridLista.DataSource:= DSContaReceber;    //Colocando o Data Source no Grid
  DescPrincipal:= 'NUMDOC';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('CONTRECEBER_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONTRECEBER_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'CONTAS A RECEBER';

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

  // MUDAR O TAMANHO DO FORM
   Height:= 420;
 // Esconder a parte de pagamento
 grupBoxPGT.Visible:= False;
end;

procedure TF_ContaReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // Fechando as Conexoes
  ADOQContaReceber.Close;
  ADOClassContabil.Close;
  ADOClient.Close;
end;

procedure TF_ContaReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_ContaReceber.GridListaDblClick(Sender: TObject);
begin
       // ADOTabela.Locate('ID',ADOTabelaID.Value,[]);
        PageControlCadastro.ActivePage:= TabSheetFicha;
end;

procedure TF_ContaReceber.GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_ContaReceber.GridListaKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_ContaReceber.GridZebrado(RecNo: Integer; Grid: TDBGrid; Rect: TRect;
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

procedure TF_ContaReceber.HabBotoesPesDesCheck;
begin
// Habilitar Botoes de Pesquisa e Desabilitar os Check    // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= true;
    edtValorCampo.Enabled:= True;
    btnOk.Visible:= True;
    RGPesquisaGenerica.Visible:= true;

    CheckInativo.Enabled:= False;
end;

procedure TF_ContaReceber.HabCheckDesBotoes;
begin
// Habilitar os Checks e Desabilitar os Campos de Desquisa   // ####### PROCEDURE PERSONALIZADA ##########################
    edtValorCampo.Visible:= False;
    edtValorCampo.Enabled:= False;
    btnOk.Visible:= False;
    RGPesquisaGenerica.Visible:= False;

    CheckInativo.Enabled:= False;
end;

procedure TF_ContaReceber.Inativo1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY INATIVO');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [INATIVO] ';
end;

procedure TF_ContaReceber.OrdeCodigoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [ID] ';
end;

procedure TF_ContaReceber.OrdeDTAlteracaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_ALT');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Altera��o] ';
end;

procedure TF_ContaReceber.OrdeDTHabilitacaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_HAB');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Habilita��o] ';
end;

procedure TF_ContaReceber.OrdeDTInclusaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_INC');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [Data de Inclus�o] ';
end;

procedure TF_ContaReceber.PesCodigoClick(Sender: TObject);
begin
// Pesquisando por Codigo, colocando a Tela na pagina de Pesquisa e colocando o foco no campo de pesquisa
    WindowState:= wsNormal;
    PageControlCadastro.ActivePageIndex:= 0;   // Colocando a Tela Certa
    edtValorCampo.Clear;
    edtValorCampo.SetFocus;
end;

procedure TF_ContaReceber.PesqPPAlteracaoClick(Sender: TObject);
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
// Abindo as conexoes
  ADOClassContabil.Open;
  ADOClient.Open;
VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.PesqPPInclusaoClick(Sender: TObject);
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

// Abindo as conexoes
  ADOClassContabil.Open;
  ADOClient.Open;
VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.PesqRegBloqueadosClick(Sender: TObject);
begin
//Pesquisa por Registros Bloqueados
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE STATUS = ' + #39 + 'S' + #39;

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
end;

procedure TF_ContaReceber.PesqToRegClick(Sender: TObject);
begin
// Pesquisa todos os Registros
  strSql:= 'SELECT * FROM ' + nomeTabela;
  statBarPadrao.Panels[2].Text:= ' Todos os Registros Selecionados ';      // Mensagem que vai aparecer no statusBar
  ADOTabela.Open;                                                      //*********** ADOQUERY = ADOTABELS **************************************
  Executar:= sentencaSQL;    // Executando o metodo Sentenca SQL
  Executar:= navegacao; // Executando o metodo Navega��o
  Executar:=exibePanels; // Executando o metodo Exibepanels
  Executar:=habilitaBotoes;    // Executando o metodo Habilita Botoes

// Abindo as conexoes
  ADOClassContabil.Open;
  ADOClient.Open;

  VerificaSeTaRecebido;

end;

procedure TF_ContaReceber.PesquisaPorCodigo;
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

procedure TF_ContaReceber.PesquisaPorDescricao;
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

procedure TF_ContaReceber.RGPesquisaGenericaClick(Sender: TObject);
begin
  edtValorCampo.SetFocus;
end;

procedure TF_ContaReceber.RichOBSEnter(Sender: TObject);
begin
  RichOBS.Color:= clMoneyGreen;
end;

procedure TF_ContaReceber.RichOBSExit(Sender: TObject);
begin
  RichOBS.Color:= clWindow;

  // Colocar Dados Padrao na OBS
if Trim(RichOBS.Text) = '' then
  begin
    RichOBS.Text:= edtNumDoc.Text + ' ' + edtNomeCha.Text +' '+ ComboContabil.Text + ' TLCONTA_RECEBER';
  end;
end;

procedure TF_ContaReceber.SetExecutar(const Value: TExecutar);
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

                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;
       end;{$ENDREGION}
  {$ENDREGION} // Fim
  end;
end;

procedure TF_ContaReceber.Status1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY STATUS');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [STATUS] ';
end;

procedure TF_ContaReceber.VerificaSeTaRecebido;
var
Liquidd: string;
begin
 ADOQContaReceber.Open;

 Liquidd:= ADOQContaReceberLIQUIDADO.Value;

  if Liquidd =  'S' then  // Se estiver Pago fazer
     begin  // Ta PAgo
        lblPago.Visible:= True;
        Height:= 519;
        grupBoxPGT.Visible:= True;
        lblVencido.Visible:= False;
        lblAPagar.Visible:= False;

          edtDtVenc.Color:=  clWindow;
          edtDtVenc.Font.Color:= clWindowText;
          edtDtVenc.Font.Size:= 8;
          edtDtVenc.Font.Style:= [];
          lblDtVenc.Font.Style:= [];

          edtValorParcela.Color:=  clWindow;
          edtValorParcela.Font.Color:= clWindowText;
          edtValorParcela.Font.Size:= 8;
          edtValorParcela.Font.Style:= [];
          lblVlParcela.Font.Style:= [];
     end
  else
   if (ADOQContaReceberDATA_VENC.Value < Date) then    // Verificando se esta Vencida
       begin
          lblVencido.Visible:= True;
          lblAPagar.Visible:= False;
          lblPago.Visible:= False;
          Height:= 420;
          grupBoxPGT.Visible:= False;

          edtDtVenc.Color:=  clYellow;
          edtDtVenc.Font.Color:= clRed;
          edtDtVenc.Font.Size:= 10;
          edtDtVenc.Font.Style:= [fsBold];
          lblDtVenc.Font.Style:= [fsBold];

          edtValorParcela.Color:=  clYellow;
          edtValorParcela.Font.Color:= clRed;
          edtValorParcela.Font.Size:= 10;
          edtValorParcela.Font.Style:= [fsBold];
          lblVlParcela.Font.Style:= [fsBold];
       end
   else
     begin
        lblAPagar.Visible:= True;
        lblPago.Visible:= False;
        lblVencido.Visible:= False;
        Height:= 420;
        grupBoxPGT.Visible:= False;

          edtDtVenc.Color:=  clWindow;
          edtDtVenc.Font.Color:= clWindowText;
          edtDtVenc.Font.Size:= 8;
          edtDtVenc.Font.Style:= [];
          lblDtVenc.Font.Style:= [];

          edtValorParcela.Color:=  clWindow;
          edtValorParcela.Font.Color:= clWindowText;
          edtValorParcela.Font.Size:= 8;
          edtValorParcela.Font.Style:= [];
          lblVlParcela.Font.Style:= [];
     end;
end;

end.
