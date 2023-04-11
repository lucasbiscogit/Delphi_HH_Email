unit U_Configuracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Data.Win.ADODB,
  Vcl.ComCtrls, Vcl.ToolWin, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, Vcl.Mask;

type
// Metodo Para Execu��es
  TExecutar = (navegacao, sentencaSQL, exibePanels, desabilitaBotoes, habilitaBotoes, exibeBotoes);   // Tipo de Dado Enumerado

  TF_Configuracao = class(TForm)
    ImageListHabilitado: TImageList;
    ImageListDesabilitado: TImageList;
    ToolBarCadPadrao: TToolBar;
    btnSeparador1: TToolButton;
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
    ADOQConfiguracao: TADOQuery;
    DSConfiguracao: TDataSource;
    ADOQConfiguracaoID: TAutoIncField;
    ADOQConfiguracaoSTATUS: TStringField;
    ADOQConfiguracaoINATIVO: TStringField;
    ADOQConfiguracaoDATA_INC: TDateTimeField;
    ADOQConfiguracaoDATA_ALT: TDateTimeField;
    ADOQConfiguracaoDATA_HAB: TDateTimeField;
    ADOQConfiguracaoVLTXSERVICO: TBCDField;
    PageControlCadastro: TPageControl;
    pnlFichaCampos: TPanel;
    statBarPadrao: TStatusBar;
    GroupBox1: TGroupBox;
    edtTxLeitura: TDBEdit;
    ADOQConfiguracaoVLTXAGUA: TBCDField;
    GroupBox2: TGroupBox;
    edtTxAgua: TDBEdit;
    procedure btnSairClick(Sender: TObject);
    procedure btnInicioClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnFinalClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnReverterClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtTxLeituraEnter(Sender: TObject);
    procedure edtTxLeituraExit(Sender: TObject);
    procedure edtTxAguaEnter(Sender: TObject);
    procedure edtTxAguaExit(Sender: TObject);
    procedure edtTxLeituraKeyPress(Sender: TObject; var Key: Char);
    procedure edtTxAguaKeyPress(Sender: TObject; var Key: Char);
    procedure btnImpressaoClick(Sender: TObject);
  private
    FExecutar: TExecutar; // do Type EXECUTAR
    procedure SetExecutar(const Value: TExecutar); // do Type EXECUTAR
    { Private declarations }

  public
    { Public declarations }
    property Executar: TExecutar read FExecutar write SetExecutar;      // do Type EXECUTAR

  end;

var
  F_Configuracao: TF_Configuracao;

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
  U_DMPrincipal, U_PesqData, U_Principal, U_DMRelatorios;

{$R *.dfm}

procedure TF_Configuracao.btnAlterarClick(Sender: TObject);
begin
  ADOTabela.Edit;                                  //*********** ADOQUERY = ADOTABELS **************************************

// Inclusao do Registro
  ADOTabela.FieldByName('DATA_ALT').AsDateTime:= Date;      //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
    pnlFichaCampos.Enabled:= true;

// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Altera�ao de Registro';
  Executar:= exibePanels ;

  //PageControlCadastro.ActivePage:= TabSheetFicha; // Colocando a Tela Certa
end;

procedure TF_Configuracao.btnAnteriorClick(Sender: TObject);
begin
     ADOTabela.Prior; // Registro Anterior         //*********** ADOQUERY = ADOTABELS **************************************
     Executar:= navegacao; // Executando o metodo Navega��o
     Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_Configuracao.btnFinalClick(Sender: TObject);
begin
    ADOTabela.Next; // Proximo Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_Configuracao.btnGravarClick(Sender: TObject);
var
 strValorChave: string;
 qry: TADOQuery;
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

{Habilita��o e Exibicao de Objetos}
    Executar:= habilitaBotoes;
    pnlFichaCampos.Enabled:= False;
    ADOQConfiguracao.Open;

 // Verificando se e a primeira vez que entra na tela para adicionar registro para habilitar os botoes de add e alter
 try
  // Criando Um ADOQUERY Em Tempo de Execu��o
   qry:= TADOQuery.Create(nil);
   qry.Connection:= DMPrincipal.ADOConnectionPrincipal;

// Usando o ADOQUERY Criado
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select * from TB_CONFIGURACAO');
  qry.Open;

  if (qry.RecordCount = 0)  then
    begin
       btnIncluir.Visible:= True;
       btnIncluir.Enabled:= True;
       btnAlterar.Visible:= False;
       btnAlterar.Enabled:= False;
    end
  else
    begin
       btnIncluir.Visible:= False;
       btnIncluir.Enabled:= False;
       btnAlterar.Visible:= True;
       btnAlterar.Enabled:= True;
    end;
