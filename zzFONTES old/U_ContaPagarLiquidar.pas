unit U_ContaPagarLiquidar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, Vcl.Buttons, Vcl.Mask;

type
  TF_ContaPagarLiquidar = class(TForm)
    pnlGrid: TPanel;
    pnlLabels: TPanel;
    GridCpagar: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    lblDtLancamento: TLabel;
    lblNumDoc: TLabel;
    lblClassContabil: TLabel;
    lblFornec: TLabel;
    lblNumParcela: TLabel;
    lblValorParcela: TLabel;
    lblTotalParcela: TLabel;
    lblValorTotal: TLabel;
    lblVencimento: TLabel;
    ADOFornec: TADOQuery;
    ADOClasse: TADOQuery;
    ADOContasPagar: TADOQuery;
    DSContasPagar: TDataSource;
    lblRs2: TLabel;
    lblRs: TLabel;
    ADOCaixaHistorico: TADOQuery;
    ADOCaixa: TADOQuery;
    Label14: TLabel;
    ADOCaixaHistoricoID: TAutoIncField;
    ADOCaixaHistoricoID_CAIXAMOV: TIntegerField;
    ADOCaixaHistoricoSTATUS: TStringField;
    ADOCaixaHistoricoINATIVO: TStringField;
    ADOCaixaHistoricoDATA_INC: TDateTimeField;
    ADOCaixaHistoricoDATA_ALT: TDateTimeField;
    ADOCaixaHistoricoDATA_HAB: TDateTimeField;
    ADOCaixaHistoricoSERVICO: TStringField;
    ADOCaixaHistoricoCLIENTE: TStringField;
    ADOCaixaHistoricoHISTORICO: TStringField;
    ADOCaixaHistoricoVLMOVIMENTO: TBCDField;
    ADOCaixaHistoricoESPECIE: TStringField;
    ADOCaixaHistoricoTIPO_MOVIMENTO: TStringField;
    ADOCaixaID: TAutoIncField;
    ADOCaixaDATA_INICIO: TDateTimeField;
    ADOCaixaDATA_FINAL: TDateTimeField;
    ADOCaixaHORA_INICIO: TWideStringField;
    ADOCaixaHORA_FINAL: TWideStringField;
    ADOCaixaUSER_INICIO: TIntegerField;
    ADOCaixaUSER_FINAL: TIntegerField;
    ADOCaixaVL_INICIO: TBCDField;
    ADOCaixaVL_FECHAMENTO: TBCDField;
    ADOCaixaVLTOTALRECEBIDO: TBCDField;
    ADOCaixaVLTOTALSAIDA: TBCDField;
    ADOCaixaVLTOTALGERAL: TBCDField;
    ADOCaixaVLSAIDACONTAS: TBCDField;
    ADOCaixaSALDO_DINHEIRO: TBCDField;
    ADOCaixaSALDO_BOLETO: TBCDField;
    ADOCaixaSALDO_CHEQUE: TBCDField;
    ADOCaixaSALDO_CARTAO: TBCDField;
    ADOCaixaSAIDA_DINHEIRO: TBCDField;
    ADOCaixaSAIDA_CHEQUE: TBCDField;
    ADOClasseID: TAutoIncField;
    ADOClasseSTATUS: TStringField;
    ADOClasseINATIVO: TStringField;
    ADOClasseDATA_INC: TDateTimeField;
    ADOClasseDATA_ALT: TDateTimeField;
    ADOClasseDATA_HAB: TDateTimeField;
    ADOClasseDESC_CLASSCONT: TStringField;
    ADOContasPagarID: TAutoIncField;
    ADOContasPagarSTATUS: TStringField;
    ADOContasPagarINATIVO: TStringField;
    ADOContasPagarDATA_INC: TDateTimeField;
    ADOContasPagarDATA_ALT: TDateTimeField;
    ADOContasPagarDATA_HAB: TDateTimeField;
    ADOContasPagarNUMDOC: TStringField;
    ADOContasPagarID_CLIENTE: TIntegerField;
    ADOContasPagarID_CLASSCONT: TIntegerField;
    ADOContasPagarNUMPARCELA: TStringField;
    ADOContasPagarTOTALPARCELA: TStringField;
    ADOContasPagarVLTOTAL: TBCDField;
    ADOContasPagarVALORPARCELA: TBCDField;
    ADOContasPagarLIQUIDADO: TStringField;
    ADOContasPagarDTPAGMENTO: TWideStringField;
    ADOContasPagarFORMA_PGTO: TStringField;
    ADOContasPagarVLPAGO: TBCDField;
    ADOContasPagarDATA_VENC: TDateTimeField;
    ADOContasPagarOBS: TMemoField;
    ADOContasPagarClienteC: TStringField;
    ADOContasPagarClassCont: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    pnlGrava: TPanel;
    Label5: TLabel;
    Label17: TLabel;
    ADOFornecID: TAutoIncField;
    ADOFornecSTATUS: TStringField;
    ADOFornecINATIVO: TStringField;
    ADOFornecDATA_INC: TDateTimeField;
    ADOFornecDATA_ALT: TDateTimeField;
    ADOFornecDATA_HAB: TDateTimeField;
    ADOFornecRAZAO_SOCIAL: TStringField;
    ADOFornecNOME_FANTASIA: TStringField;
    ADOFornecCNPJ: TStringField;
    ADOFornecIE: TStringField;
    ADOFornecTELEF_COMERCIAL: TStringField;
    ADOFornecATENDENTE: TStringField;
    ADOFornecSITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure GridCpagarDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure edtValorPagoKeyPress(Sender: TObject; var Key: Char);
    procedure GridCpagarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridCpagarTitleClick(Column: TColumn);
    procedure pnlGravaClick(Sender: TObject);
  private
   procedure ConfiguraCampos (lblHabilita: Boolean);
   procedure MostrarDados;
   procedure LancarCP;
   procedure BaixarCP;
   Procedure GridZebrado (RecNo : LongInt; Grid : TDBGrid; Rect : TRect; Column : TColumn; State : TGridDrawState);   // Procedure para Pintar a Grid
   procedure SomarValorGrid; // somar o rodape da grid

    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ContaPagarLiquidar: TF_ContaPagarLiquidar;

