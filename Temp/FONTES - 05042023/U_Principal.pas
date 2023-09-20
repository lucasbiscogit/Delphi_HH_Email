unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.DBCGrids, System.Math, Vcl.ToolWin,
  System.ImageList, Vcl.ImgList;

type
  TF_Principal = class(TForm)
    con_Geral: TADOConnection;
    AdoQ_Pesquisa: TADOQuery;
    DS_Pesquisa: TDataSource;
    statPesquisa: TStatusBar;
    pnlTopo: TPanel;
    pnlImagemLogado: TPanel;
    pgc_Geral: TPageControl;
    SheetPesquisa: TTabSheet;
    pnlCabecPesquisa: TPanel;
    pnlBotoesPesquisa: TPanel;
    edtPesquisa: TEdit;
    pnlGridPEsquisa: TPanel;
    GridLista: TDBGrid;
    pnlBotoes: TPanel;
    btnExcluirEmail: TButton;
    btnAddEmail: TButton;
    btnADDNovoHH: TButton;
    pnlModoPesquisa: TPanel;
    RGPesquisaGeral: TRadioGroup;
    SheetExclusao: TTabSheet;
    lblPesquisa: TLabel;
    lblPesquisaDesc: TLabel;
    RadioButonRecebe: TRadioButton;
    RadioButonNRecebe: TRadioButton;
    pnlEdicao: TPanel;
    SheetAdd: TTabSheet;
    pnlAddConta: TPanel;
    btn3: TButton;
    pnlManual: TPanel;
    pnlPorCliente: TPanel;
    pnlBaseOutro: TPanel;
    SheetArquivos: TTabSheet;
    AdoQ_PesquisaID: TIntegerField;
    strngfldAdoQ_PesquisaNome: TStringField;
    strngfldAdoQ_PesquisaEmail: TStringField;
    strngfldAdoQ_PesquisaHH_Excel: TStringField;
    strngfldAdoQ_PesquisaGCarteira: TStringField;
    strngfldAdoQ_PesquisaRecebe: TStringField;
    lbl: TLabel;
    edtCod: TDBEdit;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblemail: TLabel;
    edtEmail: TDBEdit;
    lblArqExcel: TLabel;
    lblCarteira: TLabel;
    pnlCabecalho: TPanel;
    lblPesquisaADD: TLabel;
    CheckRecebe: TDBCheckBox;
    lblCliente: TLabel;
    ComboArqExcel: TComboBox;
    ComboCarteira: TComboBox;
    ComboCliente: TComboBox;
    AdoQ_PesquisaCliente: TStringField;
    pnlBotoesManipulacao: TPanel;
    imgHabilitado: TImageList;
    imgDesabilitado: TImageList;
    tlbCadPadrao: TToolBar;
    btnSeparador2: TToolButton;
    btnAdicionar: TToolButton;
    btnEditar: TToolButton;
    btnSeparador3: TToolButton;
    btnSalvar: TToolButton;
    btnCancelar: TToolButton;
    btnSeparador4: TToolButton;
    btn4: TToolButton;
    btn5: TToolButton;
    btn6: TToolButton;
    RadioGroupADDContas: TRadioGroup;
    pnlGridEdicao: TPanel;
    GridListaAdicao: TDBGrid;
    AdoQ_ADD: TADOQuery;
    DS_ADD: TDataSource;
    AdoQ_ADDID: TAutoIncField;
    strngfldAdoQ_ADDNome: TStringField;
    strngfldAdoQ_ADDEmail: TStringField;
    strngfldAdoQ_ADDHH_Excel: TStringField;
    strngfldAdoQ_ADDGrupo_Carteira: TStringField;
    AdoQ_ADDONOFF: TBooleanField;
    strngfldAdoQ_ADDCliente: TStringField;
    dbedtID: TDBEdit;
    lblemailpc: TLabel;
    lbl1: TLabel;
    lblclientepc: TLabel;
    lblClientepc1: TLabel;
    ComboClientePC: TComboBox;
    edtNomePC: TEdit;
    edtEmailPc: TEdit;
    edtEmailMod: TEdit;
    edtNomeMod: TEdit;
    lblemailpc1: TLabel;
    lblclientepc2: TLabel;
    lbl11: TLabel;
    dbedtID1: TDBEdit;
    lblClientepc11: TLabel;
    ComboUsuario: TComboBox;
    lblemailmod: TLabel;
    pnlArqCadastrados: TPanel;
    GridArqCadastrados: TDBGrid;
    btnArqCadastrado: TButton;
    SheetArqEmail: TTabSheet;
    pnlArqEmail: TPanel;
    MemoEmail: TMemo;
    btnArqEmail: TButton;
    DS_Grid: TDataSource;
    AdoQ_Grid: TADOQuery;
    strngfldAdoQ_GridHH_Excel: TStringField;
    strngfldAdoQ_GridGrupo_Carteira: TStringField;
    strngfldAdoQ_GridCliente: TStringField;
    pnlEmailEnviadoBotoes: TPanel;
    lblArqExcelEmail: TLabel;
    ComboEmailEnviado: TComboBox;
    lblCarteiraEmail: TLabel;
    ComboCarteiraEmailEnviado: TComboBox;
    tlbCadPadrao1: TToolBar;
    btnSeparador21: TToolButton;
    btn51: TToolButton;
    btnVoltar: TToolButton;
    btn61: TToolButton;
    btnStatusConexao: TToolButton;
    btnSeparador31: TToolButton;
    btnSalvar1: TToolButton;
    btn41: TToolButton;
    btnCancelar1: TToolButton;
    btnSeparador41: TToolButton;
    lblConexao: TLabel;
    btn7: TToolButton;
    btn8: TToolButton;
    pnlEmailPesq: TPanel;
    pnlManualADDNovos: TPanel;
    lbl2: TLabel;
    lblNome1: TLabel;
    lblemail1: TLabel;
    lblArqExcel1: TLabel;
    lblCarteira1: TLabel;
    lblCliente1: TLabel;
    dbedtID2: TDBEdit;
    dbedtNome: TDBEdit;
    dbedtEmail: TDBEdit;
    checkONOFF: TDBCheckBox;
    pnlAddManualOpcao: TPanel;
    RadioGroupArquiExist: TRadioButton;
    RadioGroupArquiNovo: TRadioButton;
    dbedtHHExcel: TDBEdit;
    dbedtCarteira: TDBEdit;
    dbedtGrupo_Carteira: TDBEdit;
    RadioButtonManual: TRadioButton;
    RadioButtonPorCliente: TRadioButton;
    RadioButtonBaseOutUser: TRadioButton;
    btnPesqMemo: TButton;
    EditPesqMemo: TEdit;
    lblPesMemo: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    pnlPesqExcluir: TPanel;
    pnlGridEscluir: TPanel;
    edtPesqExluir: TEdit;
    ComboExcluirHH: TComboBox;
    ComboExcluirCliente: TComboBox;
    ComboExcluirCarteira: TComboBox;
    pnlSemEmail: TPanel;
    ComboExcluirClienteCL: TComboBox;
    ComboExcluirArqExcCL: TComboBox;
    ComboExcluirGCarteiraCL: TComboBox;
    GridExcluir: TDBGrid;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    btnExcluir: TButton;
    pnlOpcaoExcluir: TPanel;
    rbExcluirEmail: TRadioButton;
    rbExcluirArquivo: TRadioButton;
    lbl131: TLabel;
    lbl141: TLabel;
    lbl151: TLabel;
    btnExcluir1: TButton;
    AdoQ_Excluir: TADOQuery;
    IntegerField1: TIntegerField;
    strngfld: TStringField;
    strngfld1: TStringField;
    strngfld2: TStringField;
    strngfld3: TStringField;
    strngfld4: TStringField;
    strngfld5: TStringField;
    DS_Excluir: TDataSource;
    GridExcluir1: TDBGrid;
    btnVoltarEmails: TButton;
    SheetEdicao: TTabSheet;
    pnlOpcaoExcluir1: TPanel;
    rbVoltarEmail1: TRadioButton;
    rbVoltarArquivo1: TRadioButton;
    pnlLabelMudado: TPanel;
    lblMudanca: TLabel;
    lblMudancaRegistros: TLabel;
    pnlRegistrosMudanca: TPanel;
    lblMudancaRegistrosAntes: TLabel;
    lblAntesMudanca: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnPesqMemoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdoQ_PesquisaONOFFGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure RGPesquisaGeralClick(Sender: TObject);
    procedure GridListaMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);

    procedure RadioButonRecebeClick(Sender: TObject);
    procedure RadioButonNRecebeClick(Sender: TObject);
    procedure btnExcluirEmailClick(Sender: TObject);
    procedure btnAddEmailClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure ComboArqExcelExit(Sender: TObject);
    procedure RadioGroupADDContasClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure edtNomeEnter(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtEmailEnter(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure ComboArqExcelEnter(Sender: TObject);
    procedure ComboCarteiraEnter(Sender: TObject);
    procedure ComboCarteiraExit(Sender: TObject);
    procedure ComboClienteEnter(Sender: TObject);
    procedure ComboClienteExit(Sender: TObject);
    procedure CheckRecebeEnter(Sender: TObject);
    procedure CheckRecebeExit(Sender: TObject);
    procedure edtNomeModEnter(Sender: TObject);
    procedure edtNomeModExit(Sender: TObject);
    procedure edtEmailModEnter(Sender: TObject);
    procedure edtEmailModExit(Sender: TObject);
    procedure ComboClientePCEnter(Sender: TObject);
    procedure ComboClientePCExit(Sender: TObject);
    procedure edtNomePCEnter(Sender: TObject);
    procedure edtNomePCExit(Sender: TObject);
    procedure edtEmailPcEnter(Sender: TObject);
    procedure edtEmailPcExit(Sender: TObject);
    procedure ComboUsuarioEnter(Sender: TObject);
    procedure ComboUsuarioExit(Sender: TObject);
    procedure ComboUsuarioSelect(Sender: TObject);
    procedure SheetArquivosShow(Sender: TObject);
    procedure btnArqCadastradoClick(Sender: TObject);
    procedure imgVoltarClick(Sender: TObject);
    procedure btnArqEmailClick(Sender: TObject);
    procedure SheetArqEmailShow(Sender: TObject);
    procedure GridArqCadastradosCellClick(Column: TColumn);
    procedure GridArqCadastradosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure GridArqCadastradosTitleClick(Column: TColumn);
    procedure ComboEmailEnviadoExit(Sender: TObject);
    procedure ComboEmailEnviadoEnter(Sender: TObject);
    procedure ComboCarteiraEmailEnviadoEnter(Sender: TObject);
    procedure ComboCarteiraEmailEnviadoExit(Sender: TObject);
    procedure btnSalvar1Click(Sender: TObject);
    procedure btnCancelar1Click(Sender: TObject);
    procedure btnStatusConexaoClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure RadioGroupArquiExistClick(Sender: TObject);
    procedure RadioGroupArquiNovoClick(Sender: TObject);
    procedure dbedtHHExcelEnter(Sender: TObject);
    procedure dbedtHHExcelExit(Sender: TObject);
    procedure dbedtCarteiraEnter(Sender: TObject);
    procedure dbedtCarteiraExit(Sender: TObject);
    procedure dbedtGrupo_CarteiraEnter(Sender: TObject);
    procedure dbedtGrupo_CarteiraExit(Sender: TObject);
    procedure dbedtNomeEnter(Sender: TObject);
    procedure dbedtNomeExit(Sender: TObject);
    procedure dbedtEmailEnter(Sender: TObject);
    procedure dbedtEmailExit(Sender: TObject);
    procedure checkONOFFEnter(Sender: TObject);
    procedure checkONOFFExit(Sender: TObject);
    procedure ComboEmailEnviadoSelect(Sender: TObject);
    procedure ComboCarteiraEmailEnviadoSelect(Sender: TObject);
    procedure EditPesqMemoEnter(Sender: TObject);
    procedure EditPesqMemoExit(Sender: TObject);
    procedure SheetPesquisaShow(Sender: TObject);
    procedure EditPesqMemoKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButtonManualClick(Sender: TObject);
    procedure RadioButtonPorClienteClick(Sender: TObject);
    procedure RadioButtonBaseOutUserClick(Sender: TObject);
    procedure edtPesqExluirKeyPress(Sender: TObject; var Key: Char);
    procedure ComboExcluirClienteSelect(Sender: TObject);
    procedure ComboExcluirHHSelect(Sender: TObject);
    procedure ComboExcluirCarteiraSelect(Sender: TObject);
    procedure rbExcluirEmailClick(Sender: TObject);
    procedure rbExcluirArquivoClick(Sender: TObject);
    procedure rbVoltarEmailClick(Sender: TObject);
    procedure edtPesqExluirEnter(Sender: TObject);
    procedure edtPesqExluirExit(Sender: TObject);
    procedure ComboExcluirClienteEnter(Sender: TObject);
    procedure ComboExcluirClienteExit(Sender: TObject);
    procedure ComboExcluirHHEnter(Sender: TObject);
    procedure ComboExcluirHHExit(Sender: TObject);
    procedure ComboExcluirCarteiraEnter(Sender: TObject);
    procedure ComboExcluirCarteiraExit(Sender: TObject);
    procedure ComboExcluirClienteCLEnter(Sender: TObject);
    procedure ComboExcluirClienteCLExit(Sender: TObject);
    procedure ComboExcluirArqExcCLEnter(Sender: TObject);
    procedure ComboExcluirArqExcCLExit(Sender: TObject);
    procedure ComboExcluirGCarteiraCLEnter(Sender: TObject);
    procedure ComboExcluirGCarteiraCLExit(Sender: TObject);
    procedure ComboExcluirClienteCLSelect(Sender: TObject);
    procedure ComboExcluirArqExcCLSelect(Sender: TObject);
    procedure ComboExcluirGCarteiraCLSelect(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnExcluir1Click(Sender: TObject);
    procedure GridListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridExcluirDblClick(Sender: TObject);
    procedure btnVoltarEmailsClick(Sender: TObject);
    procedure GridExcluirDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridExcluir1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridListaAdicaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    procedure BuscaDados; // Buscar os dados no banco pesquisa
    procedure BuscaDadosExcluir; // Buscar os dados no banco pesquisa Para Excluir
    Function GetNetUserName: string;   //Para Capturar o usu�rio Logado no Windows
    Procedure GridZebrado (RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);   // Procedure para Pintar a Grid
    function ValidarEmail (email: string): Boolean; //para validar email
    procedure TabEnter (auxForm: TForm; var key: char);  { Procedimento para trocar Table por Enter}

  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

// Variavel para usar na busca
  VarBusca: string;

// Para mensagem box
   mensagem, MensageAppMesBox: string;

// Variavel para cancelar oprecao sem dar o erro do campo
// N para iniciar a variavel e nao clicou em nada
// S se clicou em algum botao que � para sair do campo sem o erro;
  sairsemerro: string;

// Variavel para pegar o conteudo digitado e levar para inclusao
  Strinpesq: string;

//Para receber o nome do usuario na parte quando for inserir com usuario modelo
  UserMod: string;

  clientee: string;

//Para Armazenar o usuario Conectado
  UsuarioConexao: string;

implementation

{$R *.dfm}

{ TForm1 }

procedure TF_Principal.AdoQ_PesquisaONOFFGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  text:= EmptyStr;
end;

procedure TF_Principal.btnPesqMemoClick(Sender: TObject);
var
  i: Integer;
  NomePesq: string;
begin
  NomePesq:= EditPesqMemo.Text;
  MensageAppMesBox:= 'E-mails que Receber�o o Hora-Hora';

  for i := 0 to MemoEmail.Lines.Count - 1 do
    begin
      if Pos(NomePesq, MemoEmail.Lines[i]) > 0 then
        begin
           mensagem:= ' Texto Encontrado na, ' + #13
                            +'Linha: ' +IntToStr(i+1) ;
           Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);

        // Jogar dados no rodape
           statPesquisa.Panels[1].Text:= mensagem;
        end;
    end;
end;

procedure TF_Principal.btn3Click(Sender: TObject);
begin
  pgc_Geral.Pages[0].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
end;

procedure TF_Principal.btnAddEmailClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[2].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[5].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 2;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= True;

 //Pegando o e-mail inicialmente digitado e colocando j� pra inser��o.
   case RGPesquisaGeral.ItemIndex of
      0: begin    //Todos
           lblPesquisaADD.Caption:= Strinpesq;

         end;
      1: begin     // Nome
            lblPesquisaADD.Caption:= 'NOME: ' + Strinpesq;
            edtNome.Text:= edtPesquisa.Text;

         end;
      2: begin     //Email
            lblPesquisaADD.Caption:= 'E-MAIL: ' + Strinpesq;
         end;
      3: begin    //hh_Excel
            lblPesquisaADD.Caption:= 'HH_EXCEL: ' + Strinpesq;

         end;
      4: begin     // Carteira
            lblPesquisaADD.Caption:= 'CARTEIRA: ' + Strinpesq;

         end;
   end;
//   RadioGroupADDContas.SetFocus;
end;

procedure TF_Principal.btnAdicionarClick(Sender: TObject);
var
  qry: TADOQuery;
  strSql: string;
begin
  sairsemerro := 'N';

  btnVoltar.Enabled:= False;
  btnCancelar1.Enabled:= False;

{$REGION 'Se estiver adicionando Manual'}
if btnAdicionar.Tag = 1 then
  begin
    pnlManual.Enabled:= True;
    edtNome.SetFocus;

    ComboArqExcel.Items.Clear;
    ComboCarteira.Items.Clear;
    ComboCliente.Items.Clear;

  //Controle de botoes
    btnAdicionar.Enabled:= False;
    btnEditar.Enabled:= False;
    btnSalvar.Enabled:=True;
    btnCancelar.Enabled:= True;
    RadioGroupADDContas.Visible:= False;

    AdoQ_Pesquisa.Active:= True;  // Ativando o Componente ADO
    AdoQ_ADD.Open;          // Abrindo o Componente
    AdoQ_ADD.Insert;         // Colocando em modo de insercao

    MensageAppMesBox:= 'Adicionando E-mails no HH';

  // Criando Um ADOQUERY Em Tempo de Execu��o
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

  // Criando o Select
      strSql:= 'select distinct  HH_Excel from hh.Lista_Email order by HH_Excel';

      with qry do
           begin
             Close;
             SQL.Clear;
             SQL.Add(strSql);
             Open;
             First;
             if (qry.RecordCount = 0) then // Se n�o encontrar dados
                begin
                   mensagem:= ' N�o Existe Arquivo de Excel, ' + #13
                            +'Favor Verificar com Ad. Do Banco.';
                   Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                end
             else
               begin
                  while not qry.Eof do
                    begin
                       ComboArqExcel.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
               end;
           end;

      CheckRecebe.Checked:= True;
      AdoQ_ADD.FieldByName('ONOFF').Value:= 1;

  //Pegando o e-mail inicialmente digitado e colocando j� pra inser��o.
     case RGPesquisaGeral.ItemIndex of
        0: begin    //Todos
             lblPesquisaADD.Caption:= Strinpesq;
           end;
        1: begin     // Nome
              edtNome.Text:= Strinpesq;
           end;
        2: begin     //Email
              edtEmail.Text:= Strinpesq;
           end;
        3: begin    //hh_Excel

           end;
        4: begin     // Carteira

           end;
     end;
  end;
{$ENDREGION 'Se estiver adicionando Manual'}

{$REGION 'Se estiver adicionando Manual e Novo Arquivo'}
if btnAdicionar.Tag = 12 then
  begin
    pnlManualADDNovos.Enabled:= True;
    dbedtNome.SetFocus;

  //Controle de botoes
    btnAdicionar.Enabled:= False;
    btnEditar.Enabled:= False;
    btnSalvar.Enabled:=True;
    btnCancelar.Enabled:= True;
    RadioGroupADDContas.Visible:= False;

    AdoQ_Pesquisa.Active:= True;  // Ativando o Componente ADO
    AdoQ_ADD.Open;          // Abrindo o Componente
    AdoQ_ADD.Insert;         // Colocando em modo de insercao

    MensageAppMesBox:= 'Adicionando E-mails no HH';

  // Criando Um ADOQUERY Em Tempo de Execu��o
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

  // Criando o Select
      strSql:= 'select distinct  HH_Excel from hh.Lista_Email order by HH_Excel';

      with qry do
           begin
             Close;
             SQL.Clear;
             SQL.Add(strSql);
             Open;
             First;
             if (qry.RecordCount = 0) then // Se n�o encontrar dados
                begin
                   mensagem:= ' N�o Existe Arquivo de Excel, ' + #13
                            +'Favor Verificar com Ad. Do Banco.';
                   Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                end
             else
               begin
                  while not qry.Eof do
                    begin
                       ComboArqExcel.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
               end;
           end;

      CheckRecebe.Checked:= True;
      AdoQ_ADD.FieldByName('ONOFF').Value:= 1;

  //Pegando o e-mail inicialmente digitado e colocando j� pra inser��o.
     case RGPesquisaGeral.ItemIndex of
        0: begin    //Todos
             lblPesquisaADD.Caption:= Strinpesq;
           end;
        1: begin     // Nome
              edtNome.Text:= Strinpesq;
           end;
        2: begin     //Email
              edtEmail.Text:= Strinpesq;
           end;
        3: begin    //hh_Excel

           end;
        4: begin     // Carteira

           end;
     end;
  end;
{$ENDREGION 'Se estiver adicionando Manual e Novo Arquivo'}

{$REGION 'Se for por Cliente'}
 if btnAdicionar.Tag = 2 then
   begin
     AdoQ_ADD.Close;
     RadioGroupADDContas.Enabled:= True;
     ComboClientePC.Clear;

      //Controle de botoes
      btnAdicionar.Enabled:= False;
      btnEditar.Enabled:= False;
      btnSalvar.Enabled:=True;
      btnCancelar.Enabled:= True;

      RadioGroupADDContas.Visible:= False;
      pnlPorCliente.Enabled:= True;
      edtNomePC.SetFocus;

       //Pegando o e-mail inicialmente digitado e colocando j� pra inser��o.
   case RGPesquisaGeral.ItemIndex of
      0: begin    //Todos
           edtNomePC.Text:= Strinpesq;
         end;
      1: begin     // Nome
            edtNomePC.Text:= Strinpesq;
         end;
      2: begin     //Email
            edtEmailPc.Text:= Strinpesq;
         end;
      3: begin    //hh_Excel

         end;
      4: begin     // Carteira

         end;
   end;


    try
    // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
      strSql:= 'select distinct Cliente from hh.Lista_Email order by cliente';

    with qry do
        begin
          Close;
          SQL.Clear;
          SQL.Add(strSql);
          Open;
          First;
          if (qry.RecordCount = 0) then // Se n�o encontrar dados
             begin
                mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                         +'Favor Verificar com Ad. Do Banco.';
                Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
             end
          else
            begin
               while not qry.Eof do
                 begin
                    ComboClientePC.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
                    qry.Next;
                 end;
            end;
        end;
    finally
      FreeAndNil(qry);
    end;


   end;
{$ENDREGION 'Se for por Cliente'}

{$REGION 'Se for por Copia de outro usuario'}
 if btnAdicionar.Tag = 3 then
   begin
      RadioGroupADDContas.Visible:= False;
      pnlBaseOutro.Enabled:= True;

   //Controle de botoes
     btnAdicionar.Enabled:= False;
     btnEditar.Enabled:= False;
     btnSalvar.Enabled:=True;
     btnCancelar.Enabled:= True;
     RadioGroupADDContas.Visible:= False;

      try
      // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
        qry:= TADOQuery.Create(nil);
        qry.Connection:= con_Geral;

      // Criando o Select
        strSql:= 'select distinct Email from hh.Lista_Email order by Email';

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 while not qry.Eof do
                   begin
                      ComboUsuario.Items.Add(qry.FieldByName('email').AsAnsiString);
                      qry.Next;
                   end;
              end;
          end;
      finally
        FreeAndNil(qry);
      end;



   end;
{$ENDREGION 'Se for por Copia de outro usuario'}

end;

procedure TF_Principal.btnArqCadastradoClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[3].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[5].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 3;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= True;
end;

procedure TF_Principal.btnArqEmailClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[4].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[5].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 4;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= True;
end;

procedure TF_Principal.btnCancelar1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TF_Principal.btnCancelarClick(Sender: TObject);
begin
  btnVoltar.Enabled:= True;
  btnCancelar1.Enabled:= True;

{$REGION 'Se estiver adicionando Manual'}
  if btnAdicionar.Tag = 1 then
    begin
    //sair do campo sem erro
      sairsemerro:= 'S';

    //  Verificar se tem dados para mostrar o botao editar
    if AdoQ_ADD.RecordCount <> 0 then
      begin
         btnEditar.Enabled:= True;
         edtNome.Clear;
         edtEmail.Clear;
      end
    else
      begin
         btnEditar.Enabled:= False;
         AdoQ_ADD.Close;
      end;

    //Controle de botoes
      btnAdicionar.Enabled:= True;
      btnSalvar.Enabled:=False;
      btnCancelar.Enabled:= False;

      RadioGroupADDContas.Visible:= True;
      tlbCadPadrao.setfocus;
      pnlManual.Enabled:= False;
      pnlGridEdicao.Enabled:= False;
    end;
{$ENDREGION 'Se estiver adicionando Manual'}

{$REGION 'Se estiver adicionando Manual e Arquivo Novo'}
  if btnAdicionar.Tag = 12 then
    begin
    //sair do campo sem erro
      sairsemerro:= 'S';

    //  Verificar se tem dados para mostrar o botao editar
    if AdoQ_ADD.RecordCount <> 0 then
      begin
         btnEditar.Enabled:= True;
         edtNome.Clear;
         edtEmail.Clear;
      end
    else
      begin
         btnEditar.Enabled:= False;
         AdoQ_ADD.Close;
      end;

    //Controle de botoes
      btnAdicionar.Enabled:= True;
      btnSalvar.Enabled:=False;
      btnCancelar.Enabled:= False;

      RadioGroupADDContas.Visible:= True;
      tlbCadPadrao.setfocus;
      pnlManual.Enabled:= False;
      pnlGridEdicao.Enabled:= False;
    end;
{$ENDREGION 'Se estiver adicionando Manual e Arquivo Novo'}

{$REGION 'Se for por Cliente'}
 if btnAdicionar.Tag = 2 then
   begin
       RadioGroupADDContas.Visible:= True;

      //Controle de botoes
      btnAdicionar.Enabled:= True;
      btnSalvar.Enabled:=False;
      btnCancelar.Enabled:= False;

      pnlPorCliente.Enabled:= False;
      pnlGridEdicao.Enabled:= False;

      //  Verificar se tem dados para mostrar o botao editar
      if AdoQ_ADD.RecordCount <> 0 then
        begin
           btnEditar.Enabled:= True;
           edtNome.Clear;
           edtEmail.Clear;
        end
      else
        begin
            btnEditar.Enabled:= False;
            AdoQ_ADD.Close;
        end;
   end;
{$ENDREGION 'Se for por Cliente'}

{$REGION 'Se for por Copia de outro usuario'}
 if btnAdicionar.Tag = 3 then
   begin
       RadioGroupADDContas.Visible:= True;

      //Controle de botoes
      btnAdicionar.Enabled:= True;
      btnSalvar.Enabled:=False;
      btnCancelar.Enabled:= False;
      //  Verificar se tem dados para mostrar o botao editar
      if AdoQ_ADD.RecordCount <> 0 then
        begin
           btnEditar.Enabled:= True;
           edtNome.Clear;
           edtEmail.Clear;
        end
      else
        begin
            btnEditar.Enabled:= False;
            AdoQ_ADD.Close;
        end;
   end;
{$ENDREGION 'Se for por Copia de outro usuario'}

end;

procedure TF_Principal.btnEditarClick(Sender: TObject);
begin

  btnVoltar.Enabled:= False;
  btnCancelar1.Enabled:= False;

{$REGION 'Se estiver adicionando Manual'}
  if btnAdicionar.Tag = 1 then
    begin
    //Controle de botoes
      btnAdicionar.Enabled:= False;
      btnEditar.Enabled:= False;
      btnSalvar.Enabled:=True;
      btnCancelar.Enabled:= True;
      RadioGroupADDContas.Visible:= False;

      pnlManual.Enabled:= True;
      pnlGridEdicao.Enabled:= True;
    end;
{$ENDREGION 'Se estiver adicionando Manual'}

{$REGION 'Se estiver adicionando Manual e novo Arquivo'}
  if btnAdicionar.Tag = 12 then
    begin
    //Controle de botoes
      btnAdicionar.Enabled:= False;
      btnEditar.Enabled:= False;
      btnSalvar.Enabled:=True;
      btnCancelar.Enabled:= True;
      RadioGroupADDContas.Visible:= False;

      pnlManualADDNovos.Enabled:= True;
      pnlGridEdicao.Enabled:= True;
    end;
{$ENDREGION 'Se estiver adicionando Manual e novo Arquivo'}

{$REGION 'Se for por Cliente'}
 if btnAdicionar.Tag = 2 then
   begin
   //Controle de botoes
     btnAdicionar.Enabled:= False;
     btnEditar.Enabled:= False;
     btnSalvar.Enabled:=True;
     btnCancelar.Enabled:= True;

     RadioGroupADDContas.Visible:= False;
     pnlGridEdicao.Enabled:= True;
     pnlPorCliente.Enabled:= True;
   end;
{$ENDREGION 'Se for por Cliente'}

{$REGION 'Se for por Copia de outro usuario'}
 if btnAdicionar.Tag = 3 then
   begin
      RadioGroupADDContas.Visible:= False;

   //Controle de botoes
     btnAdicionar.Enabled:= False;
     btnEditar.Enabled:= False;
     btnSalvar.Enabled:=True;
     btnCancelar.Enabled:= True;
   end;
{$ENDREGION 'Se for por Copia de outro usuario'}


end;

procedure TF_Principal.btnExcluir1Click(Sender: TObject);
var
  strSQL: string;
begin
  {
   if edtPesqExluir.Text <> '' then
      begin
         strSQL:= ' UPDATE hh.Lista_Email ';
         strSQL:= strSQL + ' SET ONOFF = 0 ';
         strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;

         if ComboExcluirCliente.Text <> '' then
          begin
             strSQL:= strSQL + ' and  cliente = ' + #39 + ComboExcluirCliente.Text + #39;
          end;

         if ComboExcluirHH.Text <> '' then
          begin
             strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboExcluirHH.Text + #39;
          end;

         if ComboExcluirCarteira.Text <> '' then
          begin
             strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboExcluirCarteira.Text + #39;
          end;

         AdoQ_Excluir.Close;
         AdoQ_Excluir.SQL.Clear;
         AdoQ_Excluir.SQL.Add(strSQL);
         AdoQ_Excluir.ExecSQL;

      end;  }

  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;

  if ComboExcluirArqExcCL.Text <> '' then
   begin
      strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboExcluirArqExcCL.Text + #39;
   end;

  if ComboExcluirGCarteiraCL.Text <> '' then
   begin
      strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboExcluirGCarteiraCL.Text + #39;
   end;

   AdoQ_Excluir.Close;
   AdoQ_Excluir.SQL.Clear;
   AdoQ_Excluir.SQL.Add(strSQL);
   AdoQ_Excluir.Open;

//Verificar se � registro unico
   if AdoQ_Excluir.RecordCount = 1 then
      begin
         statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar - '
         + AdoQ_Excluir.RecordCount.ToString + ' Conta Desativada '; // Mostrar quantidade de Registros
         lblAntesMudanca.Caption:= lblAntesMudanca.Caption + AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
         lblMudanca.Caption:= lblMudanca.Caption + AdoQ_Excluir.RecordCount.ToString + ' Registro ';
      end
   else
      if AdoQ_Excluir.RecordCount = 0 then
        begin
            statPesquisa.Panels[1].Text:= '';
        end
      else
        begin
          statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar - '
          + AdoQ_Excluir.RecordCount.ToString + ' Contas Desativadas'; // Mostrar quantidade de Registros
          lblAntesMudanca.Caption:= lblAntesMudanca.Caption + AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
          lblMudanca.Caption:= lblMudanca.Caption + AdoQ_Excluir.RecordCount.ToString + ' Registros ';
        end;

   F_Principal.Height:= 832;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

   pnlEdicao.Visible:= True;
   pnlEdicao.Height:= 253;

   pnlGridEscluir.Height:= 253;
   pnlGridEscluir.Align:= alBottom;
   lblAntesMudanca.Visible:= True;

   ComboExcluirClienteCL.Clear;
   ComboExcluirArqExcCL.Clear;
   ComboExcluirGCarteiraCL.Clear;

   pnlSemEmail.Top:= 49;

   btnExcluir.Enabled:= False;
end;

procedure TF_Principal.btnExcluirClick(Sender: TObject);
var
  strSQL : string;

begin
  {
   if edtPesqExluir.Text <> '' then
      begin
         strSQL:= ' UPDATE hh.Lista_Email ';
         strSQL:= strSQL + ' SET ONOFF = 0 ';
         strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
         strsql:= strsql + ' and ONOFF <> 0 ';

         if ComboExcluirCliente.Text <> '' then
          begin
             strSQL:= strSQL + ' and  cliente = ' + #39 + ComboExcluirCliente.Text + #39;
          end;

         if ComboExcluirHH.Text <> '' then
          begin
             strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboExcluirHH.Text + #39;
          end;

         if ComboExcluirCarteira.Text <> '' then
          begin
             strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboExcluirCarteira.Text + #39;
          end;

         AdoQ_Excluir.Close;
         AdoQ_Excluir.SQL.Clear;
         AdoQ_Excluir.SQL.Add(strSQL);
         AdoQ_Excluir.ExecSQL;

      end;  }

  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
  strsql:= strsql + ' and ONOFF <> 0 ';

  if ComboExcluirCliente.Text <> '' then
   begin
      strSQL:= strSQL + ' and  cliente = ' + #39 + ComboExcluirCliente.Text + #39;
   end;

  if ComboExcluirHH.Text <> '' then
   begin
      strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboExcluirHH.Text + #39;
   end;

  if ComboExcluirCarteira.Text <> '' then
   begin
      strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboExcluirCarteira.Text + #39;
   end;

   AdoQ_Excluir.Close;
   AdoQ_Excluir.SQL.Clear;
   AdoQ_Excluir.SQL.Add(strSQL);
   AdoQ_Excluir.Open;

//Verificar se � registro unico
   if AdoQ_Excluir.RecordCount = 1 then
      begin
         statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar - '
         + AdoQ_Excluir.RecordCount.ToString + ' Conta Desativada '; // Mostrar quantidade de Registros
         lblMudancaRegistrosAntes.Visible:= True;
         lblMudancaRegistrosAntes.Caption:= AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
         lblMudancaRegistros.Caption:= AdoQ_Excluir.RecordCount.ToString + ' Registro ';
      end
   else
      if AdoQ_Excluir.RecordCount = 0 then
        begin
            statPesquisa.Panels[1].Text:= '';
        end
      else
        begin
          statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar - '
          + AdoQ_Excluir.RecordCount.ToString + ' Contas Desativadas'; // Mostrar quantidade de Registros
          lblMudancaRegistrosAntes.Visible:= True;
          lblMudancaRegistrosAntes.Caption:= AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
          lblMudancaRegistros.Caption:= AdoQ_Excluir.RecordCount.ToString + ' Registros ';
        end;

   F_Principal.Height:= 832;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

   pnlEdicao.Visible:= True;
   pnlEdicao.Height:= 253;

   pnlGridEscluir.Height:= 253;
   pnlGridEscluir.Align:= alBottom;
   lblAntesMudanca.Visible:= True;

   edtPesqExluir.Clear;
   ComboExcluirCliente.Clear;
   ComboExcluirHH.Clear;
   ComboExcluirCarteira.Clear;

   pnlPesqExcluir.Top:= 49;

   btnExcluir.Enabled:= False;
   GridExcluir.Tag:= 0;
end;

procedure TF_Principal.btnExcluirEmailClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[1].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[5].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= True;
end;

procedure TF_Principal.btnSalvar1Click(Sender: TObject);
begin
  //Minimizar a Janela
  Application.Minimize;
end;

procedure TF_Principal.btnSalvarClick(Sender: TObject);
var
qry, qryArqExcel, qryCarteira: TADOQuery;
A, B : Integer;
strSql, strSQL1, strSQL2, PesGrid: string;
NomeADD, EmailADD, ArqExcelADD, GrupCartADD, ClienteADD: string;

begin
  btnVoltar.Enabled:= True;
  btnCancelar1.Enabled:= True;

{$REGION 'Se estiver adicionando Manual'}
    if btnAdicionar.Tag = 1 then
      begin
      MensageAppMesBox:= 'Adicionar Contas Manual';

      //Verificar os campos pra n�o salvar em branco
        if Trim(edtNome.Text) = '' then
          begin
             mensagem:= 'O Campo NOME n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             edtNome.SetFocus;
             Exit;
          end;

        if Trim(edtEmail.Text) = '' then
          begin
             mensagem:= 'O Campo E-MAIL n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             edtEmail.SetFocus;
             Exit;
          end
        else
          begin
             if ValidarEmail(edtEmailPc.Text) then
              begin
                  mensagem:= 'O E-MAIL Digitado n�o � valido';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
                  edtEmail.SetFocus;
                  Exit;
              end;
          end;

        if Trim(ComboArqExcel.Text) = '' then
          begin
             mensagem:= 'O Campo ARQUIVO DO EXCEL n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             ComboArqExcel.SetFocus;
             Exit;
          end;

        if Trim(ComboCarteira.Text) = '' then
          begin
             mensagem:= 'O Campo CARTEIRA n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             ComboCarteira.SetFocus;
             Exit;
          end;

        if Trim(ComboCliente.Text) = '' then
          begin
             mensagem:= 'O Campo CARTEIRA n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             ComboCliente.SetFocus;
             Exit;
          end;

        AdoQ_ADD.Post;    // Gravar
      //Mostrando a msg para o usuario
        mensagem:= 'Registros Salvo';
        Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);

      //Controle de botoes
        btnAdicionar.Enabled:= True;
        btnEditar.Enabled:= True;
        btnSalvar.Enabled:=False;
        btnCancelar.Enabled:= False;

        RadioGroupADDContas.Visible:= True;
        tlbCadPadrao.SetFocus;
        pnlManual.Enabled:= False;
        pnlGridEdicao.Enabled:= False;
      end;
{$ENDREGION 'Se estiver adicionando Manual'}


{$REGION 'Se estiver adicionando Manual e Nao tem Arquivo'}
    if btnAdicionar.Tag = 12 then
      begin
      MensageAppMesBox:= 'Adicionar Contas Manual';

      //Verificar os campos pra n�o salvar em branco
        if Trim(dbedtNome.Text) = '' then
          begin
             mensagem:= 'O Campo NOME n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             edtNome.SetFocus;
             Exit;
          end;

        if Trim(dbedtEmail.Text) = '' then
          begin
             mensagem:= 'O Campo E-MAIL n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             edtEmail.SetFocus;
             Exit;
          end
        else
          begin
             if Trim(dbedtHHExcel.Text) = ''  then
              begin
                  mensagem:= 'O E-MAIL Digitado n�o � valido';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
                  dbedtHHExcel.SetFocus;
                  Exit;
              end;
          end;

        if Trim(dbedtHHExcel.Text) = '' then
          begin
             mensagem:= 'O Campo ARQUIVO DO EXCEL n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
             ComboArqExcel.SetFocus;
             Exit;
          end;

        if Trim(dbedtCarteira.Text) = '' then
          begin
             mensagem:= 'O Campo CARTEIRA n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
    //         ComboCarteira.SetFocus;
             Exit;
          end;

        if Trim(dbedtGrupo_Carteira.Text) = '' then
          begin
             mensagem:= 'O Campo CARTEIRA n�o pode Ficar vazio';
             Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
    //         ComboCliente.SetFocus;
             Exit;
          end;

        AdoQ_ADD.Post;    // Gravar
      //Mostrando a msg para o usuario
        mensagem:= 'Registros Salvo';
        Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);

      //Controle de botoes
        btnAdicionar.Enabled:= True;
        btnEditar.Enabled:= True;
        btnSalvar.Enabled:=False;
        btnCancelar.Enabled:= False;

        RadioGroupADDContas.Visible:= True;
        tlbCadPadrao.SetFocus;
        pnlManual.Enabled:= False;
        pnlGridEdicao.Enabled:= False;
      end;
{$ENDREGION 'Se estiver adicionando Manual e Nao tem Arquivo'}


 {$REGION 'Se for por Cliente'}
 if btnAdicionar.Tag = 2 then
   begin
      RadioGroupADDContas.Visible:= True;

      //Tirar o foco do combo caso n�o saia.
      ComboClientePC.OnExit(Sender);

      NomeADD:= edtNomePC.Text;
      EmailADD:= edtEmailPc.Text;
      ClienteADD:= ComboClientePC.Text;


   // Verificar campos

      // Verificar se digitou email
      if Pos('@',edtEmail.Text) > 0  then
        begin

        end;


      //Controle de botoes
      btnAdicionar.Enabled:= True;
      btnEditar.Enabled:= True;
      btnSalvar.Enabled:=False;
      btnCancelar.Enabled:= False;

      pnlPorCliente.Enabled:= False;
      pnlGridEdicao.Enabled:= False;

   // Criando Um ADOQUERY Em Tempo de Execu��o  Para pegar os Arquivos de Excel
       qryArqExcel:= TADOQuery.Create(nil);
       qryArqExcel.Connection:= con_Geral;

       strSQL1:= 'select distinct HH_Excel from hh.Lista_Email where cliente = '+#39+ ComboClientePC.Text + #39;

       with qryArqExcel do
          begin
            Close;
            sql.Clear;
            sql.Add(strSQL1);
            Open;

            while not eof do
               begin
                  ArqExcelADD:= qryArqExcel.Fields[0].AsString;

               //Aqui pega o grupo carteira
               // Criando Um ADOQUERY Em Tempo de Execu��o  da ultima parte do processo
                  qryCarteira:= TADOQuery.Create(nil);
                  qryCarteira.Connection:= con_Geral;

                  strSQL2:= 'select distinct Grupo_Carteira from hh.Lista_Email where cliente = ' + #39+ ClienteADD +#39 + ' and HH_Excel = '+#39+ ArqExcelADD + #39;

                  with qryCarteira do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add(strSQL2);
                      Open;

                      while not Eof do
                         begin
                            GrupCartADD:= qryCarteira.Fields[0].AsString;

                         // Criando Um ADOQUERY Em Tempo de Execu��o  Para pegar os Arquivos de Excel
                             qry:= TADOQuery.Create(nil);
                             qry.Connection:= con_Geral;

                             strSql:= 'INSERT [HH].[Lista_Email] ([Nome], [Email], [HH_Excel], [Grupo_Carteira], [ONOFF], [Cliente]) ';
                             strSql:= strSql + ' VALUES (' +#39+ NomeADD +#39+ ', '+#39+ EmailADD +#39+', '+#39+ ArqExcelADD +#39+', '+#39+ GrupCartADD + #39 +', 1, '+#39+ ClienteADD + #39 +')';

                              with qry do
                                 begin
                                   Close;
                                   SQL.Clear;
                                   SQL.Add(strSql);
                                   ExecSQL;
                                 end;
                             Next;
                         end;
                    end;
                  Next;
               end;
          end;
   //Adicionando pesquisa na query para trazer o resultado