finally
  FreeAndNil(qry);
end;
end;

procedure TF_Configuracao.btnImpressaoClick(Sender: TObject);
begin
 caminhoRelBanco:= 'C:\Gerar_Contas_Chacaras\RELATORIO\';   // Caminho do Relatorio
 DMRelatorios.frxRConfiguracaoGeral.LoadFromFile(caminhoRelBanco+'RelConfigGeralSistema.fr3'); // Lendo o Arquivo de Relatorio
 DMRelatorios.frxRConfiguracaoGeral.Variables['NomeForm']:= QuotedStr(nomeJanela); // Colocando a Variavel do titulo do Relatorio
 DMRelatorios.frxRConfiguracaoGeral.Variables['NomePrograma']:= QuotedStr(NoEmpresa); // Colocando a Variavel do titulo do Relatorio
 DMRelatorios.frxRConfiguracaoGeral.ShowReport();   // Mostrando o Relaotrio

  //F_Principal.ActionMenuPrincipal.actRelConfigExecute;
 // F_Principal.actRelConfigExecute(Sender);
end;

procedure TF_Configuracao.btnIncluirClick(Sender: TObject);
begin
   ADOTabela.Active:= True;    //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Open;             //*********** ADOQUERY = ADOTABELS **************************************
   ADOTabela.Insert;           //*********** ADOQUERY = ADOTABELS **************************************

// Habilita a Exibi��o de Objetos
   pnlFichaCampos.Enabled:= true;

   edtTxLeitura.SetFocus; // Colocando o Foco no edit

// Inclusao do Registro
  ADOTabela.FieldByName('STATUS').AsAnsiString:= 'H';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_INC').AsDateTime:= Date;             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('INATIVO').AsAnsiString:= 'N';             //*********** ADOQUERY = ADOTABELS **************************************
  ADOTabela.FieldByName('DATA_HAB').AsDateTime:= date;        //*********** ADOQUERY = ADOTABELS **************************************


// Botoes da Barra de Estatus
  Executar:= desabilitaBotoes;
  statBarPadrao.Panels[2].Text:=' Inclus�o de Novo Registro';
  Executar:= exibePanels ;

end;

procedure TF_Configuracao.btnInicioClick(Sender: TObject);
begin
    ADOTabela.First; // Primeiro Registro             //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;  // Executando o metodo Exibepanels
end;

procedure TF_Configuracao.btnProximoClick(Sender: TObject);
begin
    ADOTabela.Last; // Ultimo Registro                   //*********** ADOQUERY = ADOTABELS **************************************
    Executar:= navegacao; // Executando o metodo Navega��o
    Executar:=exibePanels;   // Executando o metodo Exibepanels
end;

procedure TF_Configuracao.btnReverterClick(Sender: TObject);
var
qry: TADOQuery;
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

        btnIncluir.Enabled:= true;
        btnAlterar.Enabled:= false;
        btnGravar.Enabled:= false;
        btnReverter.Enabled:= false;
        btnSair.Enabled:=true;

       ADOTabela.Cancel;                             //*********** ADOQUERY = ADOTABELS **************************************

{Habilita��o e Exibicao de Objetos}
    PageControlCadastro.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao

    pnlFichaCampos.Enabled:= False;

   // Limpando o Status Bar
     statBarPadrao.Panels[0].Text:= '';
     statBarPadrao.Panels[1].Text:= '';
     statBarPadrao.Panels[2].Text:= '';
     statBarPadrao.Panels[3].Text:= '';

// Verificando se e a primeira vez que entra na tela para adicionar registro para habilitar os botoes de add e alter
 try
  // Criando Um ADOQUERY Em Tempo de Execu��o
   qry:= TADOQuery.Create(nil);
   qry.Connection:= DMPrincipal.ADOConnectionPrincipal;

// Usando o ADOQUERY Criado
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select * from TB_CONFIGURACAO');
  qry.Open;

  if (qry.RecordCount = 0)  then
    begin
       btnIncluir.Visible:= True;
       btnIncluir.Enabled:= True;
       btnAlterar.Visible:= False;
       btnAlterar.Enabled:= False;
    end
  else
    begin
       btnIncluir.Visible:= False;
       btnIncluir.Enabled:= False;
       btnAlterar.Visible:= True;
       btnAlterar.Enabled:= True;
    end;
finally
  FreeAndNil(qry);
end;
end;

procedure TF_Configuracao.btnSairClick(Sender: TObject);
begin
  Close; // Fechar a Tela
end;


procedure TF_Configuracao.edtTxAguaEnter(Sender: TObject);
begin
  edtTxAgua.Color:= clMoneyGreen;
end;

