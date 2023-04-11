unit U_Pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Data.DB, Datasnap.DBClient, Vcl.DBCtrls;

type
  TF_Pagamentos = class(TForm)
    lblPago: TLabel;
    lblTroco: TLabel;
    btnPagar: TBitBtn;
    lblCreditoCliente: TLabel;
    btnSair: TBitBtn;
    lblMotivoDesc: TLabel;
    DSGerarPagamento: TDataSource;
    CDSetGerarPagamento: TClientDataSet;
    CDSetGerarPagamentoCDSVALORAPAGAR: TCurrencyField;
    CDSetGerarPagamentoCDSJUROS: TCurrencyField;
    CDSetGerarPagamentoCDSMULTA: TCurrencyField;
    CDSetGerarPagamentoCDSDESCONTO: TCurrencyField;
    CDSetGerarPagamentoCDSMOTDESCONTO: TStringField;
    CDSetGerarPagamentoCDSPAGAR: TCurrencyField;
    CDSetGerarPagamentoCDSCREDITO: TCurrencyField;
    CDSetGerarPagamentoCDSVLRECEBIDO: TCurrencyField;
    CDSetGerarPagamentoCDSTROCO: TCurrencyField;
    lblValorPagar: TLabel;
    lblJuros: TLabel;
    lblMulta: TLabel;
    lblDesconto: TLabel;
    lblPagar: TLabel;
    edtValorCDS: TDBEdit;
    edtJurosCDS: TDBEdit;
    edtMultaCDS: TDBEdit;
    edtDescontoCDS: TDBEdit;
    edtMotDescoCDS: TDBEdit;
    edtVLPagarCDS: TDBEdit;
    edtCreditoClietCDS: TDBEdit;
    edtVLPagoCDS: TDBEdit;
    edtTrocoCDS: TDBEdit;
    Label1: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCreditoClietCDSEnter(Sender: TObject);
    procedure edtDescontoCDSEnter(Sender: TObject);
    procedure edtJurosCDSEnter(Sender: TObject);
    procedure edtMotDescoCDSEnter(Sender: TObject);
    procedure edtMultaCDSEnter(Sender: TObject);
    procedure edtCreditoClietCDSExit(Sender: TObject);
    procedure edtJurosCDSExit(Sender: TObject);
    procedure edtMotDescoCDSExit(Sender: TObject);
    procedure edtMultaCDSExit(Sender: TObject);
    procedure edtDescontoCDSExit(Sender: TObject);
    procedure edtVLPagoCDSEnter(Sender: TObject);
    procedure edtVLPagoCDSExit(Sender: TObject);
    procedure edtCreditoClietCDSKeyPress(Sender: TObject; var Key: Char);
    procedure edtVLPagoCDSKeyPress(Sender: TObject; var Key: Char);
    procedure edtJurosCDSKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FormatarComoMoeda( Componente : TObject; var Key: Char ); // PARA O EDIT TRABALHAR COM MOEDA
    procedure somarVLTotalPagar; // Para fazer a soma de quanto pagar
    procedure FazerTroco; //  Fazer o troco para devolver
    procedure fORMATAR;
  end;

var
  F_Pagamentos: TF_Pagamentos;
  QuemChamo: Integer; // Variavel para Ver qual tela esta chamando para executar as acoes <> 1=LiquidaContasAPagar <>

  // LIQUIDAR CONTAS A PAGAR
    VLPARCRPAG: string;

implementation

{$R *.dfm}

procedure TF_Pagamentos.btnSairClick(Sender: TObject);
begin
  CDSetGerarPagamento.Delete;
  CDSetGerarPagamento.EmptyDataSet;
  CDSetGerarPagamento.Close;
  Close;
end;

procedure TF_Pagamentos.edtCreditoClietCDSEnter(Sender: TObject);
begin
  edtCreditoClietCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtCreditoClietCDSExit(Sender: TObject);
