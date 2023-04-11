unit U_LeituraChacaras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask, Datasnap.DBClient;

type
// Metodo Para Execu��es
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

  TF_LeituraChacaras = class(TForm)
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
    btnSeparador3: TToolButton;
    btnGravar: TToolButton;
    btnReverter: TToolButton;
    btnSair: TToolButton;
    btnSeparador4: TToolButton;
    btnImpressao: TToolButton;
    BalloonHintModelo: TBalloonHint;
    imgPop24: TImageList;
    PageControlCadastro: TPageControl;
    PopupFiltroPesq: TPopupMenu;
    PesCodigo: TMenuItem;
    PesqToReg: TMenuItem;
    N1: TMenuItem;
    PesqPPInclusao: TMenuItem;
    PesqPPAlteracao: TMenuItem;
    N2: TMenuItem;
    PesqRegBloqueados: TMenuItem;
    N6: TMenuItem;
    ADOQLeituraChacaras: TADOQuery;
    DSLeituraChacaras: TDataSource;
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
    ADOCadChacara: TADOQuery;
    ADOCadChacaraID: TAutoIncField;
    ADOCadChacaraSTATUS: TStringField;
    ADOCadChacaraINATIVO: TStringField;
    ADOCadChacaraDATA_INC: TDateTimeField;
    ADOCadChacaraDATA_ALT: TDateTimeField;
    ADOCadChacaraDATA_HAB: TDateTimeField;
    ADOCadChacaraNOME_CHACARA: TStringField;
    ADOCadChacaraNOME_PROPRIETARIO: TStringField;
    ADOCadChacaraNUMERO_CHACARA: TIntegerField;
    ADOCadChacaraLARGURA: TIntegerField;
    ADOCadChacaraCOMPRIMENTO: TIntegerField;
    ADOCadChacaraTELEFONE_PROP: TStringField;
    ADOCadChacaraCELULAR_PROP: TStringField;
    ADOCadChacaraCEP_PROP: TStringField;
    ADOCadChacaraENDERECO_PROP: TStringField;
    ADOCadChacaraNUMERO_RESID_PROP: TIntegerField;
    ADOCadChacaraBAIRRO_PROP: TStringField;
    ADOCadChacaraCOMPLEMENTO__PROP: TStringField;
    ADOCadChacaraCPF_PROP: TStringField;
    ADOCadChacaraEMAIL_PROP: TStringField;
    ADOCadChacaraUF: TStringField;
    ADOCadChacaraCIDADE_PROP: TStringField;
    ADOCadChacaraNUMERO_RELOGIO: TIntegerField;
    ADOCadChacaraLEITURA_INICIAL: TIntegerField;
    ADOCadChacaraTXRUA: TStringField;
    ADOCadChacaraTXLEITURA: TStringField;
    ADOCadChacaraTXENERGIA: TStringField;
    DSCadChacara: TDataSource;
    CDSLeitura: TClientDataSet;
    DSCDSLeitura: TDataSource;
    pnlTela: TPanel;
    statBarPadrao: TStatusBar;
    PageControlPrincipal: TPageControl;
    TabSheetFicha: TTabSheet;
    pnlFichaBotoesCheck: TPanel;
    edtValorCampo: TEdit;
    btnOk: TBitBtn;
    RGPesquisaGenerica: TRadioGroup;
    pnlFichaCampos: TPanel;
    StatusBar1: TStatusBar;
    TabSheetTela: TTabSheet;
    Panel1: TPanel;
    GridLista: TDBGrid;
    TabGerarLeituras: TTabSheet;
    pnlGrid: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    edtLeituraAtual: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    lblDigiteaPesquisa: TLabel;
    RadioGroupInteger: TRadioGroup;
    RadioGroupString: TRadioGroup;
    ComboBox1: TComboBox;
    N7: TMenuItem;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    ADOQLeituraChacarasID: TAutoIncField;
    ADOQLeituraChacarasSTATUS: TStringField;
    ADOQLeituraChacarasINATIVO: TStringField;
    ADOQLeituraChacarasDATA_INC: TDateTimeField;
    ADOQLeituraChacarasDATA_ALT: TDateTimeField;
    ADOQLeituraChacarasDATA_HAB: TDateTimeField;
    ADOQLeituraChacarasID_CADCHACARA: TIntegerField;
    ADOQLeituraChacarasMES_REFERENCIA: TStringField;
    ADOQLeituraChacarasLEITURAATUAL: TIntegerField;
    ADOQLeituraChacarasNOME_CHACARA: TStringField;
    ADOQLeituraChacarasNOME_PROPRIETARIO: TStringField;
    ADOQLeituraChacarasNUMERO_CHACARA: TIntegerField;
    ADOQLeituraChacarasVINCULADA: TStringField;
    ADOQLeituraChacarasLEITURAANTERIOR: TIntegerField;
    CDSLeituraID_CADCHACARA: TIntegerField;
    CDSLeituraNOME_CHACARA: TStringField;
    CDSLeituraNOME_PROPRIETARIO: TStringField;
    CDSLeituraNUMERO_CHACARA: TIntegerField;
    CDSLeituraLEITURA_ATUAL: TIntegerField;
    CDSLeituraLEITURA_ANTERIOR: TIntegerField;
    CDSLeituraKW_h: TIntegerField;
    CDSLeituraMES_REF: TStringField;
    ADOQLeituraChacarasKWH: TIntegerField;
    procedure btnSairClick(Sender: TObject);
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
    procedure PesqPPInclusaoClick(Sender: TObject);
    procedure PesqPPAlteracaoClick(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure Descrio1Click(Sender: TObject);
    procedure ExcluirUMRegClick(Sender: TObject);
    procedure GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtLeituraAtualEnter(Sender: TObject);
    procedure edtLeituraAtualExit(Sender: TObject);
    procedure PesCodigoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edtLeituraAtualKeyPress(Sender: TObject; var Key: Char);
    procedure GridListaDblClick(Sender: TObject);
    procedure edtValorCampoEnter(Sender: TObject);
    procedure edtValorCampoExit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure RGPesquisaGenericaExit(Sender: TObject);
    procedure RGPesquisGenericaClick(Sender: TObject);
    procedure edtValorCampoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroupStringClick(Sender: TObject);
    procedure RadioGroupIntegerClick(Sender: TObject);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure OrdeCodigoClick(Sender: TObject);
    procedure Inativo1Click(Sender: TObject);
    procedure OrdeDTInclusaoClick(Sender: TObject);
    procedure OrdeDTAlteracaoClick(Sender: TObject);
    procedure OrdeDTHabilitacaoClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ADOQLeituraChacarasVINCULADAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure GridListaTitleClick(Column: TColumn);
  private
    FExecutar: TExecutar; // do Type EXECUTAR
    procedure SetExecutar(const Value: TExecutar); // do Type EXECUTAR
    procedure PesquisaPorCodigo;   // Fazer Pesquisas por Codigo
    procedure PesquisaPorCodigoDaChacara; // Pesquisa Por Codigo da Chacara
    procedure PesquisaPorNumeroChacara; // Pesquisa pelo numero da chacara
    procedure PesquisaLeituraAtual; // PEsquisa pela Leitura Atual
    procedure NomeChacara; // Pesquisa pelo nome da Chacara
    procedure NomeProprietario; // Pesquisa Por Nome de Proprietario
    procedure PMesReferencia; // Pesquisa por Mes de Referencia
    procedure PreencherComboBoxMEsReferencia; // Preencher o combobox mes referencias
    procedure SimNoLugarS (Sender: TField; var Text: string; DisplayText: String); // Procedure para colocar Descricao completa
    { Private declarations }

  public
    { Public declarations }
    property Executar: TExecutar read FExecutar write SetExecutar;      // do Type EXECUTAR
    Procedure GridZebrado (RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);   // Procedure para Pintar a Grid
    procedure VerificaGrid; // Verificar se esta completo para liberar o botao salvar
  end;

var
  F_LeituraChacaras: TF_LeituraChacaras;

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

// Pegar o Mes de Referencia no Form de Mes Referencia
    MesReferencia: string;

 {VARIAVEIS PARA DEIXAR COMO GENERICA A TELA}
    ADOTabela: TADOQuery;    // Variaveis Para Receber o ADOQuery

implementation

uses
  U_DMPrincipal, U_PesqData, U_Principal, U_MesReferencia;

{$R *.dfm}

procedure TF_LeituraChacaras.ADOQLeituraChacarasVINCULADAGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin  {
if Sender.AsString = 'S' then
  Text := 'SIM'
else
  Text := 'N�O';    }
end;

procedure TF_LeituraChacaras.btnAlterarClick(Sender: TObject);
begin
  lblDigiteaPesquisa.Caption:= 'Digite a Pesquisa';
  ADOTabela.Edit;
  pnlFichaCampos.Enabled:= True;                                 //*********** ADOQUERY = ADOTABELS **************************************
  pnlFichaBotoesCheck.Enabled:= false;
  pnlGrid.Enabled:= True;
// Inclusao do Registro
  ADOTabela.FieldByName('DATA_ALT').AsDateTime:= Date;      //*********** ADOQUERY = ADOTABELS **************************************

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;

  Executar:= exibePanels ;
end;

procedure TF_LeituraChacaras.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navega��o
     Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_LeituraChacaras.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_LeituraChacaras.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
begin
// Para Gravar os dados no banco
   ADOQLeituraChacaras.Close;
   ADOQLeituraChacaras.Open;
   ADOQLeituraChacaras.Insert;

// Verificando o que esta sendo Feito -- Adicionando  ou Editando Para Dar a mensagem
    if ADOTabela.State in [dsInsert] then          //*********** ADOQUERY = ADOTABELS **************************************
       begin
       // GRAVACAO DOS DADOS NO BANCO
        CDSLeitura.First;
           while not CDSLeitura.Eof do  // Fa�a em quanto n�o for o final do Registro
             begin
              ADOQLeituraChacaras.Insert;
               ADOQLeituraChacaras.FieldByName('STATUS').AsAnsiString:= 'H';
               ADOQLeituraChacaras.FieldByName('INATIVO').AsAnsiString:= 'N';
               ADOQLeituraChacaras.FieldByName('DATA_INC').AsDateTime:= Now;
               ADOQLeituraChacaras.FieldByName('DATA_ALT').AsDateTime:= Now;
               ADOQLeituraChacaras.FieldByName('DATA_HAB').AsDateTime:= Now;
               ADOQLeituraChacaras.FieldByName('ID_CADCHACARA').AsInteger:= CDSLeitura.FieldByName('ID_CADCHACARA').AsInteger;
               ADOQLeituraChacaras.FieldByName('MES_REFERENCIA').AsAnsiString:= CDSLeitura.FieldByName('MES_REF').AsAnsiString;
               ADOQLeituraChacaras.FieldByName('NOME_CHACARA').AsAnsiString:= CDSLeitura.FieldByName('NOME_CHACARA').AsAnsiString;
               ADOQLeituraChacaras.FieldByName('NOME_PROPRIETARIO').AsAnsiString:= CDSLeitura.FieldByName('NOME_PROPRIETARIO').AsAnsiString;
               ADOQLeituraChacaras.FieldByName('NUMERO_CHACARA').AsInteger:= CDSLeitura.FieldByName('NUMERO_CHACARA').AsInteger;
               ADOQLeituraChacaras.FieldByName('LEITURAATUAL').AsInteger:= CDSLeitura.FieldByName('LEITURA_ATUAL').AsInteger;
               ADOQLeituraChacaras.FieldByName('LEITURAANTERIOR').AsInteger:= CDSLeitura.FieldByName('LEITURA_ANTERIOR').AsInteger;
               ADOQLeituraChacaras.FieldByName('KWH').AsInteger:= CDSLeitura.FieldByName('KW_h').AsInteger;
               ADOQLeituraChacaras.FieldByName('VINCULADA').AsAnsiString:= 'N';
               ADOQLeituraChacaras.Post;
               CDSLeitura.Next;
             end;

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
        ///
           pnlFichaCampos.Enabled:= False;
        end;

{Habilita��o e Exibicao de Objetos}
   Executar:= habilitaBotoes;

   pnlGrid.Enabled:= False;
   edtLeituraAtual.Enabled:= False; // Bloquear o Edit
   pnlFichaBotoesCheck.Enabled:= True;

end;

procedure TF_LeituraChacaras.btnIncluirClick(Sender: TObject);
var
qry: TADOQuery;   // Para criar slq para verificar qantidade de registro
QTDERegistroTab, ContRegistros: Integer; // Para receber quantidade de Registro da Tabela Cadastro de Chacara --- Para receber aquantidade de registro no for
Nomchacara, ProChacara: string; // Para Receber o Nome da Chacara e Proprietario
IDChacara, Numchacara, NRelogio, LInicial, PrimeiroReg, QTDEReg: Integer; // Codigo Chacara - Numero da Chacara - Numero do Relogio - Leitura Inicial -- Para saber se ��e o primeiro registro
CodLeituraAtual: Integer; // Pegar o Codigo do ultimo registro da tabela TB_LEITURACHACARAS
MESREF: string; // Pegar Mes de Referencia
begin
// Criar AdoQuery para saber se Tem Registro para fazer alteracoes
{$REGION 'FAZENDO A VERIFICACAO SE TEM REGISTRO PARA ALTERAR'} // Inicio
  try
  // Criando Um ADOQUERY Em Tempo de Execu��o
    qry:= TADOQuery.Create(nil);
    qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
  // Usando o ADOQUERY Criado
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM TB_CADCHACARA where TXENERGIA = ''S''');
    qry.Open;
    QTDEReg:=  qry.RecordCount;
     if qry.RecordCount = 0 then // Nao Tem Registro
        begin
          mensagem:= ' Nao tem registro para realizar a operacao. ' + #13    // #13 Pular Linha   ' INFORMA��O '
                    +' Nao Tem chacara com registro para fazer Leitura de Energia ' + #13
                    +' Caso esteja Errado, precisa acessar o cadastro de Chacara e editar a opcao de Leitura da Energia ' ;
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONWARNING);   // Variavel Configuravel
          Exit;
        end
  finally
     FreeAndNil(qry);
  end;  {$ENDREGION} // Fim


 lblDigiteaPesquisa.Caption:= 'Digite a Pesquisa';
 PageControlPrincipal.Pages[2].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 2;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[1].TabVisible:= False;

 F_MesReferencia.ShowModal; // Chamando a Tela de Mes de Referencia

statBarPadrao.Panels[2].Text:= ' Quantidade de Registros: ' + IntToStr(QTDEReg); // Colocar a quantidade de registro disponivel para alteracao, no rodape
ADOTabela.Open;
pnlGrid.Enabled:= True;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  Executar:= exibePanels ;
  btnGravar.Visible:= False;

{$REGION 'VERIFICANDO SE E O PRIMEIRO REGISTRO DA TABELA DE LEITURA'} // Inicio
// Verificar se ��e a primeira vez que fara a leitura para pegar a leitura inicial
// Criar AdoQuery para saber se ��e o primeiro registro da tabela
  try
  // Criando Um ADOQUERY Em Tempo de Execu��o
    qry:= TADOQuery.Create(nil);
    qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
  // Usando o ADOQUERY Criado
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('SELECT * FROM TB_LEITURACHACARAS');
    qry.Open;

     if qry.RecordCount = 0 then // Nao Tem Registro
        begin
          PrimeiroReg:= 1; // Se ��e o Primeiro Registro? Sim
        end
     else
        begin
          PrimeiroReg:= 2; // Se ��e o Primeiro Registro? Nao

{$REGION 'PEGAR A ULTIMA LEITURA '} // Inicio
// Criar AdoQuery para Pegar a ultima Leitura
          try
          // Criando Um ADOQUERY Em Tempo de Execu��o
            qry:= TADOQuery.Create(nil);
            qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
          // Usando o ADOQUERY Criado
            qry.Close;
            qry.SQL.Clear;
            qry.SQL.Add('select max(ID) CODIGO from TB_LEITURACHACARAS');
            qry.Open;
            CodLeituraAtual:= qry.Fields[0].Value;
          finally
            FreeAndNil(qry);
          end;  {$ENDREGION} // Fim

{$REGION 'PEGAR OS DADOS DO ULTIMO REGISTRO'} // Inicio
// Criar AdoQuery para Pegar a ultima Leitura
          try
          // Criando Um ADOQUERY Em Tempo de Execu��o
            qry:= TADOQuery.Create(nil);
            qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
          // Usando o ADOQUERY Criado
            qry.Close;
            qry.SQL.Clear;
            qry.SQL.Add('SELECT * FROM TB_LEITURACHACARAS WHERE ID = '+ #39 + IntToStr(CodLeituraAtual) + #39);
            qry.Open;
            MESREF:= qry.Fields[7].Value;
          finally
            FreeAndNil(qry);
          end;  {$ENDREGION} // Fim
        end;
  finally
    FreeAndNil(qry);
  end;  {$ENDREGION} // Fim

{$REGION 'COMECANDO A INSERCAO DE REGISTRO NO CLIENTDATASET'} // Inicio

       CDSLeitura.Close;
       CDSLeitura.Open;
 while not ADOCadChacara.Eof do
   begin
    if ADOCadChacaraTXENERGIA.Value = 'S' then          // verificando se no cadastro cobra a energia ou nao
      begin
      IDChacara:= ADOCadChacaraID.AsInteger;
      Nomchacara:= ADOCadChacaraNOME_CHACARA.AsAnsiString;
      ProChacara:= ADOCadChacaraNOME_PROPRIETARIO.AsAnsiString;
      Numchacara:= ADOCadChacaraNUMERO_CHACARA.AsInteger;
      LInicial:= ADOCadChacaraLEITURA_INICIAL.AsInteger;

       CDSLeitura.Append;
         CDSLeitura.FieldByName('ID_CADCHACARA').AsInteger:= IDChacara;
         CDSLeitura.FieldByName('NOME_CHACARA').AsAnsiString:= Nomchacara;
         CDSLeitura.FieldByName('NOME_PROPRIETARIO').AsAnsiString:= ProChacara;
         CDSLeitura.FieldByName('NUMERO_CHACARA').AsInteger:= Numchacara;
         CDSLeitura.FieldByName('MES_REF').AsAnsiString:= MesReferencia;

        if PrimeiroReg = 1 then
          begin
             CDSLeitura.FieldByName('LEITURA_ANTERIOR').AsInteger:= LInicial;
          end
        else
          begin
   //Pegar a Ultima leitura lida
   // Criar AdoQuery para Pegar a ultima Leitura
          try
          // Criando Um ADOQUERY Em Tempo de Execu��o
            qry:= TADOQuery.Create(nil);
            qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
          // Usando o ADOQUERY Criado
            qry.Close;
            qry.SQL.Clear;
            qry.SQL.Add('select * from TB_LEITURACHACARAS where mes_referencia like :MESRef  AND ID_CADCHACARA = :IDCadCha');
            qry.Parameters[0].Value:=  MESREF;
            qry.Parameters[1].Value:= IDChacara;
            qry.Open;

            CDSLeitura.FieldByName('LEITURA_ANTERIOR').AsInteger:= qry.FieldByName('LEITURAATUAL').Value;
          finally
            FreeAndNil(qry);
          end;
          end;

       CDSLeitura.Post;
      end;  {$ENDREGION} // Fim

   ADOCadChacara.Next;
   CDSLeitura.First;
   CDSLeitura.IndexFieldNames:='NUMERO_CHACARA;NOME_CHACARA'; // Organizar dados no ClientDataSet
   VerificaGrid;
   end;
end;

procedure TF_LeituraChacaras.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_LeituraChacaras.btnOkClick(Sender: TObject);
begin
 // Pesquisar por codigo No Botao
     // Pesquisa por Codigo de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
       // Codigo do Registro da Tabela
         if RadioGroupInteger.ItemIndex = 0 then
            begin
              PesquisaPorCodigo;
            end;
       // Codigo da Chacara
         if RadioGroupInteger.ItemIndex = 1 then
            begin
              PesquisaPorCodigoDaChacara;
            end;
       // Numero da Chacara
         if RadioGroupInteger.ItemIndex = 2 then
            begin
              PesquisaPorNumeroChacara;
            end;
       // Leitura Atual
         if RadioGroupInteger.ItemIndex = 3 then
            begin
              PesquisaLeituraAtual;
            end;
       end;
 // Pesquisa por Nome de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 1 then
       begin
       // Pesquisa Nome Chacara
         if RadioGroupString.ItemIndex = 0 then
          begin
            NomeChacara;
          end;
       // Pesquisa Nome Proprietario
         if RadioGroupString.ItemIndex = 1 then
          begin
            NomeProprietario;
          end;
       // Pesquisa Mes Referencia
         if RadioGroupString.ItemIndex = 2 then
          begin
             PMesReferencia;
          end;
       end;
RGPesquisaGenerica.ItemIndex:= -1;
  PageControlPrincipal.Pages[1].TabVisible:= True;
  PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
  PageControlPrincipal.Pages[2].TabVisible:= False;

   edtValorCampo.Visible:= False;
   lblDigiteaPesquisa.Visible:= False;
   btnOk.Visible:= False;

end;

procedure TF_LeituraChacaras.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_LeituraChacaras.btnReverterClick(Sender: TObject);
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
        //btnExcluir.Enabled:= false;
        btnGravar.Enabled:= false;
        btnReverter.Enabled:= false;
        btnSair.Enabled:=true;

       ADOTabela.Cancel;                             //*********** ADOQUERY = ADOTABELS **************************************

// Limpando o Status Bar
     statBarPadrao.Panels[0].Text:= '';
     statBarPadrao.Panels[1].Text:= '';
     statBarPadrao.Panels[2].Text:= '';
     statBarPadrao.Panels[3].Text:= '';

    ADOTabela.Active:= false;    // Fechar o Component           //*********** ADOQUERY = ADOTABELS **************************************
    pnlGrid.Enabled:= False;
    edtLeituraAtual.Enabled:= False; // Bloquear o Edit
    pnlFichaBotoesCheck.Enabled:= True;
    pnlFichaCampos.Enabled:= False;
end;

procedure TF_LeituraChacaras.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;

procedure TF_LeituraChacaras.ComboBox1Enter(Sender: TObject);
begin
   ComboBox1.Color:= clMoneyGreen;
end;

procedure TF_LeituraChacaras.ComboBox1Exit(Sender: TObject);
begin
  ComboBox1.Color:= clWindow;
  edtValorCampo.Visible:= True;
  edtValorCampo.Text:= ComboBox1.Items[ComboBox1.ItemIndex];
  ComboBox1.Visible:= False;
end;

procedure TF_LeituraChacaras.DBEdit10Enter(Sender: TObject);
begin
  DBEdit10.Color:= clMoneyGreen;
end;

procedure TF_LeituraChacaras.DBEdit10Exit(Sender: TObject);
begin
  DBEdit10.Color:= clWindow;
end;

procedure TF_LeituraChacaras.DBEdit14Enter(Sender: TObject);
begin
   DBEdit14.Color:= clMoneyGreen;
end;

procedure TF_LeituraChacaras.DBEdit14Exit(Sender: TObject);
begin
  DBEdit14.Color:= clWindow;
end;

procedure TF_LeituraChacaras.DBGrid1DblClick(Sender: TObject);
begin
  edtLeituraAtual.Enabled:= True;
  edtLeituraAtual.SetFocus;
  CDSLeitura.Edit;

  VerificaGrid;
end;

procedure TF_LeituraChacaras.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_LeituraChacaras.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_LeituraChacaras.DBGrid1TitleClick(Column: TColumn);
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

procedure TF_LeituraChacaras.Descrio1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY NOME_PROPRIETARIO');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [NOME PROPRIETARIO] ';
end;

procedure TF_LeituraChacaras.edtLeituraAtualEnter(Sender: TObject);
begin
    edtLeituraAtual.Color:= clMoneyGreen; // Mudando a Cor de Fundo
end;

procedure TF_LeituraChacaras.edtLeituraAtualExit(Sender: TObject);
begin
// Fazendo uma verificacao, se o campo leitura atual ��e menor que a ultima leitura
  if CDSLeituraLEITURA_ATUAL.Value < CDSLeituraLEITURA_ANTERIOR.Value then
    begin
     // ShowMessage('A Leitura ATUAL Esta Menor que A ULTIMA LEITURA');
     // edtLeituraAtual.Clear;
       Exit;
    end
  else
    begin
      CDSLeituraKW_h.Value:= (CDSLeituraLEITURA_ATUAL.Value - CDSLeituraLEITURA_ANTERIOR.Value);
      CDSLeitura.Post;
      edtLeituraAtual.Color:= clInfoBk; // Voltando a cor original
      VerificaGrid;
    end;
end;

procedure TF_LeituraChacaras.edtLeituraAtualKeyPress(Sender: TObject;
  var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
      begin
       Perform(WM_NEXTDLGCTL,0,0);
       DBGrid1DblClick(Sender);
      end;

end;

procedure TF_LeituraChacaras.edtValorCampoEnter(Sender: TObject);
begin
edtValorCampo.Color:= clMoneyGreen;
end;

procedure TF_LeituraChacaras.edtValorCampoExit(Sender: TObject);
begin
edtValorCampo.Color:= clWindow;
end;

procedure TF_LeituraChacaras.edtValorCampoKeyPress(Sender: TObject;
  var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       btnOk.Click;
end;

procedure TF_LeituraChacaras.ExcluirUMRegClick(Sender: TObject);
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

      Executar:= habilitaBotoes;
      Executar:= exibePanels;

end;

procedure TF_LeituraChacaras.FormActivate(Sender: TObject);
begin
  ADOTabela:= ADOQLeituraChacaras;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_LEITURACHACARAS'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Leitura do Relogio das Chacaras';  // Nome que ira aparecer
  //DescPrincipal:= 'DESC_USUARIO';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('LEITURACHACARA_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'LEITURAS DAS CHACARAS';

// Evento do Form Active
    Executar:= exibeBotoes;
    PageControlPrincipal.ActivePageIndex:= 2;    // Definindo qual aba abre por padrao
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
    btnGravar.Enabled:=           False;
    btnReverter.Enabled:=         False;
    btnSair.Enabled:=         True;
    btnImpressao.Enabled:=        False;

  ADOCadChacara.Open;
  PageControlPrincipal.Pages[0].TabVisible:= False;
  PageControlPrincipal.Pages[1].TabVisible:= False;

end;

procedure TF_LeituraChacaras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    ADOCadChacara.Close;
    CDSLeitura.Close;
end;

procedure TF_LeituraChacaras.GridListaDblClick(Sender: TObject);
begin
 PageControlPrincipal.Pages[0].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[1].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;

        ADOTabela.Locate('ID',ADOQLeituraChacarasID.Value,[]);
        PageControlCadastro.ActivePage:= TabSheetFicha;
end;

procedure TF_LeituraChacaras.GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_LeituraChacaras.GridListaTitleClick(Column: TColumn);
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

procedure TF_LeituraChacaras.GridZebrado(RecNo: Integer; Grid: TDBGrid; Rect: TRect;
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

procedure TF_LeituraChacaras.Inativo1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY MES_REFERENCIA');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [MES DE REFERENCIA] ';
end;

procedure TF_LeituraChacaras.PMesReferencia;
begin
 DescPrincipal:= '';
 DescPrincipal:= 'MES_REFERENCIA';

   edtValorCampo.SetFocus;
   statBarPadrao.Panels[2].Text:= ' Mes Referencia Cont�m: '+ edtValorCampo.Text;
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE '+ DescPrincipal + ' LIKE ' +#39+'%'+ edtValorCampo.Text+'%'+#39;

   if edtValorCampo.Text <> '' then
      begin
          statBarPadrao.Panels[2].Text:=' Mes de Referencia ';
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

procedure TF_LeituraChacaras.PreencherComboBoxMEsReferencia;
var
  qry: TADOQuery;
begin
  edtValorCampo.Visible:= False;
  ComboBox1.Visible:= True;
   try
    // Criando Um ADOQUERY Em Tempo de Execu��o
       qry:= TADOQuery.Create(nil);
       qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
    // Usando o ADOQUERY Criado
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(' select mes_referencia from TB_LEITURACHACARAS GROUP BY mes_referencia ');
      qry.Open;
        if (qry.RecordCount <> 0) then
          begin
            ComboBox1.Items.Clear;

            while not qry.Eof do
              begin
                ComboBox1.Items.Add(qry.Fields[0].Value);
                qry.Next;
              end;
          end;
   finally
      FreeAndNil(qry);
   end;
   ComboBox1.SetFocus;
end;

procedure TF_LeituraChacaras.N3Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY LEITURAATUAL');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [LEITURA ATUAL] '
end;

procedure TF_LeituraChacaras.N4Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY NOME_CHACARA');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [NOME DA CHACARA] ';
end;

procedure TF_LeituraChacaras.N6Click(Sender: TObject);
begin
 PageControlPrincipal.Pages[1].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;

//Pesquisa por Registros Nao Vinculados Vinculados
   strSql:= (' select ID, DATA_INC, DATA_ALT, DATA_HAB, ID_CADCHACARA, MES_REFERENCIA, LEITURAATUAL, NOME_CHACARA, NOME_PROPRIETARIO, NUMERO_CHACARA, LEITURAANTERIOR, KWH, ');
   strSql:= strSql + (' case VINCULADA when ''S'' then ''SIM'' ELSE ''NAO'' end AS VINCULADA, ');
   strSql:= strSql + (' case STATUS when ''H'' then ''HABILITADO'' ELSE ''DESABILITADO'' end AS STATUS, ');
   strSql:= strSql + (' case INATIVO when ''S'' then ''SIM'' ELSE ''NAO'' end AS INATIVO ');
   strSql:=  strSql + (' FROM ' + nomeTabela);
   strSql:= strSql + ' WHERE VINCULADA = ' + #39 + 'N' + #39;

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
   statBarPadrao.Panels[2].Text:= 'Nao Vinculada a Uma Conta de Energia ';
end;

procedure TF_LeituraChacaras.NomeChacara;
begin
 DescPrincipal:= '';
 DescPrincipal:= 'NOME_CHACARA';

   edtValorCampo.SetFocus;
   statBarPadrao.Panels[2].Text:= ' Nome Chacara Cont�m: '+ edtValorCampo.Text;
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE '+ DescPrincipal + ' LIKE ' +#39+'%'+ edtValorCampo.Text+'%'+#39;

   if edtValorCampo.Text <> '' then
      begin
          statBarPadrao.Panels[2].Text:=' Nome Chacara ';
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

procedure TF_LeituraChacaras.NomeProprietario;
begin
 DescPrincipal:= '';
 DescPrincipal:= 'NOME_PROPRIETARIO';

   edtValorCampo.SetFocus;
   statBarPadrao.Panels[2].Text:= ' Nome Proprietario Cont�m: '+ edtValorCampo.Text;
   strSql:= 'SELECT * FROM ' + nomeTabela;
   strSql:= strSql + ' WHERE '+ DescPrincipal + ' LIKE ' +#39+'%'+ edtValorCampo.Text+'%'+#39;

   if edtValorCampo.Text <> '' then
      begin
          statBarPadrao.Panels[2].Text:=' Nome Proprietario';
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

procedure TF_LeituraChacaras.OrdeCodigoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [CODIGO DO REGISTRO] ';
end;

procedure TF_LeituraChacaras.OrdeDTAlteracaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY VINCULADA');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [VINCULADA] ';
end;

procedure TF_LeituraChacaras.OrdeDTHabilitacaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY NUMERO_CHACARA');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [NUMERO DA CHACARA] ';
end;

procedure TF_LeituraChacaras.OrdeDTInclusaoClick(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY DATA_INC');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [DATA INCLUSAO] ';
end;

procedure TF_LeituraChacaras.PesCodigoClick(Sender: TObject);
begin
  PageControlPrincipal.Pages[0].TabVisible:= True;
  PageControlPrincipal.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
  PageControlPrincipal.Pages[1].TabVisible:= False;
  PageControlPrincipal.Pages[2].TabVisible:= False;
end;

procedure TF_LeituraChacaras.PesqPPAlteracaoClick(Sender: TObject);
begin
 PageControlPrincipal.Pages[1].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;

// Pesquisa Por Data de Altera��o de Registros
  tarefa:= 'Pesquisa de Registros Alterados no Periodo';
  F_PesqData.ShowModal;
         //Chamando a Tela de Pesquisa

    if tarefaClick = 1 then     // Para tirar o erro ao sair da tela de Pesquisa por DAta
    begin
      statBarPadrao.Panels[2].Text:= ' Registros Alterados Entre: '+ valdata1 + ' e ' + valdata2;
       strSql:= (' select ID, DATA_INC, DATA_ALT, DATA_HAB, ID_CADCHACARA, MES_REFERENCIA, LEITURAATUAL, NOME_CHACARA, NOME_PROPRIETARIO, NUMERO_CHACARA, LEITURAANTERIOR, KWH, ');
       strSql:= strSql + (' case VINCULADA when ''S'' then ''SIM'' ELSE ''NAO'' end AS VINCULADA, ');
       strSql:= strSql + (' case STATUS when ''H'' then ''HABILITADO'' ELSE ''DESABILITADO'' end AS STATUS, ');
       strSql:= strSql + (' case INATIVO when ''S'' then ''SIM'' ELSE ''NAO'' end AS INATIVO ');
       strSql:=  strSql + (' FROM ' + nomeTabela);
      strSql:= strSql + ' where DATA_ALT >= ' + #39 + VAL1 + #39;
      strSql:= strSql + ' AND DATA_ALT <= ' + #39 + VAL2 + #39;

      Executar:= sentencaSQL;
      Executar:= exibePanels;
      Executar:= navegacao;
      Executar:= habilitaBotoes;
    end;
    statBarPadrao.Panels[2].Text:= ' Por Periodo de Alteracao ';
end;

procedure TF_LeituraChacaras.PesqPPInclusaoClick(Sender: TObject);
begin
 PageControlPrincipal.Pages[1].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;
// Pesquisa por data de inclusao
   tarefa:= 'Pesquisa de Registros incuidos no Periodo';
    F_PesqData.ShowModal;

      statBarPadrao.Panels[2].Text:= ' Registros Incluidos Entre: '+ valdata1 + ' e ' + valdata2;
         strSql:= (' select ID, DATA_INC, DATA_ALT, DATA_HAB, ID_CADCHACARA, MES_REFERENCIA, LEITURAATUAL, NOME_CHACARA, NOME_PROPRIETARIO, NUMERO_CHACARA, LEITURAANTERIOR, KWH, ');
         strSql:= strSql + (' case VINCULADA when ''S'' then ''SIM'' ELSE ''NAO'' end AS VINCULADA, ');
         strSql:= strSql + (' case STATUS when ''H'' then ''HABILITADO'' ELSE ''DESABILITADO'' end AS STATUS, ');
         strSql:= strSql + (' case INATIVO when ''S'' then ''SIM'' ELSE ''NAO'' end AS INATIVO ');
         strSql:=  strSql + (' FROM ' + nomeTabela);
      strSql:= strSql + ' where DATA_INC >= ' + #39 + VAL1 + #39;
      strSql:= strSql + ' AND DATA_INC <= ' + #39 + VAL2 + #39;

      Executar:= sentencaSQL;
      Executar:= exibePanels;
      Executar:= navegacao;
      Executar:= habilitaBotoes;
 statBarPadrao.Panels[2].Text:= ' Pesquisa Por Periodo de Inclusao ';
end;

procedure TF_LeituraChacaras.PesqRegBloqueadosClick(Sender: TObject);
begin
 PageControlPrincipal.Pages[1].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;

//Pesquisa por Registros Vinculados
   strSql:= (' select ID, DATA_INC, DATA_ALT, DATA_HAB, ID_CADCHACARA, MES_REFERENCIA, LEITURAATUAL, NOME_CHACARA, NOME_PROPRIETARIO, NUMERO_CHACARA, LEITURAANTERIOR, KWH, ');
   strSql:= strSql + (' case VINCULADA when ''S'' then ''SIM'' ELSE ''NAO'' end AS VINCULADA, ');
   strSql:= strSql + (' case STATUS when ''H'' then ''HABILITADO'' ELSE ''DESABILITADO'' end AS STATUS, ');
   strSql:= strSql + (' case INATIVO when ''S'' then ''SIM'' ELSE ''NAO'' end AS INATIVO ');
   strSql:=  strSql + (' from TB_LEITURACHACARAS WHERE VINCULADA = ' + #39 + 'S' + #39);

   Executar:= sentencaSQL;
   Executar:= exibePanels;
   Executar:= navegacao;
   Executar:= habilitaBotoes;
   statBarPadrao.Panels[2].Text:= ' Contas Vinculadas a Uma Conta de Energia ';
end;

procedure TF_LeituraChacaras.PesqToRegClick(Sender: TObject);
begin
// Pesquisa todos os Registros
   strSql:= (' select ID, DATA_INC, DATA_ALT, DATA_HAB, ID_CADCHACARA, MES_REFERENCIA, LEITURAATUAL, NOME_CHACARA, NOME_PROPRIETARIO, NUMERO_CHACARA, LEITURAANTERIOR, KWH, ');
   strSql:= strSql + (' case VINCULADA when ''S'' then ''SIM'' ELSE ''NAO'' end AS VINCULADA, ');
   strSql:= strSql + (' case STATUS when ''H'' then ''HABILITADO'' ELSE ''DESABILITADO'' end AS STATUS, ');
   strSql:= strSql + (' case INATIVO when ''S'' then ''SIM'' ELSE ''NAO'' end AS INATIVO ');
   strSql:=  strSql + (' FROM ' + nomeTabela);
  //strSql:= 'SELECT * FROM ' + nomeTabela;
  statBarPadrao.Panels[2].Text:= ' Todos os Registros Selecionados ';      // Mensagem que vai aparecer no statusBar
  ADOTabela.Open;                                                      //*********** ADOQUERY = ADOTABELS **************************************
  Executar:= sentencaSQL;    // Executando o metodo Sentenca SQL
  Executar:= navegacao; // Executando o metodo Navega��o
  Executar:=exibePanels; // Executando o metodo Exibepanels
  Executar:=habilitaBotoes;    // Executando o metodo Habilita Botoes
 PageControlPrincipal.Pages[1].TabVisible:= True;
 PageControlPrincipal.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
 PageControlPrincipal.Pages[0].TabVisible:= False;
 PageControlPrincipal.Pages[2].TabVisible:= False;

end;

procedure TF_LeituraChacaras.PesquisaLeituraAtual;
var                                     // Pesquisa padrao por Codigo
  converte: string;       // Pesquisar por codigo
  x: integer;             // Pesquisar por codigo
begin
    strSql:= 'SELECT * FROM ' + nomeTabela;
    strSql:= strSql + ' WHERE LEITURAATUAL = '+ #39 + edtValorCampo.Text + #39;

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
            statBarPadrao.Panels[2].Text:=' Pesquisa por Leitura Atual, C�digo =  '+edtValorCampo.Text;
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

procedure TF_LeituraChacaras.PesquisaPorCodigo;
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

procedure TF_LeituraChacaras.PesquisaPorCodigoDaChacara;
var                                     // Pesquisa padrao por Codigo
  converte: string;       // Pesquisar por codigo
  x: integer;             // Pesquisar por codigo
begin
    strSql:= 'SELECT * FROM ' + nomeTabela;
    strSql:= strSql + ' WHERE ID_CADCHACARA = '+ #39 + edtValorCampo.Text + #39;

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
            statBarPadrao.Panels[2].Text:=' Pesquisa por Registro da Chacara, C�digo =  '+edtValorCampo.Text;
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

procedure TF_LeituraChacaras.PesquisaPorNumeroChacara;
var                                     // Pesquisa padrao por Codigo
  converte: string;       // Pesquisar por codigo
  x: integer;             // Pesquisar por codigo
begin
    strSql:= 'SELECT * FROM ' + nomeTabela;
    strSql:= strSql + ' WHERE NUMERO_CHACARA = '+ #39 + edtValorCampo.Text + #39;

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
            statBarPadrao.Panels[2].Text:=' Pesquisa por Numero da Chacara, C�digo =  '+edtValorCampo.Text;
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

procedure TF_LeituraChacaras.RGPesquisGenericaClick(Sender: TObject);
begin
     // Pesquisa por Codigo de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
         RadioGroupInteger.Visible:= True;
         RadioGroupInteger.SetFocus;
         RadioGroupString.Visible:= False;

         RGPesquisaGenerica.Visible:= False;
         edtValorCampo.Visible:= False;
         lblDigiteaPesquisa.Visible:= False;
         btnOk.Visible:= False;
       end;
 // Pesquisa por Nome de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 1 then
       begin
         RadioGroupString.Visible:= True;
         RadioGroupString.SetFocus;
         RadioGroupInteger.Visible:= False;

         RGPesquisaGenerica.Visible:= False;
         edtValorCampo.Visible:= False;
         lblDigiteaPesquisa.Visible:= False;
         btnOk.Visible:= False;
       end;
end;

procedure TF_LeituraChacaras.RadioGroupIntegerClick(Sender: TObject);
begin
// Pesquisa por Codigo de Usuario que Contem
    if RadioGroupInteger.ItemIndex = 0 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupInteger.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Codigo do Registro';
       end;
// Pesquisa por Nome de Usuario que Contem
    if RadioGroupInteger.ItemIndex = 1 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupInteger.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Codigo da Chacara';
       end;
// Pesquisa por Nome de Usuario que Contem
    if RadioGroupInteger.ItemIndex = 2 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupInteger.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Numero da Chacara';
       end;
// Pesquisa por Nome de Usuario que Contem
    if RadioGroupInteger.ItemIndex = 3 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupInteger.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Leitura Atual';
       end;
   edtValorCampo.Clear;
   edtValorCampo.Visible:= True;
   lblDigiteaPesquisa.Visible:= True;
   btnOk.Visible:= True;
end;

procedure TF_LeituraChacaras.RadioGroupStringClick(Sender: TObject);
var
  qry: TADOQuery;
begin
// Pesquisa Nome d\ Chacara
    if RadioGroupString.ItemIndex = 0 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupString.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Nome da Chacara';
       end;
// Pesquisa Proprietario
    if RadioGroupString.ItemIndex = 1 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupString.Visible:= False;
         edtValorCampo.SetFocus;
         lblDigiteaPesquisa.Caption:= 'Pesquisa Por Nome do Proprietario';
       end;
// Pesquisa Mes Referencia
    if RadioGroupString.ItemIndex = 2 then
       begin
         RGPesquisaGenerica.Visible:= True;
         edtValorCampo.Visible:= True;
         lblDigiteaPesquisa.Visible:= True;
         btnOk.Visible:= True;
         RadioGroupString.Visible:= False;
         edtValorCampo.SetFocus;
         PreencherComboBoxMEsReferencia;
         lblDigiteaPesquisa.Caption:= 'Escolha o Mes de Referencia';
       end;
   edtValorCampo.Clear;
   edtValorCampo.Visible:= True;
   lblDigiteaPesquisa.Visible:= True;
   btnOk.Visible:= True;
end;

procedure TF_LeituraChacaras.RGPesquisaGenericaExit(Sender: TObject);
begin
// Pesquisa por Codigo de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 0 then
       begin
         lblDigiteaPesquisa.Caption:= 'Digite o Codigo da Chacara';
       end;
// Pesquisa por Nome de Usuario que Contem
    if RGPesquisaGenerica.ItemIndex = 1 then
       begin
         lblDigiteaPesquisa.Caption:= 'Digite A Pesquisa';
       end;
end;

procedure TF_LeituraChacaras.SetExecutar(const Value: TExecutar);
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
                        end
                 else
                        begin
                            btnAlterar.Enabled:=      True;
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
                btnImpressao.Visible:=  False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNNS' then      //2
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnImpressao.Visible:=  False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNSN' then       //3
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNNNNSS' then        //4
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNSNN' then        //5
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSNS' then     //6
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNNNSSN' then       //7
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSSS' then        //8
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNNN' then     //9
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnImpressao.Visible:=  False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNNS' then     //10
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNSNN' then     //11
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=          True;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNSNNSN' then      //12
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=         True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNSS' then     //13
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=         True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNSNS' then    //14
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnImpressao.Visible:=           True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=          True;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNSNSSN' then       //15
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NNSNSSS' then       //16
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNNNN' then       //17
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNNS' then      //18
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSN' then      //19
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNSNN' then           //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:=      True;
            end;

         if modoEdicao = 'NSNNSNS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNNNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNNS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSN' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSS' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNSNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSNS' then         //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSN' then           //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSS' then             //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNSN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNSS' then           //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSN' then             //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNN' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                ////CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNS' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSN' then             //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSSNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSNS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSN' then         //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNNNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSN' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSS' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNSNN' then           //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSNNN' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNNS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSS' then          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSSNN' then         //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSNS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSN' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SSNSNNN' then      ///          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SSNSNNS' then                 //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSN' then       //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSS' then         //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSSNN' then           //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSNS' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSN' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNNNNN' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNNS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNSN' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNNSS' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNN' then              //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNS' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSN' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSS' then              //80
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSNNN' then              //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNNS' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNSN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

           if modoEdicao = 'NSNSNSS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSSNN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSNS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSSN' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSNSSSS' then           //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NNSSNNN' then         //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNSSNNS' then          //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NNSSNSN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSNSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSSNN' then             //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSNS' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSSN' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNSSSSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNNSNNN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNNSNNS' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSN' then         //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSS' then          //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSSNN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSNS' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSSN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

        if modoEdicao = 'NNNSSSS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSSSNNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSNNS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSS' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSSNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NSSSSNS' then         //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;                 ;
              end;

          if modoEdicao = 'NSSSSSN' then            //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSSSSSS' then           //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNNNN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNNS' then            //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNNSN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNSS' then         //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNSNN' then        //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNSNS' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSNSSN' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSNSSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSSNNN' then           //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSSNNS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSNSN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

            if modoEdicao = 'SSSSNSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;

                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //
                //
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNS' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnImpressao.Visible:=        True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSN' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnImpressao.Visible:=        True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                btnImpressao.Visible:=        True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;
       end;{$ENDREGION}
  {$ENDREGION} // Fim
  end;
end;

procedure TF_LeituraChacaras.SimNoLugarS(Sender: TField; var Text: string;
  DisplayText: String);
begin
 if Sender.AsString = 'S' then
    Text := 'Sim'
 else
    Text := 'N�o';
end;

procedure TF_LeituraChacaras.Status1Click(Sender: TObject);
begin
   ADOTabela.Close;
   ADOTabela.SQL.Clear;
   ADOTabela.SQL.Add (strSql);
   ADOTabela.SQL.Add ('ORDER BY ID_CADCHACARA');
   ADOTabela.OPEN;
   btnOrdenar.Hint:= ' Ordenar Registro [CODIGO DA CHACARA] ';
end;

procedure TF_LeituraChacaras.VerificaGrid;
begin
  CDSLeitura.First;
 {while not CDSLeitura.Eof do     // Lucas Criou
  begin
  if CDSLeituraLEITURA_ATUAL.IsNull = False then
    begin
      btnGravar.Visible:= True;
    end
  else
    begin
        btnGravar.Visible:= False;
        Exit;
    end;
   CDSLeitura.Next;
  end;  }

 while not CDSLeitura.Eof do     // Ivan Cesar do grupo do skype de delphi
  begin
    btnGravar.Visible:= not(CDSLeituraLEITURA_ATUAL.IsNull);
    if not btnGravar.Visible then
     Exit;
    CDSLeitura.Next;
  end;
end;

end.