//     PesGrid:= 'select * from hh.Lista_Email where Nome = '+ #39+ NomeADD +#39 +' and Email = ' + #39+ EmailADD +#39 +' and cliente = ' + #39+ ClienteADD +#39;
     PesGrid:= 'select *, case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe from hh.Lista_Email where Nome = '+ #39+ NomeADD +#39 +' and Email = ' + #39+ EmailADD +#39 +' and cliente = ' + #39+ ClienteADD +#39;
     AdoQ_ADD.SQL.Clear;
     AdoQ_ADD.SQL.Add(PesGrid);
     AdoQ_ADD.Open;



   end;
 {$ENDREGION 'Se for por Cliente'}

 {$REGION 'Se for por Copia de outro usuario'}
 if btnAdicionar.Tag = 3 then
   begin
      RadioGroupADDContas.Visible:= True;

   //Controle de botoes
     btnAdicionar.Enabled:= True;
     btnEditar.Enabled:= True;
     btnSalvar.Enabled:=False;
     btnCancelar.Enabled:= False;

      try
      // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
        qry:= TADOQuery.Create(nil);
        qry.Connection:= con_Geral;

      // Criando o insert
        strSql:= 'insert ppgj.HH.Lista_Email ';
        strSql:= strSql + ' Select ' + #39 + edtNomeMod.Text + #39 + ' As NOME, '+ #39 + edtEmailMod.Text + #39 + '	,HH_Excel ,Grupo_Carteira ,1 as ONOFF ,Cliente';
        strSql:= strSql + ' from ppgj.HH.Lista_Email where Email = ' + #39 + ComboUsuario.Text + #39  ;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
          end;
      finally
        FreeAndNil(qry);
      end;
   end;
 {$ENDREGION 'Se for por Copia de outro usuario'}