begin
  if Trim(edtCreditoClietCDS.Text) = '' then
    begin
      edtCreditoClietCDS.Text:= '0,00';
    end;
  FazerTroco; // TRazer o Resultado do troco
  edtCreditoClietCDS.Color:= clWindow; // Voltar Cor Original
end;

procedure TF_Pagamentos.edtCreditoClietCDSKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (edtCreditoClietCDS.Text >=  '0,00') then
    begin
      FazerTroco; // TRazer o Resultado do troco
    end;
end;

procedure TF_Pagamentos.edtDescontoCDSEnter(Sender: TObject);
begin
  edtDescontoCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtDescontoCDSExit(Sender: TObject);
var
Resultado, VLPagar, VLJuros, VLMulta, VLDesconto: Real;
begin
// Verificar se o desconto ��e maior que que o total da soma da multa, juros e valor a pagar

  VLPagar:= StrToFloat(edtValorCDS.Text);
  VLJuros:= StrToFloat(edtJurosCDS.Text);
  VLMulta:= StrToFloat(edtMultaCDS.Text);

// Verificando se o desconto esta sem nada para coloar zero
  if (Trim(edtDescontoCDS.Text) = '') then
    begin
      edtDescontoCDS.Text:= '0,00';
    end;
  VLDesconto:= StrToFloat(edtDescontoCDS.Text);
  Resultado:= (VLPagar + VLJuros + VLMulta);

  if VLDesconto >  Resultado then
    begin
      Application.MessageBox(PChar('O VALOR DE DESCONTO ESTA MAIOR QUE A SOMA A PAGAR, NAO PODE FAVOR CORRIGIR!!'),PChar('PAGAMENTOS'),MB_OK+ MB_ICONERROR);
      edtDescontoCDS.SetFocus;
      Exit;
    end
  else
    BEGIN
       somarVLTotalPagar; // Fazer a Soma dos Valores
       edtDescontoCDS.Color:= clWindow; // Voltar Cor Original
    END;

// NAO DEIXAR FICAR COM O CAMPO ZERADO
  if (Trim(edtDescontoCDS.Text) = '') or  (Trim(edtDescontoCDS.Text) = '0,00') then
    begin
      edtDescontoCDS.Text:= '0,00';
      lblMotivoDesc.Visible:= False;
      edtMotDescoCDS.Visible:= False;
      edtMotDescoCDS.Clear;
    end
  else
      begin
        lblMotivoDesc.Visible:= True;
        edtMotDescoCDS.Visible:= True;
        edtMotDescoCDS.SetFocus;
      end;
end;

procedure TF_Pagamentos.edtJurosCDSEnter(Sender: TObject);
begin
  edtJurosCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtJurosCDSExit(Sender: TObject);
begin
  if edtJurosCDS.Text = '' then
    begin
       edtJurosCDS.Text := '0,00';
    end;

  edtJurosCDS.Color:= clWindow; // Voltar Cor Original
  somarVLTotalPagar; // Fazer a Soma dos Valores
end;

procedure TF_Pagamentos.edtJurosCDSKeyPress(Sender: TObject; var Key: Char);
begin
fORMATAR;
end;

procedure TF_Pagamentos.edtMotDescoCDSEnter(Sender: TObject);
begin
  edtMotDescoCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtMotDescoCDSExit(Sender: TObject);
begin
  if Trim(edtMotDescoCDS.Text) = '' then
    begin
      Application.MessageBox(PChar('O CAMPO MOTIVO DE DESCONTO NAO PODE FICAR VAZIO, FAVOR COLOCAR O MOTIVO!!'),PChar('PAGAMENTOS'),MB_OK+ MB_ICONERROR);
      edtMotDescoCDS.SetFocus;
      Exit;
    end;
if (Length(Trim(edtMotDescoCDS.Text))) < 10 then
    begin
        Application.MessageBox(PChar('EXPLICACAO MUITO CURTA, FAVOR COMPLETAR!!'),PChar('PAGAMENTOS'),MB_OK+ MB_ICONERROR);
      edtMotDescoCDS.SetFocus;
      Exit;
    end;
    edtMotDescoCDS.Color:=  clWindow; // Voltar Cor Original