// Define o Caption dos Application MessageBox
    MensageAppMesBox: string;

// Guardar Mensagem
    mensagem: string;

// Armazena Senten�a SQL
    strSql: string;

implementation

{$R *.dfm}
// TAMANHO PADRAO DO FORM <> WIDTH = 710 - HEIGHT = 690
{PNLGRID= W=704 - H=315} {PNLDETALHES W=704 - H=45} {PNLLABELS W=704 H=185} {PNLGRAVAR W=704 - H=117 }
uses U_DMPrincipal, U_Principal, U_CaixaAbrir, U_Pagamentos;

{ TfrmCPagarLiquidar }

procedure TF_ContaPagarLiquidar.BaixarCP;
begin
   try
     if (ADOContasPagar.State <> dsEdit) then
         ADOContasPagar.Edit;
       //  ADOContasPagar.FieldByName('VALORPAGO').AsFloat:= StrToFloat(Trim(edtValorPago.Text));
         ADOContasPagar.FieldByName('LIQUIDADO').AsAnsiString:= 'S';
         ADOContasPagar.FieldByName('DATA_PGTO').AsDateTime:= Date;

        ADOContasPagar.Post;
        ConfiguraCampos(False);

        ADOContasPagar.Close;
        ADOContasPagar.Prepared;
        ADOContasPagar.Open;
        GridCpagar.SetFocus;
   except
     on E: Exception do
        ShowMessage('Erro: '+E.Message);
   end;
end;

procedure TF_ContaPagarLiquidar.btnGravarClick(Sender: TObject);
begin
try
// Lacando Debito no caixa
  LancarCP;
// Baixar Debito no Conta a Pagar
  BaixarCP;
finally
     ShowMessage('Pagamento Efetuado com Sucesso...');
end;
end;