end;

procedure TF_Principal.btnStatusConexaoClick(Sender: TObject);
begin
//temporario retirar depois
    AdoQ_Pesquisa.Active:= True;
end;

procedure TF_Principal.btnVoltarClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[0].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= False;
end;

procedure TF_Principal.btnVoltarEmailsClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[5].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 1;    // Definindo qual aba abre por padrao
  btnVoltar.Enabled:= True;
end;

procedure TF_Principal.BuscaDados;
var
  strsql: string;
  valor: string;
  nr, c: Integer;
begin

  //Strinpesq:= edtPesquisa.Text;
// Select Inicial
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe from hh.Lista_Email ';

  case RGPesquisaGeral.ItemIndex of
    0:
      begin
        valor:= edtPesquisa.Text;
        Val(valor,nr,c);  //Verificando se � string ou n�mero

         if c=0 then
         begin
         //ShowMessage('� n�mero');
             strsql:= strsql + ' where Nome like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
             strsql:= strsql + ' or email like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
             strsql:= strsql + ' or HH_Excel like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
             strsql:= strsql + ' or Grupo_Carteira like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
             strsql:= strsql + ' or onoff = ' + edtPesquisa.Text;
         end
         else
           begin
           //ShowMessage('� string');
              strsql:= strsql + ' where Nome like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
              strsql:= strsql + ' or email like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
              strsql:= strsql + ' or HH_Excel like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
              strsql:= strsql + ' or Grupo_Carteira like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
           end;
      end;

    1:
      begin
        strsql:= strsql + ' where Nome like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
      end;

    2:
      begin
        strsql:= strsql + ' where email like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
      end;

    3:
      begin
        strsql:= strsql + ' where hh_excel like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
      end;

    4:
      begin
        strsql:= strsql + ' where grupo_Carteira like ' +#39+'%'+ edtPesquisa.Text+'%'+#39;
      end;

    5:
      begin
         strsql:= strsql + ' where onoff = ' + edtPesquisa.Text;
      end;
  end;

  // verificar se o campo nao esta vazio
  if Trim(edtPesquisa.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;
             statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString; // Mostrar quantidade de Registros
          end;

          case RGPesquisaGeral.ItemIndex of
               0:         // Todos
                if Length(edtPesquisa.Text) <> 5 then
                   begin

                     //Verificar se tem dados para habilitar botoes de adicionar ou editar
                     if AdoQ_Pesquisa.RecordCount <> 0 then
                      begin
                         btnAddEmail.Enabled:= False;
                         btnExcluirEmail.Enabled:= True;
                      end
                     else
                      begin
                         btnExcluirEmail.Enabled:= False;
                         btnAddEmail.Enabled:= True;
                      end;

                   end
                else
                   begin
                      btnAddEmail.Enabled:= False;
                      btnExcluirEmail.Enabled:= False;
                   end;
               1:         // Nome
                if Length(edtPesquisa.Text) <> 5 then
                   begin

                     //Verificar se tem dados para habilitar botoes de adicionar ou editar
                     if AdoQ_Pesquisa.RecordCount <> 0 then
                      begin
                         btnAddEmail.Enabled:= False;
                         btnExcluirEmail.Enabled:= True;
                      end
                     else
                      begin
                         btnExcluirEmail.Enabled:= False;
                         btnAddEmail.Enabled:= True;
                      end;

                   end
                else
                   begin
                      btnAddEmail.Enabled:= False;
                      btnExcluirEmail.Enabled:= False;
                   end;

               2:         // Email
                 // Verificar se digitou o @ para comecar
                 if Pos('@',edtPesquisa.Text) > 0  then
                   begin

                     //Verificar se tem dados para habilitar botoes de adicionar ou editar
                     if AdoQ_Pesquisa.RecordCount <> 0 then
                      begin
                         btnAddEmail.Enabled:= False;
                         btnExcluirEmail.Enabled:= True;
                      end
                     else
                      begin
                         btnExcluirEmail.Enabled:= False;
                         btnAddEmail.Enabled:= True;
                      end;

                   end
                 else
                   begin
                      btnAddEmail.Enabled:= False;
                      btnExcluirEmail.Enabled:= False;
                   end;

               3:         // hh_Excel
                if Length(edtPesquisa.Text) <> 5 then
                   begin

                     //Verificar se tem dados para habilitar botoes de adicionar ou editar
                     if AdoQ_Pesquisa.RecordCount <> 0 then
                      begin
                         btnAddEmail.Enabled:= False;
                         btnExcluirEmail.Enabled:= True;
                      end
                     else
                      begin
                         btnExcluirEmail.Enabled:= False;
                         btnAddEmail.Enabled:= True;
                      end;

                   end
                else
                   begin
                      btnAddEmail.Enabled:= False;
                      btnExcluirEmail.Enabled:= False;
                   end;

               4:         //Grupo Carteira
                if Length(edtPesquisa.Text) <> 5 then
                   begin

                     //Verificar se tem dados para habilitar botoes de adicionar ou editar
                     if AdoQ_Pesquisa.RecordCount <> 0 then
                      begin
                         btnAddEmail.Enabled:= False;
                         btnExcluirEmail.Enabled:= True;
                      end
                     else
                      begin
                         btnExcluirEmail.Enabled:= False;
                         btnAddEmail.Enabled:= True;
                      end;

                   end
                else
                   begin
                      btnAddEmail.Enabled:= False;
                      btnExcluirEmail.Enabled:= False;
                   end;
          end;
    end;
end;

procedure TF_Principal.BuscaDadosExcluir;
var
  strsql, strsql1: string;
  UserUnico: Integer;
  qry: TADOQuery;

begin
    try
    // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente para verificar se � unico
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
      strsql1:= 'select distinct Email from hh.Lista_Email where Email like ' +#39+ edtPesqExluir.Text + #37 + #39;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strsql1);
            Open;
            First;
            if (qry.RecordCount = 1) then
               begin
                 UserUnico:= qry.RecordCount;
               end
            else
               begin
                  btnExcluir.Enabled:= False;
                  ComboExcluirCliente.Enabled:= False;
               end;
          end;
    Except
      on E:Exception do
         Begin
            Showmessage('Erro Arrumar:4 ' + E.Message);
            Exit;
         End;
    End;

// verificar se o campo nao esta vazio
  if Trim(edtPesqExluir.Text) <> '' then
    begin
    // Select Inicial
      strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
      strsql:= strsql + ' from hh.Lista_Email ';
      strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
      strsql:= strsql + ' and ONOFF <> 0 ';

      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros
          end;

          if (UserUnico) = 1 then
            begin
            // Realizar Alguma A��o

              try
              // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente
                qry:= TADOQuery.Create(nil);
                qry.Connection:= con_Geral;

              // Criando o Select
                strSql:= 'select distinct Cliente from hh.Lista_Email where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;

                with qry do
                    begin
                      Close;
                      SQL.Clear;
                      SQL.Add(strSql);
                      Open;
                      First;
                      if (qry.RecordCount = 0) then // Se n�o encontrar dados
                         begin
                           ComboCarteiraEmailEnviado.Clear;
                            mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                                     + ' Favor Verificar com Ad. Do Banco.';
                            Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                         end
                      else
                        begin
                          ComboExcluirCliente.Clear;
                           while not qry.Eof do
                             begin
                                ComboExcluirCliente.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
                                qry.Next;
                             end;
                        end;
                    end;
              Except
                on E:Exception do
                   Begin
                      Showmessage('Erro Arrumar:4 ' + E.Message);
                      Exit;
                   End;
              End;
              btnExcluir.Enabled:= True;
              ComboExcluirCliente.Enabled:= True;
            end
          else
            begin
               // btnExcluir.Enabled:= False;
               //ComboExcluirCliente.Enabled:= False;
            end;
    end;

end;

procedure TF_Principal.checkONOFFEnter(Sender: TObject);
begin
    checkONOFF.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.checkONOFFExit(Sender: TObject);
begin
    checkONOFF.Font.Style:= [];
end;

procedure TF_Principal.ComboEmailEnviadoEnter(Sender: TObject);
begin
  pnlEmailPesq.Enabled:= False;
  MemoEmail.Text:= '';

  ComboEmailEnviado.Color:= clSkyBlue;
  lblArqExcelEmail.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboEmailEnviadoExit(Sender: TObject);
var
qry: TADOQuery;
strSql, MensageAppMesBox, mensagem, ArqExcel: string;

begin
MensageAppMesBox:= 'Adicionando E-mails no HH';

if ComboEmailEnviado.Text <> '' then
  begin
  //Varificando se clicou em cancelar ou salvar
    if sairsemerro = 'S' then
        begin
          ComboArqExcel.Color:= clWindow;
          lblArqExcel.Font.Style:= [];
          Exit;
        end
    else
      begin
      //Guardar o nome do arquivo de excel
        ArqExcel:= ComboEmailEnviado.Text;
        ComboCarteiraEmailEnviado.Enabled:= True;
        ComboCarteiraEmailEnviado.SetFocus;
        ComboCarteiraEmailEnviado.Items.Clear;

      try
      // Criando Um ADOQUERY Em Tempo de Execu��o pegar carteiras
        qry:= TADOQuery.Create(nil);
        qry.Connection:= con_Geral;

      // Criando o Select
        strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where HH_Excel = ' + #39 + ArqExcel + #39;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                 ComboCarteiraEmailEnviado.Clear;
                  mensagem:= ' N�o Existe Grupo Carteira Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 while not qry.Eof do
                   begin
                      ComboCarteiraEmailEnviado.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                      qry.Next;
                   end;
              end;
          end;
      finally
        FreeAndNil(qry);
      end;
      end;
  end;
  ComboEmailEnviado.Color:= clWindow;
  lblArqExcelEmail.Font.Style:= [];
end;

procedure TF_Principal.ComboEmailEnviadoSelect(Sender: TObject);
begin
  ComboEmailEnviado.OnExit(Sender);
end;

procedure TF_Principal.ComboExcluirArqExcCLEnter(Sender: TObject);
var
  strSQL: string;
begin
  ComboExcluirArqExcCL.Color:= clSkyBlue;
  lbl141.Font.Style:= [TFontStyle.fsBold];
  ComboExcluirGCarteiraCL.Clear;

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirArqExcCL.Text) <> '' then
    begin
       strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
       strsql:= strsql + ' from hh.Lista_Email ';
       strSql:= strSql + ' where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;
       strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirArqExcCL.Text + #39;
       strSql:= strSql + ' and onoff <> 0 order by Email';

      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;
             statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString; // Mostrar quantidade de Registros
          end;
    end;