end;

procedure TF_Pagamentos.edtMultaCDSEnter(Sender: TObject);
begin
  edtMultaCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtMultaCDSExit(Sender: TObject);
begin
  if edtMultaCDS.Text = '' then
    begin
      edtMultaCDS.Text:= '0,00';
    end;
  edtMultaCDS.Color:= clWindow; // Voltar Cor Original
  somarVLTotalPagar; // Fazer a Soma dos Valores


end;

procedure TF_Pagamentos.edtVLPagoCDSEnter(Sender: TObject);
begin
  edtVLPagoCDS.Color:= clMoneyGreen; // Mudar a Cor Original
end;

procedure TF_Pagamentos.edtVLPagoCDSExit(Sender: TObject);
begin
  if Trim(edtVLPagoCDS.Text) = '' then
    begin
      edtVLPagoCDS.Text:= '0,00';
    end;
  edtVLPagoCDS.Color:= clWindow; // Voltar Cor Original
  FazerTroco; // Fazer as contas de valores e trocos
end;

procedure TF_Pagamentos.edtVLPagoCDSKeyPress(Sender: TObject; var Key: Char);
begin
   if (edtVLPagoCDS.Text >= '0') then
    begin
      FazerTroco; // Fazer as contas de valores e trocos
    end;
end;

procedure TF_Pagamentos.FazerTroco;
var
VLPagar, VLRecebido, VLTroco, VLCredClient: Double;
begin
// Variaveis Recebendo valor dos Edits
  VLPagar:= StrToFloat(edtVLPagarCDS.Text);
  VLRecebido:= StrToFloat(edtVLPagoCDS.Text);
  VLCredClient:= StrToFloat(edtCreditoClietCDS.Text);

// If Para Verificar e Colocar no edit e label o estado do pagamento - faltando ou pago
  if VLRecebido < VLPagar then          //   MENOR FALTA
    begin
      lblTroco.Caption:= 'FALTA';
      lblTroco.Left:= 125;
      lblTroco.Font.Color:= clMaroon;
    end
  else
  if  VLRecebido = VLPagar then   // PAGO OK
    begin
       lblTroco.Caption:= 'PAGO';
       lblTroco.Left:= 130;
       lblTroco.Font.Color:= clGreen;
    end
  ELSE
    begin
      lblTroco.Caption:= 'TROCO';
      lblTroco.Left:= 113;
      lblTroco.Font.Color:= clBlue;
    end;

  VLTroco:=  (VLCredClient + VLRecebido) - VLPagar;

 // edtTroco.Text:= FormatFloat('"R$ "0,.00',VLTroco);
  edtTrocoCDS.Text:= FormatFloat('###,##0.00',VLTroco);

 // HABILITAR O BOTAO PAGAR
  if (edtTrocoCDS.Text < '0,00') then
    begin
      btnPagar.Enabled:= False;
    end
  else
    begin
     btnPagar.Enabled:= True;
    end;

end;

procedure TF_Pagamentos.FormActivate(Sender: TObject);
begin

CDSetGerarPagamento.Open;
CDSetGerarPagamento.Append;