procedure TF_ContaPagarLiquidar.ConfiguraCampos(lblHabilita: Boolean);
begin
  lblDtLancamento.Visible:= lblHabilita;
  lblNumDoc.Visible:= lblHabilita;
  lblClassContabil.Visible:= lblHabilita;
  lblFornec.Visible:= lblHabilita;
  lblNumParcela.Visible:= lblHabilita;
  lblValorParcela.Visible:= lblHabilita;
  lblVencimento.Visible:= lblHabilita;
  lblTotalParcela.Visible:= lblHabilita;
  lblValorTotal.Visible:= lblHabilita;
  lblRs.Visible:= lblHabilita;
  lblRs2.Visible:= lblHabilita;

end;

procedure TF_ContaPagarLiquidar.edtValorPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
       // Comando para Deixar Digitar Apenas Numeros
          if not (Key in ['0'..'9',#8]) then
          Key:= #0;

end;

procedure TF_ContaPagarLiquidar.FormActivate(Sender: TObject);
VAR
  qry: TADOQuery;
begin
  ADOContasPagar.Parameters.ParamByName('Data_Final_Busca').Value:= Date + 30;
  ADOContasPagar.Open;

  SomarValorGrid;

  {$REGION 'Caixa Aberto ? '} // Verificando se Existe caixa Aberto
      try
      // Criando Um ADOQUERY Em Tempo de Execu��o
         qry:= TADOQuery.Create(nil);
         qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
      // Usando o ADOQUERY Criado
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add(' select top 1 ID from TB_CAIXA_ABREFECHA where DATA_FINAL is null and HORA_FINAL is null');
        qry.Open;
          if (qry.RecordCount = 0) then
            begin
              MensageAppMesBox:= '   ABRIR  CAIXA  ';
              mensagem:= '   N�O EXISTE CAIXA ABERTO,'    +#13 +#13
                       +' DESEJA ABRIR O CAIXA AGORA?' +#13;
            // Para Abrir o caixa neste momento ou nao
              if Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_YESNO+MB_ICONINFORMATION) = mrYes then
                begin
                  AbrirCaixaBTNFechar:= 0;
                 F_Principal.AbrirCaixa1.Click;
                end;
            end
          else
            begin
              NumeroCaixa:= qry.Fields[0].Value;
            end;
      finally
        FreeAndNil(qry);
      end;
 {$ENDREGION} // Fim
end;

procedure TF_ContaPagarLiquidar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ADOContasPagar.Close;

end;

procedure TF_ContaPagarLiquidar.FormShow(Sender: TObject);
begin
  ConfiguraCampos(False); // Desabilitar os Campos
  Height:= 588;   //690
end;

procedure TF_ContaPagarLiquidar.GridCpagarDblClick(Sender: TObject);
VAR
qry: TADOQuery;
begin
    {$REGION 'Caixa Aberto ? '} // Verificando se Existe caixa Aberto
      try
      // Criando Um ADOQUERY Em Tempo de Execu��o
         qry:= TADOQuery.Create(nil);
         qry.Connection:= DMPrincipal.ADOConnectionPrincipal;
      // Usando o ADOQUERY Criado
        qry.Close;
        qry.SQL.Clear;
        qry.SQL.Add(' select top 1 ID from TB_CAIXA_ABREFECHA where DATA_FINAL is null and HORA_FINAL is null');
        qry.Open;
          if (qry.RecordCount = 0) then
            begin
              MensageAppMesBox:= '   ABRIR  CAIXA  ';
              mensagem:= '   N�O EXISTE CAIXA ABERTO,'    +#13 +#13
                       +' TERA QUE ABRIR UM CAIXA PARA CONTINUAR?' +#13;
            // Para Abrir o caixa neste momento ou nao
              if Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK+MB_ICONINFORMATION) = mrOk then
                begin
                 AbrirCaixaBTNFechar:= 1;
                 F_Principal.AbrirCaixa1.Click;
                 MostrarDados;
                end;
            end
          else
            begin
              NumeroCaixa:= qry.Fields[0].Value;
              MostrarDados;
            end;
      finally
        FreeAndNil(qry);
      end;
 {$ENDREGION} // Fim

end;