procedure TF_Configuracao.edtTxAguaExit(Sender: TObject);
begin
  if Trim(edtTxAgua.Text) = '' then
    begin
      edtTxAgua.Text:= '0,00';
    end;

  edtTxAgua.Color:= clWhite;
end;

procedure TF_Configuracao.edtTxAguaKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_Configuracao.edtTxLeituraEnter(Sender: TObject);
begin
   edtTxLeitura.Color:= clMoneyGreen;
end;

procedure TF_Configuracao.edtTxLeituraExit(Sender: TObject);
begin
  if Trim(edtTxLeitura.Text) = '' then
    begin
      edtTxLeitura.Text:= '0,00';
    end;
   edtTxLeitura.Color:= clWhite;
end;

procedure TF_Configuracao.edtTxLeituraKeyPress(Sender: TObject; var Key: Char);
begin
//ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_Configuracao.FormActivate(Sender: TObject);
var
qry: TADOQuery;
begin
  ADOTabela:= ADOQConfiguracao;   // Definindo o Valor da Variavel que ira Receber o ADOQuery   //*********** ADOQUERY = ADOTABELS ******************
  nomeTabela:= 'TB_CONFIGURACAO'; // Definindo a Tabela para trabalhar
  nomeJanela:= 'Configuracao do Sistema';  // Nome que ira aparecer
  //GridLista.DataSource:= DSConfiguracao;    //Colocando o Data Source no Grid
  //DescPrincipal:= 'DESC_USUARIO';  // Define o Campo que ira Fazer a Pesquisa Padrao por Desc.

    ModoEdicao:= F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_INC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_ALT').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_EXC').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_MAR').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_IMP').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_INA').AsAnsiString +
                 F_Principal.ADOQLogin.FieldByName('CONFIGURACAO_HAB').AsAnsiString;

// Caption dos ApplicationMessageBox  Do EXECUTAR SentencaSQL
    MensageAppMesBox:= 'CONFIGURACAO DO SISTEMA';

// Evento do Form Active
    Executar:= exibeBotoes;
    PageControlCadastro.ActivePageIndex:= 0;    // Definindo qual aba abre por padrao
//*********************************************
// Habilitar e Desabilitar os Botoes
    btnIncluir.Enabled:=      True;
    btnAlterar.Enabled:=          False;
    btnGravar.Enabled:=           False;
    btnReverter.Enabled:=         False;
    btnSair.Enabled:=         True;
    btnImpressao.Enabled:=        False;
//**************************************************
// Controlando o Panel e Check
    pnlFichaCampos.Enabled:= False;

// Verificando se e a primeira vez que entra na tela para adicionar registro para habilitar os botoes de add e alter
 try
  // Criando Um ADOQUERY Em Tempo de Execu��o
   qry:= TADOQuery.Create(nil);
   qry.Connection:= DMPrincipal.ADOConnectionPrincipal;

// Usando o ADOQUERY Criado
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('select * from TB_CONFIGURACAO');
  qry.Open;

  if (qry.RecordCount = 0)  then
    begin
       btnIncluir.Visible:= True;
       btnIncluir.Enabled:= True;
       btnAlterar.Visible:= False;
       btnAlterar.Enabled:= False;
    end
  else
    begin
       btnIncluir.Visible:= False;
       btnIncluir.Enabled:= False;
       btnAlterar.Visible:= True;
       btnAlterar.Enabled:= True;
       btnImpressao.Enabled:= True;
    end;
finally
  FreeAndNil(qry);
end;
 ADOQConfiguracao.Open;

 btnImpressao.ImageIndex:= 13;   // Colocando a Imagem certa no botao impressao
end;

procedure TF_Configuracao.SetExecutar(const Value: TExecutar);
begin
  FExecutar := Value;   {$REGION 'TEXECUTAR'} // Inicio   // Executar === Criacao Inicio

  case value of


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

                else

            end;  {$ENDREGION} // Fim

   desabilitaBotoes:   {$REGION 'DESABILITA BOTOES'} // Inicio                                   // ####### Metodo EXECUTAR DESABILITA BOTOES ##########################