// definindo valores para nao dar erro
   edtValorCDS.Text:= '0,00';
   edtJurosCDS.Text:= '0,00';
   edtMultaCDS.Text:= '0,00';
   edtDescontoCDS.Text:= '0,00';
   edtVLPagarCDS.Text:= '0,00';
   edtCreditoClietCDS.Text:= '0,00';
   edtVLPagoCDS.Text:= '0,00';
   edtTrocoCDS.Text:= '0,00';
   btnPagar.Enabled:= False;

  if QuemChamo = 1 then    // Qual tela que chamou <> 1 - Liquida contas a pagar
    begin
   //VOLTAR DEPOIS SO TESTE   lblCreditoCliente.Visible:= False;  // ESCONDENDO O LABEL DE CREDITO DO CLIENTE
  // //VOLTAR DEPOIS SO TESTE   edtCreditoCliet.Visible:= False;   // ESCONDENDO O EDIT DE CREDITO DO CLIENTE
      edtValorCDS.Text:= VLPARCRPAG;        // PASSANDO O VALOR A PAGAR DA TELA LIQUIDA CONTAS A PAGAR  PARA O EDIT VALOR

      //Verificar se o edit jurs ainda esta vazio e colocar 0
        if Trim(edtJurosCDS.Text) = '' then
          begin
            edtJurosCDS.Text:= '0,00';
          end;
      //Verificar se o edit multa ainda esta vazio e colocar 0
        if Trim(edtMultaCDS.Text) = '' then
          begin
            edtMultaCDS.Text:= '0.00';
          end;
    end;
edtJurosCDS.SetFocus;
end;

procedure TF_Pagamentos.FormatarComoMoeda(Componente: TObject; var Key: Char);
var
   str_valor  : String;
   dbl_valor  : double;
begin
   { verificando se estamos recebendo o TEdit realmente }
   IF Componente is TEdit THEN
   BEGIN
      { se tecla pressionada e' um numero, backspace ou del deixa passar }
      IF ( Key in ['0'..'9', #8, #9] ) THEN
      BEGIN
         { guarda valor do TEdit com que vamos trabalhar }
         str_valor := TEdit( Componente ).Text ;
         { verificando se nao esta vazio }
         IF str_valor = EmptyStr THEN str_valor := '0,00' ;
         { se valor numerico ja insere na string temporaria }
         IF Key in ['0'..'9'] THEN str_valor := Concat( str_valor, Key ) ;
         { retira pontos e virgulas se tiver! }
         str_valor := Trim( StringReplace( str_valor, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         str_valor := Trim( StringReplace( str_valor, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         {inserindo 2 casas decimais}
         dbl_valor := StrToFloat( str_valor ) ;
         dbl_valor := ( dbl_valor / 100 ) ;

         {reseta posicao do tedit}
         TEdit( Componente ).SelStart := Length( TEdit( Componente ).Text );
         {retornando valor tratado ao TEdit}
         TEdit( Componente ).Text := FormatFloat( '###,##0.00', dbl_valor ) ;
      END;
      {se nao e' key relevante entao reseta}
      IF NOT( Key in [#8, #9] ) THEN key := #0;
   end;
end;

procedure TF_Pagamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSetGerarPagamento.Close;
end;

procedure TF_Pagamentos.somarVLTotalPagar;
var
Resultado, VLPagar, VLJuros, VLMulta, VLDesconto: Double;
begin
VLPagar:= StrToFloat(edtValorCDS.Text);
VLJuros:= StrToFloat(edtJurosCDS.Text);
VLMulta:= StrToFloat(edtMultaCDS.Text);
VLDesconto:= StrToFloat(edtDescontoCDS.Text);

Resultado:= (VLPagar + VLJuros + VLMulta) - VLDesconto;

edtVLPagarCDS.Text:= FormatFloat('#0.00',Resultado);
//edtVLPagar.Text:= FormatFloat('"R$ "0,.00',Resultado);
end;

procedure TF_Pagamentos.fORMATAR;
var
valor: string;
begin
if edtJurosCDS.Text <> '' then
begin

   valor:= edtJurosCDS.Text;
   valor:= StringReplace(valor, '.','',[rfReplaceAll]);
   valor:= StringReplace(valor, ',','',[rfReplaceAll]);

   //valor:= valor + edtJurosCDS.Text;

   edtJurosCDS.Text:= FormatFloat('#,##0.00', StrToFloat(valor) / 100);

   edtJurosCDS.SelStart:= Length(edtJurosCDS.Text);
end;
end;
end.