end;

procedure TF_Principal.ComboExcluirArqExcCLExit(Sender: TObject);
begin
  ComboExcluirArqExcCL.Color:= clWindow;
  lbl141.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirArqExcCLSelect(Sender: TObject);
var
  qry: TADOQuery;
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirArqExcCL.Text + #39;
  strSql:= strSql + ' and onoff <> 0 order by Email';

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirArqExcCL.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros

          end;
    end;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o pegar Grupo Carteira
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
       strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where cliente like ' + #39 + ComboExcluirClienteCL.Text + #37 + #39;
       strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirArqExcCL.Text + #39;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Grupo Carteira Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 while not qry.Eof do
                   begin
                      ComboExcluirGCarteiraCL.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                      qry.Next;
                   end;
              end;
          end;
      ComboExcluirGCarteiraCL.Enabled:= True;
    Except
      on E:Exception do
         Begin
            Showmessage('Erro Arrumar:6 ' + E.Message);
            Exit;
         End;
    End;
end;

procedure TF_Principal.ComboExcluirCarteiraEnter(Sender: TObject);
begin
  ComboExcluirCarteira.Color:= clSkyBlue;
  lbl15.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboExcluirCarteiraExit(Sender: TObject);
begin
  ComboExcluirCarteira.Color:= clWindow;
  lbl15.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirCarteiraSelect(Sender: TObject);