// {Desabilita botoes ao Incluir ou alterar um registro}     // ####### Metodo EXECUTAR ##########################
// Desabilitar os Botoes
            begin
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
                     //btnAutoFiltrar.Enabled:=  True;
                     btnIncluir.Enabled:=      True;

                 if ADOTabela.RecordCount > 0 then              //*********** ADOQUERY = ADOTABELS **************************************
                    begin
                        btnImpressao.Enabled:= True;
                    end
                 else

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
                //
                ////btnMarcar.Visible:=     False;
                ////CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNNS' then      //2
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=        True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNNSN' then       //3
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                ////CheckInativo.Visible:=          True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNNNNSS' then        //4
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                ////CheckInativo.Visible:=          True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;
         if modoEdicao = 'NNNNSNN' then        //5
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSNS' then     //6
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNNNSSN' then       //7
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                ////CheckInativo.Visible:=          True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:=         True;
            end;

         if modoEdicao = 'NNNNSSS' then        //8
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                btnImpressao.Visible:=          True;
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
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:= False;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNSNN' then     //11
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=          True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=          True;
                btnSeparador4.Visible:=          True;
            end;

         if modoEdicao = 'NNSNNSN' then      //12
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                ////CheckInativo.Visible:=          True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=         True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NNSNNSS' then     //13
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=          True;
                //CheckHabilita.Visible:=         True;
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
                btnImpressao.Visible:=        True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NNSNSSS' then       //16
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
               // CheckHabilita.Visible:=       True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNNNN' then       //17
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNNS' then      //18
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSN' then      //19
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=       True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNNSS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSNNSNN' then           //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:=      True;
            end;

         if modoEdicao = 'NSNNSNS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSNNSSS' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNNNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNNS' then         //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSN' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNNSS' then        //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'NSSNSNN' then          //20
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSNS' then         //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSN' then           //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'NSSNSSS' then             //30
            begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNNSN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNN' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNNSS' then           //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNNSNS' then            //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSN' then             //30
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNNSSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNN' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                ////CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSNNS' then              //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSN' then             //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSNSS' then            //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNNSSNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSNS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSN' then         //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNNSSSS' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNNNN' then          //40
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSN' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNNSS' then            //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSNSNN' then           //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSNS' then          //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSNSSS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSNNN' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNNS' then        //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSN' then         //50
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSNSS' then          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SNSSSNN' then         //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSNS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSN' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SNSSSSS' then        //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
            end;

         if modoEdicao = 'SSNSNNN' then      ///          //60
            begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
            end;

         if modoEdicao = 'SSNSNNS' then                 //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSN' then       //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSNSS' then         //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNSSNN' then           //60
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSNS' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNSSSN' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSNNNNN' then          //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=          True;
                btnReverter.Visible:=        True;
                btnSeparador3.Visible:=      True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNNS' then           //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSNNNSN' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNNSS' then             //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNN' then              //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSNNSNS' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSN' then            //70
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSNNSSS' then              //80
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSNNN' then              //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNNS' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSNSN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

           if modoEdicao = 'NSNSNSS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NSNSSNN' then             //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSNS' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSNSSSN' then          //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSNSSSS' then           //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NNSSNNN' then         //80
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNSSNNS' then          //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'NNSSNSN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSNSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNSSSNN' then             //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSNS' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNSSSSN' then              //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNSSSSS' then            //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NNNSNNN' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NNNSNNS' then           //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSN' then         //90
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSNSS' then          //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NNNSSNN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSNS' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NNNSSSN' then           //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

        if modoEdicao = 'NNNSSSS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=    False;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=     False;
                btnReverter.Visible:=   False;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'NSSSNNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSNNS' then             //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'NSSSNSS' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

        if modoEdicao = 'NSSSSNN' then            //100
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'NSSSSNS' then         //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;                 ;
              end;

          if modoEdicao = 'NSSSSSN' then            //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'NSSSSSS' then           //110
              begin
                btnIncluir.Visible:=    False;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNNNN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNNS' then            //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNNSN' then           //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

         if modoEdicao = 'SSSNNSS' then         //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSNSNN' then        //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

          if modoEdicao = 'SSSNSNS' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSNSSN' then      //110
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSNSSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=     False;
                //CheckMarca.Visible:=    False;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

         if modoEdicao = 'SSSSNNN' then           //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:= False;
              end;

          if modoEdicao = 'SSSSNNS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSNSN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

            if modoEdicao = 'SSSSNSS' then        //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=  False;
                //CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNN' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSNS' then          //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                //CheckInativo.Visible:=  False;
                //CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSN' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                ////CheckInativo.Visible:=        True;
                //CheckHabilita.Visible:= False;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;

           if modoEdicao = 'SSSSSSS' then         //120
              begin
                btnIncluir.Visible:=          True;
                btnAlterar.Visible:=          True;
                //
                //btnMarcar.Visible:=           True;
                //CheckMarca.Visible:=          True;
                btnImpressao.Visible:=        True;
                ////CheckInativo.Visible:=        True;
                ////CheckHabilita.Visible:=         True;
                btnGravar.Visible:=           True;
                btnReverter.Visible:=         True;
                btnSeparador3.Visible:=       True;
                btnSeparador4.Visible:=       True;
              end;
       end;{$ENDREGION}
  {$ENDREGION} // Fim
  end;
end;

end.