procedure TF_ContaPagarLiquidar.GridCpagarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
VAR
dataHj: TDateTime;
begin
GridZebrado (TDBGrid(Sender).DataSource.DataSet.RecNo, TDBGrid(Sender), Rect, Column, State); // Procedure para Pintar
dataHj:= Date;
{ Teste por linha }
  if (ADOContasPagar.FieldByName('DATA_VENC').Value < dataHj) then
  begin
    (Sender as TDBGrid).Canvas.Font.Color:= clred;
    (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
    (Sender as TDBGrid).Canvas.FillRect(Rect);
  //  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
    (Sender as TDBGrid).Canvas.TextOut(Rect.Left + 2,Rect.Top, Column.Field.AsString);
  end;

end;

procedure TF_ContaPagarLiquidar.GridCpagarTitleClick(Column: TColumn);
var
  sIndexName: string;
  i: smallint;
begin
     try
      // retira a formata��o em negrito de todas as colunas
      for i := 0 to GridCpagar.Columns.Count - 1 do
        GridCpagar.Columns[i].Title.Font.Style := [];

      // configura a ordena��o ascendente ou descendente
      if ADOContasPagar.Sort = Column.FieldName + ' ASC' then
        sIndexName := Column.FieldName + ' DESC'
      else
        sIndexName := Column.FieldName + ' ASC';

      // formata o t�tulo da coluna em negrito
      Column.Title.Font.Style := [fsBold];

      // atribui a ordena��o selecionada
      ADOContasPagar.Sort := sIndexName;

      ADOContasPagar.First;
     except on E: Exception do
     end;
end;

procedure TF_ContaPagarLiquidar.GridZebrado(RecNo: Integer; Grid: TDBGrid;
  Rect: TRect; Column: TColumn; State: TGridDrawState);
begin  // Procedure para Pintar a Grid
if gdSelected in State then
   begin
     Grid.Canvas.Font.Color := clBlue; // Texto da linha selecionada
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

procedure TF_ContaPagarLiquidar.LancarCP;
var
sql: string;
qry: TADOQuery;
 // Variaveis para pegar os valores atuais do caixa
 CaixaEntLava, CaixaEntEstac, CaixaEntVendas,CaixaEntParcela: Double;
 CaixaSaiPGTContas,CaixaSaiFunc: Double;
 CaixaProvELava,CaixaProvEEstac,CaixaProvEVendas : Double;
 CaixaProvSPGTContas, CaixaProvSFunc: Double;
 SaldoDinheiro, SaldoCheque, SaldoBoleto, SaldoCartao,SaidaDinheiro, SaidaCheque: Double;
// Variavel para pegar o tipo de Pagmanto para colocar no historico
  TPPGHistorico: string;
begin
 TPPGHistorico:= '';
{$REGION 'BUSCANDO OS DADOS DO CAIXA PARA ATUALIZAR'} // Inicio
// BUSCNAOD OS DADOS DO CAIXA PRA ATUALIZAR
try
// Select para Buscar os Dados do Caixa Atual e jogar nas Variaveis
     strSql:= ' Select * from TB_CAIXA_ABREFECHA ';
     strSql:= strSql + ' where id = '+ #39 + IntToStr(NumeroCaixa) + #39;

    // Criando Um ADOQUERY Em Tempo de Execu��o
     qry:= TADOQuery.Create(nil);
     qry.Connection:= DMPrincipal.ADOConnectionPrincipal;

    // Ralizando o Select
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(strSql);
      qry.Open;

      if qry.RecordCount <> 0 then
        begin
          CaixaEntLava:= qry.FieldByName('VLTOTALLAVA').Value;
          CaixaEntEstac:= qry.FieldByName('VLTOTALESTAC').Value;
          CaixaEntVendas:= qry.FieldByName('VLTOTALVENDAS').Value;
          CaixaEntParcela:= qry.FieldByName('VLTOTALPARCELAS').Value;
          CaixaSaiPGTContas:= qry.FieldByName('VLSAIDACONTAS').Value;
          CaixaSaiFunc:= qry.FieldByName('VLSAIDAFUNCIONARIO').Value;
          CaixaProvELava:= qry.FieldByName('PROVI_LAVA').Value;
          CaixaProvEEstac:= qry.FieldByName('PROV_ESTAC').Value;
          CaixaProvEVendas:= qry.FieldByName('PROV_PRESTACOES').Value;
          CaixaProvSPGTContas:= qry.FieldByName('PROV_PGTCONTAS').Value;
          CaixaProvSFunc:= qry.FieldByName('PROV_PGTFUNC').Value;
          SaldoDinheiro:= qry.FieldByName('SALDO_DINHEIRO').Value;
          SaldoCheque:=  qry.FieldByName('SALDO_CHEQUE').Value;
          SaldoBoleto:=  qry.FieldByName('SALDO_BOLETO').Value;
          SaldoCartao:=  qry.FieldByName('SALDO_CARTAO').Value;
          SaidaDinheiro:=  qry.FieldByName('SAIDA_DINHEIRO').Value;
          SaidaCheque:=  qry.FieldByName('SAIDA_CHEQUE').Value;
        end;
Except
  on E:Exception do
    Begin
      Showmessage('Erro ao Buscar Dados no Caixa. ERRO CPAGAR 001' + #39 + ' Erro: ' + E.Message);
      Exit;
    End;
End;  {$ENDREGION} // Fim  BUSCANDO OS DADOS DO CAIXA PARA ATUALIZAR

{$REGION 'GRAVANDO NO CAIXA'} // Inicio
try
   // Passando o Valor Pago para a Variavel
      // CaixaSaiPGTContas:= CaixaSaiPGTContas +  StrToFloat(Trim(edtValorPago.Text));

       // GRAVANDO OS VALORES NO CAIXA
       try   //INICIO Colocando os Dados na Tabela do caixa
        ADOCaixa.Open;
        ADOCaixa.Edit;


       // TIPO DE PAGAMENTO /////////////////////////////////////////////////////////
       {$REGION 'JOGANDO NO CAIXA - TIPO DE PAGAMENTO - DINHEIRO'} // Inicio
        //  if rbDinheiro.Checked then  // DINHEIRO
            begin
             //Colocando dados no caixa
             //Colocando o Valor na Variavel
          //   SaidaDinheiro:= SaidaDinheiro + (StrToFloat(edtValorPago.Text));
             ADOCaixaSALDO_DINHEIRO.Value:= SaldoDinheiro;
             ADOCaixaSALDO_BOLETO.Value:= SaldoBoleto;
             ADOCaixaSALDO_CHEQUE.Value:= SaldoCheque;
             ADOCaixaSALDO_CARTAO.Value:= SaldoCartao;
             ADOCaixaSAIDA_DINHEIRO.Value:= SaidaDinheiro;
             ADOCaixaSAIDA_CHEQUE.Value:= SaidaCheque;
             TPPGHistorico:= 'DINHEIRO';
            end;  {$ENDREGION} // Fim  JOGANDO NO CAIXA - TIPO DE PAGAMENTO - DINHEIRO

        ADOCaixa.Post;
        ADOCaixa.Close;
       Except
         on E:Exception do
         Begin
            Showmessage('Erro ao Gravar Dados no Caixa. ERRO: CPAGAR 002' + #39 + ' Erro: ' + E.Message);
            Exit;
         End;
       End; {$ENDREGION} // Fim   GRAVANDO NO CAIXA  //FINAL Colocando os Dados na Tabela do caixa

{$REGION 'COLOCANDO HISTORICO DO CAIXA'} // Inicio
 // No Historico Colocar o Codigo da lavagem e o carro e o servico e se der o cliente
       try
        ADOCaixaHistorico.Open;
        ADOCaixaHistorico.Insert;
          ADOCaixaHistoricoID_CAIXAMOV.Value:= NumeroCaixa;

          ADOCaixaHistoricoCLIENTE.Value:= lblFornec.Caption;
          ADOCaixaHistoricoHISTORICO.Value:= 'CPAGAR '+ lblNumDoc.Caption;
          ADOCaixaHistoricoSERVICO.Value:= ADOContasPagar.FieldByName('NUMERODOCUMENTO').Value;
        //  ADOCaixaHistoricoVLMOVIMENTO.Value:= ((StrToFloat(edtValorPago.Text))*(-1));
          ADOCaixaHistoricoESPECIE.Value:= TPPGHistorico;
          ADOCaixaHistoricoDATA_INC.Value:= Now;
          ADOCaixaHistoricoTIPO_MOVIMENTO.Value:= 'D';
          ADOCaixaHistorico.Post;
       Except
           on E:Exception do
           Begin
              Showmessage('Erro ao Gravar Dados no Historico do Caixa. ERRO: CRECEBER 005 ' + #39 + 'Erro: ' + E.Message);
              Exit;
           End;
       End;        {$ENDREGION} // Fim  COLOCANDO HISTORICO DO CAIXA

Except
  on E:Exception do
    Begin
      Showmessage('Erro Geral, Gravar Dados No Caixa - Contas a Pagar. ERRO: 003' + #39 + ' Erro: ' + E.Message);
      Exit;
    End;
End;
end;

procedure TF_ContaPagarLiquidar.MostrarDados;
begin
   // Pegando o Noome do Fornecedor
  ADOFornec.Close;
  ADOFornec.Open;
  ADOFornec.Locate('ID',ADOContasPagarID_CLIENTE.AsInteger,[]);

// Pegando o Nome da Classe
  ADOClasse.Close;
  ADOClasse.Open;
  ADOClasse.Locate('ID', ADOContasPagarID_CLASSCONT.AsAnsiString,[]);

  ConfiguraCampos(True);

  lblDtLancamento.Caption:= FormatDateTime('',ADOContasPagarDATA_INC.AsDateTime);
  lblNumDoc.Caption:= ADOContasPagarNUMDOC.AsAnsiString;
  lblFornec.Caption:= ADOFornecNOME_FANTASIA.AsAnsiString;
  lblClassContabil.Caption:=  ADOClasseDESC_CLASSCONT.AsAnsiString;
  lblTotalParcela.Caption:=  ADOContasPagarTOTALPARCELA.AsAnsiString;
  lblValorTotal.Caption:=  FormatFloat('###,##0.00', ADOContasPagarVLTOTAL.AsFloat);
  lblNumParcela.Caption:= ADOContasPagarNUMPARCELA.AsAnsiString;
  lblValorParcela.Caption:=  FormatFloat('###,##0.00', ADOContasPagarVALORPARCELA.AsFloat);
  lblVencimento.Caption:= FormatDateTime('',ADOContasPagarDATA_VENC.AsDateTime);

// Validando os componentes de pagamento
   pnlGrava.Visible:= True;

   Height:= 690 //546
end;

procedure TF_ContaPagarLiquidar.pnlGravaClick(Sender: TObject);
begin
  QuemChamo:= 1;
  VLPARCRPAG:= lblValorParcela.Caption;
  // Criar o From Cadastro de Chacaras em tempo de Execucao
  try
    F_Pagamentos:= TF_Pagamentos.Create(Application);
    F_Pagamentos.ShowModal;
  finally
    FreeAndNil(F_Pagamentos);
  end;
end;

procedure TF_ContaPagarLiquidar.SomarValorGrid;
var
SomarP, SomarT: Currency;

begin
// Contando quantida de  registro
 Label14.Caption:= IntToStr(ADOContasPagar.RecordCount);

 // Somar Parcela
   SomarP:= 0.00;
   SomarT:= 0.00;
   ADOContasPagar.DisableControls;
   ADOContasPagar.First;
   while not ADOContasPagar.Eof do
      begin
        SomarP:= (SomarP + ADOContasPagar.FieldByName('VALORPARCELA').AsCurrency);
        SomarT:= (SomarT + ADOContasPagar.FieldByName('VLTOTAL').AsCurrency);
        ADOContasPagar.Next;
      end;
   ADOContasPagar.EnableControls;
   Label15.Caption:= FormatFloat('##,###,##0.00', SomarP);
   Label16.Caption:= FormatFloat('##,###,##0.00', SomarT);

  // Somar Valor Total
end;

end.