var
  strsql: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboExcluirCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirHH.Text + #39;
  strSql:= strSql + ' and Grupo_Carteira = ' + #39 + ComboExcluirCarteira.Text + #39;
  strsql:= strsql + ' and ONOFF <> 0 ';

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirCliente.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros
          end;
    end;
end;

procedure TF_Principal.ComboExcluirClienteCLEnter(Sender: TObject);
begin
  ComboExcluirClienteCL.Color:= clSkyBlue;
  lbl131.Font.Style:= [TFontStyle.fsBold];
  ComboExcluirArqExcCL.Clear;
  ComboExcluirGCarteiraCL.Clear;
  AdoQ_Pesquisa.Close;
  btnExcluir1.Enabled:= False;
end;

procedure TF_Principal.ComboExcluirClienteCLExit(Sender: TObject);
begin
  ComboExcluirClienteCL.Color:= clWindow;
  lbl131.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirClienteCLSelect(Sender: TObject);
var
  qry : TADOQuery;
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;
  strSql:= strSql + ' and OnOff <> 0  order by Email'  ;

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirClienteCL.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros

          end;

          if (AdoQ_Pesquisa.RecordCount <> 0) then // Se n�o encontrar dados
             begin
                btnExcluir1.Enabled:= True;
             end;
    end;


     try
     // Criando Um ADOQUERY Em Tempo de Execu��o pegar Arquivos de Excel
       qry:= TADOQuery.Create(nil);
       qry.Connection:= con_Geral;

     // Criando o Select
       strSql:= 'select distinct HH_Excel from hh.Lista_Email where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;
       strSql:= strSql + ' and onoff <> 0 ';
       strSql:= strSql + ' order by HH_Excel ';
       with qry do
           begin
             Close;
             SQL.Clear;
             SQL.Add(strSql);
             Open;
             First;
             if (qry.RecordCount = 0) then // Se n�o encontrar dados
                begin
                   mensagem:= ' N�o Existe Arquivo de Excel Cadastrado, ' + #13
                            +'Favor Verificar com Ad. Do Banco.';
                   Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                end
             else
               begin
                  ComboExcluirArqExcCL.Clear;
                  while not qry.Eof do
                    begin
                       ComboExcluirArqExcCL.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
               end;
           end;

        ComboExcluirArqExcCL.Enabled:= True;
     Except
       on E:Exception do
          Begin
             Showmessage('Erro Arrumar:5 ' + E.Message);
             Exit;
          End;
     End;
end;

procedure TF_Principal.ComboExcluirClienteEnter(Sender: TObject);
begin
  ComboExcluirCliente.Color:= clSkyBlue;
  lbl13.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboExcluirClienteExit(Sender: TObject);
begin
  ComboExcluirCliente.Color:= clWindow;
  lbl13.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirClienteSelect(Sender: TObject);
var
  qry: TADOQuery;
  strsql: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboExcluirCliente.Text + #39;
  strsql:= strsql + ' and ONOFF <> 0 ';

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirCliente.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros
          end;
    end;

     try
     // Criando Um ADOQUERY Em Tempo de Execu��o pegar Arquivos de Excel
       qry:= TADOQuery.Create(nil);
       qry.Connection:= con_Geral;

     // Criando o Select
       strSql:= 'select distinct HH_Excel from hh.Lista_Email where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
       strSql:= strSql + ' and cliente = ' + #39 + ComboExcluirCliente.Text + #39;

       with qry do
           begin
             Close;
             SQL.Clear;
             SQL.Add(strSql);
             Open;
             First;
             if (qry.RecordCount = 0) then // Se n�o encontrar dados
                begin
                  ComboCarteiraEmailEnviado.Clear;
                   mensagem:= ' N�o Existe Arquivo de Excel Cadastrado, ' + #13
                            +'Favor Verificar com Ad. Do Banco.';
                   Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                end
             else
               begin
                  ComboExcluirHH.Clear;
                  while not qry.Eof do
                    begin
                       ComboExcluirHH.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
               end;
           end;

        ComboExcluirHH.Enabled:= True;
     Except
       on E:Exception do
          Begin
             Showmessage('Erro Arrumar:5 ' + E.Message);
             Exit;
          End;
     End;
end;

procedure TF_Principal.ComboExcluirGCarteiraCLEnter(Sender: TObject);
begin
  ComboExcluirGCarteiraCL.Color:= clSkyBlue;
  lbl151.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboExcluirGCarteiraCLExit(Sender: TObject);
begin
  ComboExcluirGCarteiraCL.Color:= clWindow;
  lbl151.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirGCarteiraCLSelect(Sender: TObject);
var
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboExcluirClienteCL.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirArqExcCL.Text + #39;
  strSql:= strSql + ' and Grupo_Carteira = ' + #39 + ComboExcluirGCarteiraCL.Text + #39;
  strSql:= strSql + ' and onoff <> 0 order by Email';

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirArqExcCL.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros

          end;
    end;
end;

procedure TF_Principal.ComboExcluirHHEnter(Sender: TObject);
begin
  ComboExcluirHH.Color:= clSkyBlue;
  lbl14.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboExcluirHHExit(Sender: TObject);
begin
  ComboExcluirHH.Color:= clWindow;
  lbl14.Font.Style:= [];
end;

procedure TF_Principal.ComboExcluirHHSelect(Sender: TObject);
var
  qry: TADOQuery;
  strsql: string;

begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboExcluirCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirHH.Text + #39;
  strsql:= strsql + ' and ONOFF <> 0 ';

// verificar se o campo nao esta vazio
  if Trim(ComboExcluirCliente.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar '; // Mostrar quantidade de Registros
          end;
    end;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o pegar Grupo Carteira
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
       strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where Email like ' + #39 + edtPesqExluir.Text + #37 + #39;
       strSql:= strSql + ' and cliente = ' + #39 + ComboExcluirCliente.Text + #39;
       strSql:= strSql + ' and HH_Excel = ' + #39 + ComboExcluirHH.Text + #39;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                 ComboCarteiraEmailEnviado.Clear;
                  mensagem:= ' N�o Existe Grupo Carteira Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 ComboExcluirCarteira.Clear;
                 while not qry.Eof do
                   begin
                      ComboExcluirCarteira.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                      qry.Next;
                   end;
              end;
          end;
      ComboExcluirCarteira.Enabled:= True;
    Except
      on E:Exception do
         Begin
            Showmessage('Erro Arrumar:6 ' + E.Message);
            Exit;
         End;
    End;
end;

procedure TF_Principal.CheckRecebeEnter(Sender: TObject);
begin
  CheckRecebe.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.CheckRecebeExit(Sender: TObject);
begin
  CheckRecebe.Font.Style:= [];
end;

procedure TF_Principal.ComboArqExcelEnter(Sender: TObject);
begin
  ComboArqExcel.Color:= clSkyBlue;
  lblArqExcel.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboArqExcelExit(Sender: TObject);
var
qry: TADOQuery;
strSql, MensageAppMesBox, mensagem, ArqExcel: string;

begin
MensageAppMesBox:= 'Adicionando E-mails no HH';

//Varificando se clicou em cancelar ou salvar
  if sairsemerro = 'S' then
      begin
        ComboArqExcel.Color:= clWindow;
        lblArqExcel.Font.Style:= [];
        Exit;
      end
  else
    begin
    //Guardar o nome do arquivo de excel
      ArqExcel:= ComboArqExcel.Text;
      ComboCarteira.Enabled:= True;
      ComboCarteira.SetFocus;
      ComboCarteira.Items.Clear;
      ComboCliente.Enabled:= True;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
      strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where HH_Excel = ' + #39 + ArqExcel + #39;

    with qry do
        begin
          Close;
          SQL.Clear;
          SQL.Add(strSql);
          Open;
          First;
          if (qry.RecordCount = 0) then // Se n�o encontrar dados
             begin
               ComboCliente.Clear;
               ComboCarteira.Clear;
                mensagem:= ' N�o Existe Grupo Carteira Cadastrado, ' + #13
                         +'Favor Verificar com Ad. Do Banco.';
                Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
             end
          else
            begin
               while not qry.Eof do
                 begin
                    ComboCarteira.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                    qry.Next;
                 end;
            end;
        end;
    finally
      FreeAndNil(qry);
    end;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o
      qry:= TADOQuery.Create(nil);
      qry.Connection:= con_Geral;

    // Criando o Select
      strSql:= 'select distinct Cliente from hh.Lista_Email where HH_Excel = ' + #39 + ArqExcel + #39;

    with qry do
        begin
          Close;
          SQL.Clear;
          SQL.Add(strSql);
          Open;
          First;
          if (qry.RecordCount = 0) then // Se n�o encontrar dados
             begin
                mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                         +'Favor Verificar com Ad. Do Banco.';
                Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
             end
          else
            begin
               while not qry.Eof do
                 begin
                    ComboCliente.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
                    qry.Next;
                 end;
            end;
        end;
    finally
      FreeAndNil(qry);
    end;
      AdoQ_ADD.FieldByName('HH_Excel').AsAnsiString:= ComboArqExcel.Text;

      ComboArqExcel.Color:= clWindow;
      lblArqExcel.Font.Style:= [];
    end;
end;

procedure TF_Principal.ComboCarteiraEmailEnviadoEnter(Sender: TObject);
begin
  ComboCarteiraEmailEnviado.Color:= clSkyBlue;
  lblCarteiraEmail.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboCarteiraEmailEnviadoExit(Sender: TObject);
var
qry: TADOQuery;
strsql: string;

begin

   if ComboCarteiraEmailEnviado.Text <> '' then
      begin
         try
         // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
             qry:= TADOQuery.Create(nil);
             qry.Connection:= con_Geral;

         // Criando o Select
             strsql:= 'select STRING_AGG(e.email,'';'') as Email from HH.Lista_Email e where 1=1 and upper(e.HH_EXCEL) = :ArqExcel and Grupo_Carteira = :Carteira and e.onoff = 1';

             with qry do
                  begin
                    Close;
                    SQL.Clear;
                    SQL.Add(strSql);
                    Parameters.ParamByName('ArqExcel').Value:= ComboEmailEnviado.Text;
                    Parameters.ParamByName('Carteira').Value:= ComboCarteiraEmailEnviado.text;
                    Open;
                    First;
                    if (qry.RecordCount = 0) then // Se n�o encontrar dados
                       begin
                          mensagem:= ' N�o Existe Arquivos Cadastrado, ' + #13
                                   +'Favor Verificar com Ad. Do Banco.';
                          Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                       end
                    else
                      begin
                          MemoEmail.Text:= qry.Fields[0].AsString;
                          pnlArqEmail.Enabled:= True;
                          pnlEmailPesq.Enabled:= True;
                          EditPesqMemo.SetFocus;
                      end;
                  end;
         Except
            on E:Exception do
               Begin
                  Showmessage('Erro Arrumar: ' + E.Message);
                  Exit;
               End;
         End;
      end;
   ComboCarteiraEmailEnviado.Color:= clWindow;
   lblCarteiraEmail.Font.Style:= [];
end;

procedure TF_Principal.ComboCarteiraEmailEnviadoSelect(Sender: TObject);
begin
  ComboCarteiraEmailEnviado.OnExit(Sender);
end;

procedure TF_Principal.ComboCarteiraEnter(Sender: TObject);
begin
  ComboCarteira.Color:= clSkyBlue;
  lblCarteira.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboCarteiraExit(Sender: TObject);
begin
  AdoQ_ADD.FieldByName('Grupo_Carteira').AsAnsiString:= ComboCarteira.Text;

  ComboCarteira.Color:= clWindow;
  lblCarteira.Font.Style:= [];
end;

procedure TF_Principal.ComboClienteEnter(Sender: TObject);
begin
  ComboCliente.Color:= clSkyBlue;
  lblCliente.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboClienteExit(Sender: TObject);
begin
  AdoQ_ADD.FieldByName('Cliente').AsAnsiString:=  ComboCliente.Text;
  ComboCliente.Color:= clWindow;
  lblCliente.Font.Style:= [];
end;

procedure TF_Principal.ComboClientePCEnter(Sender: TObject);
begin
  ComboCliente.Color:= clSkyBlue;
  lblClientepc1.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboClientePCExit(Sender: TObject);
begin
  clientee:= ComboCliente.Text;
  ComboCliente.Color:= clWindow;
  lblClientepc1.Font.Style:= [];
end;

procedure TF_Principal.ComboUsuarioEnter(Sender: TObject);
begin
  ComboUsuario.Color:= clSkyBlue;
  lblClientepc11.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.ComboUsuarioExit(Sender: TObject);
begin
  ComboUsuario.Color:= clWindow;
  lblClientepc11.Font.Style:= [];
end;

procedure TF_Principal.ComboUsuarioSelect(Sender: TObject);
var
qry: TADOQuery;
strSQL: string;
begin
  lblemailmod.Visible:= True;

      try
      // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
        qry:= TADOQuery.Create(nil);
        qry.Connection:= con_Geral;

      // Criando o Select
        strSql:= 'select * from hh.Lista_Email where email = ' + #39 + ComboUsuario.Text + #39 + ' order by Email';

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 lblemailmod.Caption:= (qry.FieldByName('nome').AsAnsiString);
              end;
          end;
      finally
        FreeAndNil(qry);
      end;
end;

procedure TF_Principal.dbedtCarteiraEnter(Sender: TObject);
begin
  dbedtCarteira.Color:= clSkyBlue;
  lblCarteira1.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.dbedtCarteiraExit(Sender: TObject);
begin
  dbedtCarteira.Color:= clWindow;
  lblCarteira1.Font.Style:= [];
end;

procedure TF_Principal.dbedtEmailEnter(Sender: TObject);
begin
  dbedtEmail.Color:= clSkyBlue;
  lblemail1.Font.Style:= [TFontStyle.fsBold]
end;

procedure TF_Principal.dbedtEmailExit(Sender: TObject);
begin
  dbedtEmail.Color:= clWindow;
  lblemail1.Font.Style:= []
end;

procedure TF_Principal.dbedtGrupo_CarteiraEnter(Sender: TObject);
begin
  dbedtGrupo_Carteira.Color:= clSkyBlue;
  lblCliente1.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.dbedtGrupo_CarteiraExit(Sender: TObject);
begin
  dbedtGrupo_Carteira.Color:= clWindow;
  lblCliente1.Font.Style:= [];
end;

procedure TF_Principal.dbedtHHExcelEnter(Sender: TObject);
begin
  dbedtHHExcel.Color:= clSkyBlue;
  lblArqExcel1.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.dbedtHHExcelExit(Sender: TObject);
begin
  dbedtHHExcel.Color:= clWindow;
  lblArqExcel1.Font.Style:= [];
end;

procedure TF_Principal.dbedtNomeEnter(Sender: TObject);
begin
  dbedtNome.Color:= clSkyBlue;
  lblNome1.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.dbedtNomeExit(Sender: TObject);
begin
  dbedtNome.Color:= clWindow;
  lblNome1.Font.Style:= [];
end;

procedure TF_Principal.EditPesqMemoEnter(Sender: TObject);
begin
  EditPesqMemo.Color:= clSkyBlue;
  lblPesMemo.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.EditPesqMemoExit(Sender: TObject);
begin
  EditPesqMemo.Color:= clWindow;
  lblPesMemo.Font.Style:= [];
end;

procedure TF_Principal.EditPesqMemoKeyPress(Sender: TObject; var Key: Char);
begin
  TabEnter(Self,Key); // Enter Virar TAB
end;

procedure TF_Principal.edtNomeModEnter(Sender: TObject);
begin
  edtNomeMod.Color:= clSkyBlue;
  lblclientepc2.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.edtNomeModExit(Sender: TObject);
begin
  edtNomeMod.Color:= clWindow;
  lblclientepc2.Font.Style:= [];
end;

procedure TF_Principal.edtNomePCEnter(Sender: TObject);
begin
  edtNomePC.Color:= clSkyBlue;
  lblclientepc.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.edtNomePCExit(Sender: TObject);
begin
  edtNomepc.Color:= clWindow;
  lblclientepc.Font.Style:= [];
end;

procedure TF_Principal.edtEmailEnter(Sender: TObject);
begin
  edtEmail.Color:= clSkyBlue;
  lblemail.Font.Style:= [TFontStyle.fsBold]
end;

procedure TF_Principal.edtEmailExit(Sender: TObject);
begin
  if not ValidarEmail(edtEmail.Text) then
    begin
       mensagem:= 'O E-MAIL Digitado n�o � valido';
       Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+ MB_ICONINFORMATION);
    end;

  edtEmail.Color:= clWindow;
  lblemail.Font.Style:= [TFontStyle.fsBold]
end;

procedure TF_Principal.edtEmailModEnter(Sender: TObject);
begin
  edtEmailMod.Color:= clSkyBlue;
  lblemailpc1.Font.Style:= [TFontStyle.fsBold]
end;

procedure TF_Principal.edtEmailModExit(Sender: TObject);
begin
  edtEmailMod.Color:= clWindow;
  lblemailpc1.Font.Style:= []
end;

procedure TF_Principal.edtEmailPcEnter(Sender: TObject);
begin
  edtEmailpc.Color:= clSkyBlue;
  lblemailpc.Font.Style:= [TFontStyle.fsBold]
end;

procedure TF_Principal.edtEmailPcExit(Sender: TObject);
begin
  edtEmailpc.Color:= clWindow;
  lblemailpc.Font.Style:= []
end;

procedure TF_Principal.edtNomeEnter(Sender: TObject);
begin
  edtNome.Color:= clSkyBlue;
  lblNome.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.edtNomeExit(Sender: TObject);
begin
  edtNome.Color:= clWindow;
  lblNome.Font.Style:= [];
end;

procedure TF_Principal.edtPesqExluirEnter(Sender: TObject);
begin
  edtPesqExluir.Color:= clSkyBlue;
  lbl12.Font.Style:= [TFontStyle.fsBold];
end;

procedure TF_Principal.edtPesqExluirExit(Sender: TObject);
begin
  edtPesqExluir.Color:= clWindow;
  lbl12.Font.Style:= [];
end;

procedure TF_Principal.edtPesqExluirKeyPress(Sender: TObject; var Key: Char);
begin
  if Trim(edtPesqExluir.Text) <> '' then
    begin
    // Buscar dados ao digitar.
      BuscaDadosExcluir;
    end;
end;

procedure TF_Principal.edtPesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Trim(edtPesquisa.Text) <> '' then
    begin
    // Buscar dados ao digitar.
      BuscaDados;
    end;
end;

procedure TF_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   AdoQ_Pesquisa.Close;
end;

procedure TF_Principal.FormCreate(Sender: TObject);
var
Servidor, senha, BancoDelphi: string;

begin
  Servidor:= 'PCLUCAS\SERVERLUCAS';
  senha:= 'Lucas123';
  BancoDelphi:= 'Testesss';

  UsuarioConexao:= GetNetUserName;

   // Fazendo a Conexao
    if (Trim(Servidor) <> '') and (Trim(Servidor) <> '') then
      Begin
        con_Geral.Connected:= False;
        con_Geral.ConnectionString := 'Provider=SQLOLEDB.1;Password=' + senha + ';Persist Security Info=True;User ID=sa;Initial Catalog=' + BancoDelphi +
           ';Data Source=' + Servidor + ';Use Procedure for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=' + Servidor +
           ';Use Encryption for Data=False;Tag with column collation when possible=False';
        Try
           con_Geral.Connected := true;
           btnStatusConexao.Enabled:= True;
        Except
           on E:Exception do
           Begin
              btnStatusConexao.Enabled:= False;
            //  lblConexao.Caption:= 'Falha na Conex�o BD';
              Showmessage('Erro ao conectar ao banco. Erro: CONEXAO COM O BANCO: ' + E.Message);
              Exit;
           End;
        End;
      End
    Else
      Begin
         Showmessage('Erro ao conectar ao servidor! Verifique seu arquivo .ini!');
         Exit;
      End;

   lblConexao.Caption:= UsuarioConexao;
   lblPesquisaADD.Caption:= UsuarioConexao; // Colocar nome de usuario Temporario depois coloca o arquivo que vai trabalhar.

 // Verificando o usuario para bloquear ou liberar o botao de ADD novo HH
  if (UsuarioConexao = 'lucas.tavares') or (UsuarioConexao = '1.1.12675') or (UsuarioConexao = 'lucas')  then
    begin
      btnADDNovoHH.Caption:= btnADDNovoHH.Caption + ' - ' + GetNetUserName;
      btnADDNovoHH.Enabled:= True;
    end
  else
    begin
       btnADDNovoHH.Caption:= btnADDNovoHH.Caption + ' - ' + GetNetUserName;
       btnADDNovoHH.Enabled:= False;
    end;
    Strinpesq:= '';

  UsuarioConexao:= 'Lucas Bisco Tavares';
 // Colocando o Forme no Tamanho
    Height:= 657;
    width:= 943;
end;

procedure TF_Principal.FormShow(Sender: TObject);
var
  pages: Integer; // para controlar as oaginas das abas
begin

 //Esconder aba que nao vai usar
  pgc_Geral.Pages[0].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[4].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[5].TabVisible:= False; // Colocando a aba de Pesquisa Visivel

  pgc_Geral.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao

// Colcar a Forma que esta pesquisando no edit
  edtPesquisa.TextHint:= 'Pesquisa Por: Nome, E-mail, HH_Excel, Grupo_Carteira, ONOFF';

// Jogar dados no rodape
  statPesquisa.Panels[0].Text:= UsuarioConexao;

  btnVoltar.Enabled:= False;

  // Dimensionando os botoes em cima
  lblConexao.Caption:= '  ' + lblConexao.Caption + '  ';
  lblConexao.Caption:= '  Lucas Bisco Tavares ' ;
  btnSeparador31.Width:= 200; //---240; //258 - 14 // lucas
end;

function TF_Principal.GetNetUserName: string;
Var
  NetUserNameLength: DWord;
Begin
  NetUserNameLength:=50;
  SetLength(Result, NetUserNameLength);
  GetUserName(pChar(Result),NetUserNameLength);
  SetLength(Result, StrLen(pChar(Result)));

end;

procedure TF_Principal.GridArqCadastradosCellClick(Column: TColumn);
var
qry: TADOQuery;
DTS: TDataSource;
strsql: string;

begin

  try
  // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
     qry:= TADOQuery.Create(nil);
     qry.Connection:= con_Geral;

  // Criando o Select
     strsql:= 'select * from hh.Lista_Email where HH_Excel = :ArqExcel and Grupo_Carteira = :Carteira and Cliente = :Clientes order by id desc';

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Parameters.ParamByName('ArqExcel').Value:= GridArqCadastrados.Fields[0].AsString;
            Parameters.ParamByName('Carteira').Value:= GridArqCadastrados.Fields[1].AsString;
            Parameters.ParamByName('Clientes').Value:= GridArqCadastrados.Fields[2].AsString;
            Open;

            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Arquivos Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                  statPesquisa.Panels[1].Text:= qry.RecordCount.ToString; // Mostrar quantidade de Registros
              end;

          end;
  Except
    on E:Exception do
       Begin
          Showmessage('Erro Arrumar: 2' + E.Message);
            Exit;
       End;
  End;
end;

procedure TF_Principal.GridArqCadastradosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // formata o t�tulo da coluna em negrito
  Column.Title.Font.Style := [fsBold];

  if gdSelected in State then
    begin
      // GridArqCadastrados.Canvas.Font.Color := clRed; // Texto da linha selecionada
       GridArqCadastrados.Canvas.Font.Style:= [TFontStyle.fsBold]; // Negritando linha Selecionada
       GridArqCadastrados.Canvas.Font.Size:= 10;  // Mudando o tamanho da Fonte
       //GridArqCadastrados.Canvas.Brush.Color:= clMoneyGreen; //linha selecionada
    end
  else
    if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'BV' then
       begin
         GridArqCadastrados.Canvas.Font.Style:= [];
         GridArqCadastrados.Canvas.Brush.Color:= $00F3B8C0;
         GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
       end
    else
       if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'ATIVOS' then
         begin
             GridArqCadastrados.Canvas.Font.Style:= [];
             GridArqCadastrados.Canvas.Brush.Color:= $00F3B8EB;
             GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
         end
       else
          if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'BOTICARIO' then
            begin
               GridArqCadastrados.Canvas.Font.Style:= [];
               GridArqCadastrados.Canvas.Brush.Color:= $00BBB8F9;
               GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
            end
          else
             if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'DIGIMAIS' then
                begin
                   GridArqCadastrados.Canvas.Font.Style:= [];
                   GridArqCadastrados.Canvas.Brush.Color:=  $00B8F9F4;
                   GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                end
             else
               if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'ITAPEVA_RCB' then
                  begin
                     GridArqCadastrados.Canvas.Font.Style:= [];
                     GridArqCadastrados.Canvas.Brush.Color:= $00B8F9BB;
                     GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                  end
               else
                 if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'OMNI' then
                    begin
                       GridArqCadastrados.Canvas.Font.Style:= [];
                       GridArqCadastrados.Canvas.Brush.Color:= $00F7F9B8;
                       GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                    end
                 else
                   if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'RETURN_IPANEMA' then
                      begin
                         GridArqCadastrados.Canvas.Font.Style:= [];
                         GridArqCadastrados.Canvas.Brush.Color:=$00F6F4E6;
                         GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                      end
                   else
                     if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'SEMEAR' then
                        begin
                           GridArqCadastrados.Canvas.Font.Style:= [];
                           GridArqCadastrados.Canvas.Brush.Color:= $00B8C6B6;
                           GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                        end
                     else
                       if AdoQ_Grid.FieldByName('Cliente').AsAnsiString = 'WECLIX' then
                          begin
                             GridArqCadastrados.Canvas.Font.Style:= [];
                             GridArqCadastrados.Canvas.Brush.Color:= $00F6E6F6;
                             GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                          end
                       else
                         begin
                             GridArqCadastrados.Canvas.Font.Style:= [];
                             GridArqCadastrados.Canvas.Brush.Color:= $00E0DEE2;
                             GridArqCadastrados.DefaultDrawColumnCell(Rect, DataCol, Column, State);
                          end;
end;

procedure TF_Principal.GridArqCadastradosTitleClick(Column: TColumn);
var
  sIndexName: string;
  i: smallint;
begin
  // configura a ordena��o ascendente ou descendente
  if AdoQ_Grid.Sort = Column.FieldName + ' ASC' then
     sIndexName := Column.FieldName + ' DESC'
  else
     sIndexName := Column.FieldName + ' ASC';

  // atribui a ordena��o selecionada
    AdoQ_Grid.Sort := sIndexName;
    AdoQ_Grid.First;
end;

procedure TF_Principal.GridExcluir1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // formata o t�tulo da coluna em negrito
  Column.Title.Font.Style := [fsBold];
end;

procedure TF_Principal.GridExcluirDblClick(Sender: TObject);
begin
  if GridExcluir.Tag = 1 then
    begin
      edtPesqExluir.Text:= (GridExcluir.DataSource.DataSet.FieldByName('email').AsString);

      ComboExcluirCliente.Clear;
      ComboExcluirCliente.Enabled:= True;
      ComboExcluirCliente.Items.Add (GridExcluir.DataSource.DataSet.FieldByName('cliente').AsString);
      ComboExcluirCliente.ItemIndex:= 0;

      ComboExcluirHH.Clear;
      ComboExcluirHH.Enabled:= True;
      ComboExcluirHH.Items.Add (GridExcluir.DataSource.DataSet.FieldByName('HH_Excel').AsString);
      ComboExcluirHH.ItemIndex:= 0;

      ComboExcluirCarteira.Clear;
      ComboExcluirCarteira.Enabled:= True;
      ComboExcluirCarteira.Items.Add (GridExcluir.DataSource.DataSet.FieldByName('GCarteira').AsString);
      ComboExcluirCarteira.ItemIndex:= 0;

      ComboExcluirCarteira.OnSelect(Sender);
      btnexcluir.Enabled:= True;
    end;

end;

procedure TF_Principal.GridExcluirDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // formata o t�tulo da coluna em negrito
  Column.Title.Font.Style := [fsBold];
end;

procedure TF_Principal.GridListaAdicaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // formata o t�tulo da coluna em negrito
  Column.Title.Font.Style := [fsBold];
end;

procedure TF_Principal.GridListaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
end;

procedure TF_Principal.GridListaMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 // Hint por coluna  Grid Aba principal - Aba Pesquisa
   GridLista.ShowHint := True;
    case GridLista.MouseCoord(X, Y).X of  {Coluna posicionada }
      1 : GridLista.Hint := 'C�digo Gerado pelo sistema';
      2 : GridLista.Hint := 'Nome da Pessoa';
      3 : GridLista.Hint := 'E-mail para recebimento';
      4 : GridLista.Hint := 'Nome do Arquivo de Excel';
      5 : GridLista.Hint := 'Seria um SubGrupo, Ex: BV tem o ADM, Comp e Cliente';
      6 : GridLista.Hint := 'Se Vai Receber o E-mail do Hora-hora';
    else GridLista.ShowHint := False;
    end;
end;

procedure TF_Principal.GridZebrado(RecNo: LongInt; Grid: TDBGrid; Rect: TRect;
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

procedure TF_Principal.imgVoltarClick(Sender: TObject);
begin
 //Esconder aba que nao vai usar
  pgc_Geral.Pages[3].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[0].TabVisible:= True; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[1].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
  pgc_Geral.Pages[2].TabVisible:= False; // Colocando a aba de Pesquisa Visivel
end;

procedure TF_Principal.RadioButonNRecebeClick(Sender: TObject);
var
strsql: string;

begin
   strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, cliente, case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe from hh.Lista_Email ';
   strsql:= strsql + ' where onoff = 0' ;

   with AdoQ_Pesquisa do
      begin
         Close;
         SQL.clear;;
         SQL.Add(strsql);
         Open;
         First;
         statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString; // Mostrar quantidade de Registros
      end;
end;

procedure TF_Principal.RadioButonRecebeClick(Sender: TObject);
var
strsql: string;

begin
   strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe from hh.Lista_Email ';
   strsql:= strsql + ' where onoff = 1' ;

   with AdoQ_Pesquisa do
       begin
           Close;
           SQL.clear;;
           SQL.Add(strsql);
           Open;
           First;
           statPesquisa.Panels[1].Text:= AdoQ_Pesquisa.RecordCount.ToString; // Mostrar quantidade de Registros
       end;
end;

procedure TF_Principal.RadioButtonBaseOutUserClick(Sender: TObject);
begin
// Base em outro
   btnAdicionar.Tag:= 3;

   pnlBotoesManipulacao.Top:= 73;
   pnlBotoesManipulacao.Visible:= True;
   pnlBotoesManipulacao.Enabled:= True;

   pnlBaseOutro.Top:= 118;

   pnlAddManualOpcao.Visible:= false;

   pnlManual.Visible:= False;
   pnlManual.Enabled:= False;

   pnlManualADDNovos.Enabled:= false;
   pnlManualADDNovos.Visible:= False;

   pnlPorCliente.Visible:= False;
   pnlPorCliente.Enabled:= False;

   pnlBaseOutro.Visible:=  True;

   pnlGridEdicao.Visible:= True;

   //Controle de botoes
   btnAdicionar.Enabled:= True;
   btnEditar.Enabled:= False;
   btnSalvar.Enabled:=False;
   btnCancelar.Enabled:= False;
end;

procedure TF_Principal.RadioButtonManualClick(Sender: TObject);
begin
// Manual
    pnlBotoesManipulacao.Visible:= False;
    pnlBotoesManipulacao.Enabled:= False;

    pnlAddManualOpcao.Visible:= True;
    pnlAddManualOpcao.Top:= 73;

    pnlPorCliente.Visible:= False;
    pnlPorCliente.Enabled:= False;

    pnlBaseOutro.Visible:=  False;
    pnlBaseOutro.Enabled:= False;

    pnlGridEdicao.Visible:= False;

    RadioGroupArquiNovo.Checked:= False;
    RadioGroupArquiExist.Checked:= False;

    //Controle de botoes
    btnAdicionar.Enabled:= True;
    btnEditar.Enabled:= False;
    btnSalvar.Enabled:=False;
    btnCancelar.Enabled:= False;
end;

procedure TF_Principal.RadioButtonPorClienteClick(Sender: TObject);
begin
// Por Cliente
   btnAdicionar.Tag:= 2;

   pnlBotoesManipulacao.Top:= 73;
   pnlBotoesManipulacao.Visible:= True;
   pnlBotoesManipulacao.Enabled:= True;

   pnlPorCliente.Top:= 118;
   pnlPorCliente.Visible:= True;

   pnlGridEdicao.Visible:= True;

   pnlAddManualOpcao.Visible:= false;

   pnlManual.Visible:= False;
   pnlManual.Enabled:= False;

   pnlManualADDNovos.Enabled:= false;
   pnlManualADDNovos.Visible:= False;

   pnlBaseOutro.Visible:=  False;
   pnlBaseOutro.Enabled:= False;

   //Controle de botoes
   btnAdicionar.Enabled:= True;
   btnEditar.Enabled:= False;
   btnSalvar.Enabled:=False;
   btnCancelar.Enabled:= False;
end;

procedure TF_Principal.RadioGroupADDContasClick(Sender: TObject);
begin
{  if RadioGroupADDContas.ItemIndex = 0 then          // Manual
    begin
        pnlBotoesManipulacao.Visible:= False;
        pnlBotoesManipulacao.Enabled:= False;

        pnlAddManualOpcao.Visible:= True;
        pnlAddManualOpcao.Top:= 73;

        pnlPorCliente.Visible:= False;
        pnlPorCliente.Enabled:= False;

        pnlBaseOutro.Visible:=  False;
        pnlBaseOutro.Enabled:= False;

        pnlGridEdicao.Visible:= False;

        RadioGroupArquiNovo.Checked:= False;
        RadioGroupArquiExist.Checked:= False;

        //Controle de botoes
        btnAdicionar.Enabled:= True;
        btnEditar.Enabled:= False;
        btnSalvar.Enabled:=False;
        btnCancelar.Enabled:= False;
    end;

  if RadioGroupADDContas.ItemIndex = 1 then    // Por Cliente
    begin
        btnAdicionar.Tag:= 2;

        pnlBotoesManipulacao.Top:= 73;
        pnlBotoesManipulacao.Visible:= True;
        pnlBotoesManipulacao.Enabled:= True;

        pnlPorCliente.Top:= 118;
        pnlPorCliente.Visible:= True;

        pnlGridEdicao.Visible:= True;

        pnlAddManualOpcao.Visible:= false;

        pnlManual.Visible:= False;
        pnlManual.Enabled:= False;

        pnlManualADDNovos.Enabled:= false;
        pnlManualADDNovos.Visible:= False;

        pnlBaseOutro.Visible:=  False;
        pnlBaseOutro.Enabled:= False;

        //Controle de botoes
        btnAdicionar.Enabled:= True;
        btnEditar.Enabled:= False;
        btnSalvar.Enabled:=False;
        btnCancelar.Enabled:= False;

    end;

  if RadioGroupADDContas.ItemIndex = 2 then    // Base em outro
    begin
        btnAdicionar.Tag:= 3;

        pnlBotoesManipulacao.Top:= 73;
        pnlBotoesManipulacao.Visible:= True;
        pnlBotoesManipulacao.Enabled:= True;

        pnlBaseOutro.Top:= 118;

        pnlAddManualOpcao.Visible:= false;

        pnlManual.Visible:= False;
        pnlManual.Enabled:= False;

        pnlManualADDNovos.Enabled:= false;
        pnlManualADDNovos.Visible:= False;

        pnlPorCliente.Visible:= False;
        pnlPorCliente.Enabled:= False;

        pnlBaseOutro.Visible:=  True;

        pnlGridEdicao.Visible:= True;

        //Controle de botoes
        btnAdicionar.Enabled:= True;
        btnEditar.Enabled:= False;
        btnSalvar.Enabled:=False;
        btnCancelar.Enabled:= False;
    end;  }
end;

procedure TF_Principal.RadioGroupArquiExistClick(Sender: TObject);
begin
   btnAdicionar.Tag:= 1;

   pnlBotoesManipulacao.Top:= 108;
   pnlBotoesManipulacao.Visible:= True;
   pnlBotoesManipulacao.Enabled:= True;

   pnlManual.Top:= 153;
   pnlManual.Visible:= True;
   pnlManual.Enabled:= False;

   pnlManualADDNovos.Visible:= False;
   pnlManualADDNovos.Enabled:= False;

   pnlGridEdicao.Visible:= True;
end;

procedure TF_Principal.RadioGroupArquiNovoClick(Sender: TObject);
begin
   btnAdicionar.Tag:= 12;

   pnlBotoesManipulacao.Top:= 108;
   pnlBotoesManipulacao.Visible:= True;
   pnlBotoesManipulacao.Enabled:= True;

   pnlManualADDNovos.Top:= 153;
   pnlManualADDNovos.Visible:= True;
   pnlManualADDNovos.Enabled:= False;

   pnlGridEdicao.Visible:= True;

   pnlManual.Visible:= False;
   pnlManual.Enabled:= False;
end;


procedure TF_Principal.rbExcluirArquivoClick(Sender: TObject);
var
  qry: TADOQuery;
  strSQL: string;
begin
  GridExcluir.Tag:= 2;

  pnlPesqExcluir.Visible:=False;
  pnlPesqExcluir.Enabled:= False;

  pnlEdicao.Visible:= False;
  Height:= 657;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

  lblAntesMudanca.Visible:= False;

  edtPesqExluir.Clear;
  ComboExcluirCliente.Clear;
  ComboExcluirHH.Clear;
  ComboExcluirCarteira.Clear;
  ComboExcluirClienteCL.Clear;
  ComboExcluirArqExcCL.Clear;
  ComboExcluirGCarteiraCL.Clear;
  AdoQ_Pesquisa.Close;


   try
   // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente
     qry:= TADOQuery.Create(nil);
     qry.Connection:= con_Geral;

   // Criando o Select
     strSql:= 'select distinct Cliente from hh.Lista_Email Order by cliente' ;

     with qry do
         begin
           Close;
           SQL.Clear;
           SQL.Add(strSql);
           Open;
           First;
           if (qry.RecordCount = 0) then // Se n�o encontrar dados
              begin
                 mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                          +'Favor Verificar com Ad. Do Banco.';
                 Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
              end
           else
             begin
//               ComboExcluirCliente.Clear;
                while not qry.Eof do
                  begin
                     ComboExcluirClienteCL.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
                     qry.Next;
                  end;
             end;
         end;
   Except
     on E:Exception do
        Begin
           Showmessage('Erro Arrumar:4 ' + E.Message);
           Exit;
        End;
   End;

  pnlSemEmail.Top:= 49;
  pnlSemEmail.Visible:= True;
  pnlSemEmail.Enabled:=True;
  pnlGridEscluir.Visible:= True;
  pnlGridEscluir.Align:= alClient;
  statPesquisa.Panels[1].Text:= '';
end;

procedure TF_Principal.rbExcluirEmailClick(Sender: TObject);
begin
  GridExcluir.Tag:= 1;

  pnlSemEmail.Visible:= False;
  pnlSemEmail.Enabled:=False;

  pnlPesqExcluir.Top:= 49;
  pnlPesqExcluir.Visible:=True;
  pnlPesqExcluir.Enabled:= True;
  edtPesqExluir.SetFocus;
  pnlGridEscluir.Visible:= True;
  pnlGridEscluir.Top:= 243;

  pnlEdicao.Visible:= False;
  Height:= 657;
  F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
  F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

  lblAntesMudanca.Visible:= False;

  edtPesqExluir.Clear;
  ComboExcluirCliente.Clear;
  ComboExcluirHH.Clear;
  ComboExcluirCarteira.Clear;
  ComboExcluirClienteCL.Clear;
  ComboExcluirArqExcCL.Clear;
  ComboExcluirGCarteiraCL.Clear;
  AdoQ_Pesquisa.Close;
  statPesquisa.Panels[1].Text:= '';

end;

procedure TF_Principal.rbVoltarEmailClick(Sender: TObject);
begin

  pnlPesqExcluir.Visible:=False;
  pnlPesqExcluir.Enabled:= False;

  pnlSemEmail.Visible:= False;
  pnlSemEmail.Enabled:=False;
  pnlGridEscluir.Visible:= True;
  pnlGridEscluir.Align:= alClient;

  pnlEdicao.Visible:= False;
  Height:= 657;
  F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
  F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

  lblAntesMudanca.Visible:= False;

  edtPesqExluir.Clear;
  ComboExcluirCliente.Clear;
  ComboExcluirHH.Clear;
  ComboExcluirCarteira.Clear;
  ComboExcluirClienteCL.Clear;
  ComboExcluirArqExcCL.Clear;
  ComboExcluirGCarteiraCL.Clear;
  AdoQ_Pesquisa.Close;
  statPesquisa.Panels[1].Text:= '';
end;

procedure TF_Principal.RGPesquisaGeralClick(Sender: TObject);
begin
   if RGPesquisaGeral.ItemIndex = 0 then
      begin
         VarBusca:= 'Todas';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' TODOS';

         RadioButonRecebe.Visible:= False;
         RadioButonNRecebe.Visible:= False;
         edtPesquisa.Visible:= True;
         edtPesquisa.SetFocus;
      end;
   if RGPesquisaGeral.ItemIndex = 1 then
      begin
         VarBusca:= 'nome';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' NOME';

         RadioButonRecebe.Visible:= False;
         RadioButonNRecebe.Visible:= False;
         edtPesquisa.Visible:= True;
         edtPesquisa.SetFocus;
      end;

   if RGPesquisaGeral.ItemIndex = 2 then
      begin
         VarBusca:= 'mail';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' E-MAIL';

         RadioButonRecebe.Visible:= False;
         RadioButonNRecebe.Visible:= False;
         edtPesquisa.Visible:= True;
         edtPesquisa.SetFocus;
      end;
   if RGPesquisaGeral.ItemIndex = 3 then
      begin
         VarBusca:= 'hhExcel';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' ARQ. EXCEL';

         RadioButonRecebe.Visible:= False;
         RadioButonNRecebe.Visible:= False;
         edtPesquisa.Visible:= True;
         edtPesquisa.SetFocus;
      end;
   if RGPesquisaGeral.ItemIndex = 4 then
      begin
         VarBusca:= 'Gcarteira';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' GRUPO CARTEIRA';

         RadioButonRecebe.Visible:= False;
         RadioButonNRecebe.Visible:= False;
         edtPesquisa.Visible:= True;
         edtPesquisa.SetFocus;
      end;

   if RGPesquisaGeral.ItemIndex = 5 then
      begin
         VarBusca:= 'onoff';
         edtPesquisa.Clear;
         lblPesquisaDesc.Caption:= '';
         lblPesquisaDesc.Caption:=  ' RECEBE';

         edtPesquisa.Visible:= False;

         RadioButonRecebe.Visible:= True;
         RadioButonNRecebe.Visible:= True;
         RadioButonRecebe.Checked:= False;
         RadioButonNRecebe.Checked:= False;

      end;

end;


procedure TF_Principal.SheetArqEmailShow(Sender: TObject);
var
qry: TADOQuery;
strsql: string;

begin
  btnVoltar.Enabled:= True;

// Criando Um ADOQUERY Em Tempo de Execu��o
   qry:= TADOQuery.Create(nil);
   qry.Connection:= con_Geral;

// Criando o Select
   strSql:= 'select distinct  HH_Excel from hh.Lista_Email where HH_Excel is not null order by HH_Excel';

  with qry do
       begin
         Close;
         SQL.Clear;
         SQL.Add(strSql);
         Open;
         First;
         if (qry.RecordCount = 0) then // Se n�o encontrar dados
            begin
               mensagem:= ' N�o Existe Arquivo de Excel, ' + #13
                        +'Favor Verificar com Ad. Do Banco.';
               Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
            end
         else
           begin
              while not qry.Eof do
                begin
                   ComboEmailEnviado.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                   qry.Next;
                end;
           end;
       end;
 // Mudar Tamanho do Form
  F_Principal.Height:= 570;
end;

procedure TF_Principal.SheetArquivosShow(Sender: TObject);
var
qry: TADOQuery;
DTS: TDataSource;
strsql: string;

begin
  btnVoltar.Enabled:= True;
  // Mostrar os dados

  try
  // Criando Um ADOQUERY Em Tempo de Execu��o para buscar clientes
    // qry:= TADOQuery.Create(nil);
   //  qry.Connection:= con_Geral;

  // Criando um Data Source em tem de execu��o
    // DTS:= TDataSource.Create(nil);

  // Criando o Select
     //strsql:= 'select distinct HH_Excel, Grupo_Carteira, Cliente from hh.Lista_Email order by Cliente';

      with AdoQ_Grid do
          begin
            Close;
            SQL.Clear;
            SQL.Add('select distinct HH_Excel, Grupo_Carteira, Cliente from hh.Lista_Email order by Cliente');
            Open;
            //First;
            if (AdoQ_Grid.RecordCount = 0) then // Se n�o encontrar dados
               begin
                  mensagem:= ' N�o Existe Arquivos Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
               //   DTS.DataSet:= qry;
                //  GridArqCadastrados.DataSource:= DTS;

              //Configurando a Grid
               //   GridArqCadastrados.Columns[0].Title.Caption:= 'Arquivo Excel';
               //   GridArqCadastrados.Columns[0].Width:= 287;
               //
               //   GridArqCadastrados.Columns[1].Title.Caption:= 'Carteira';
                //  GridArqCadastrados.Columns[1].Width:= 287;

                 // GridArqCadastrados.Columns[2].Title.Caption:= 'Cliente';
                //  GridArqCadastrados.Columns[2].Width:= 287;

              end;

          end;
  Except
    on E:Exception do
       Begin
          Showmessage('Erro Arrumar: ' + E.Message);
            Exit;
       End;
  End;

end;

procedure TF_Principal.SheetPesquisaShow(Sender: TObject);
begin
 // Colocando o Forme no Tamanho
    Height:= 657;
    width:= 943;
end;

procedure TF_Principal.TabEnter(auxForm: TForm; var key: char);
begin
   with auxForm do
      begin
          if Key = #13 then
            begin
                if not (ActiveControl is TDBGrid) then
                    begin
                        Key:=#0;
                        Perform(wm_nextdlgctl,0,0);
                    end;
            end;
      end;
end;

function TF_Principal.ValidarEmail(email: string): Boolean;
begin
  email := Trim(UpperCase(email));
    if Pos('@', email) > 1 then
      begin
        Delete(email, 1, pos('@', email));
        Result := (Length(email) > 0) and (Pos('.', email) > 2) and (Pos(' ', email) = 0);
      end
    else
      begin
        Result := False;
      end;
end;


end.
