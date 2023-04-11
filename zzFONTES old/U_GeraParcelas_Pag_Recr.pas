unit U_GeraParcelas_Pag_Recr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, System.ImageList,
  Vcl.ImgList, Datasnap.DBClient;

type
  TF_GeraParcelas_Pag_Recr = class(TForm)
    pnlCabe: TPanel;
    pnlGrid: TPanel;
    GridResult: TDBGrid;
    ADOCliFor: TADOQuery;
    DSCliFor: TDataSource;
    btnIncluir: TButton;
    imdHabilitado32: TImageList;
    btnGerar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    btnSair: TButton;
    ImageList1: TImageList;
    lblDTEmissao: TLabel;
    lblDTInc: TLabel;
    lblClassContab: TLabel;
    lblNumDoc: TLabel;
    lblCliFor: TLabel;
    lblnumParc: TLabel;
    lblValorTotal: TLabel;
    lblValorParcela: TLabel;
    lblDTPrimeiVenc: TLabel;
    lblObs: TLabel;
    lblTitulo: TLabel;
    edtDTEmissao: TEdit;
    edtDTInc: TEdit;
    ComboClasseContabil: TDBLookupComboBox;
    ComboFornecedor: TDBLookupComboBox;
    edtNumDoc: TEdit;
    edtNumParc: TEdit;
    edtObs: TEdit;
    edtDTPrimeiVenc: TEdit;
    ChecVencTDDia: TCheckBox;
    edtVencTDDia: TEdit;
    ChecVencACDia: TCheckBox;
    edtVencACDia: TEdit;
    edtValorParcela: TEdit;
    edtValorTotal: TEdit;
    RGPagarReceber: TRadioGroup;
    btnFechar: TButton;
    DSContaPagar: TDataSource;
    DSContaReceber: TDataSource;
    ADOContaReceber: TADOQuery;
    ADOContaPagar: TADOQuery;
    ClientDSGeraParc: TClientDataSet;
    DSGeraParc: TDataSource;
    ClientDSGeraParcDATA_INC_CDS: TDateTimeField;
    ClientDSGeraParcDATA_HAB_CDS: TDateTimeField;
    ClientDSGeraParcDATA_DOCUMENTO_CDS: TDateTimeField;
    ClientDSGeraParcDATA_VENCIMENTO_CDS: TDateTimeField;
    ClientDSGeraParcTOTALPARCELAS_CDS: TIntegerField;
    ClientDSGeraParcID_CLASSEDESUBGRUPO_CDS: TIntegerField;
    ClientDSGeraParcID_CLIENTE_CDS: TIntegerField;
    ClientDSGeraParcVALORPARCELA_CDS: TFloatField;
    ClientDSGeraParcVALORTOTAL_CDS: TFloatField;
    ClientDSGeraParcNUMERODOCUMENTO_CDS: TStringField;
    ClientDSGeraParcOBS_CDS: TStringField;
    ClientDSGeraParcSTATUS_CDS: TStringField;
    ClientDSGeraParcMARCAR_CDS: TStringField;
    ClientDSGeraParcINATIVO_CDS: TStringField;
    ClientDSGeraParcLIQUIDADO_CDS: TStringField;
    ClientDSGeraParcNUMEROPARCELA_CDS: TIntegerField;
    ClientDSGeraParcDESCCLIFOR_CDS: TStringField;
    ADOContaReceberID: TAutoIncField;
    ADOContaReceberSTATUS: TStringField;
    ADOContaReceberINATIVO: TStringField;
    ADOContaReceberDATA_INC: TDateTimeField;
    ADOContaReceberDATA_ALT: TDateTimeField;
    ADOContaReceberDATA_HAB: TDateTimeField;
    ADOContaReceberNUMDOC: TStringField;
    ADOContaReceberID_CLIENTE: TIntegerField;
    ADOContaReceberID_CLASSCONT: TIntegerField;
    ADOContaReceberNUMPARCELA: TStringField;
    ADOContaReceberTOTALPARCELA: TStringField;
    ADOContaReceberVLTOTAL: TBCDField;
    ADOContaReceberVALORPARCELA: TBCDField;
    ADOContaReceberLIQUIDADO: TStringField;
    ADOContaReceberDTPAGMENTO: TWideStringField;
    ADOContaReceberFORMA_PGTO: TStringField;
    ADOContaReceberVLPAGO: TBCDField;
    ADOContaReceberDATA_VENC: TDateTimeField;
    ADOContaReceberOBS: TMemoField;
    ADOContaPagarID: TAutoIncField;
    ADOContaPagarSTATUS: TStringField;
    ADOContaPagarINATIVO: TStringField;
    ADOContaPagarDATA_INC: TDateTimeField;
    ADOContaPagarDATA_ALT: TDateTimeField;
    ADOContaPagarDATA_HAB: TDateTimeField;
    ADOContaPagarNUMDOC: TStringField;
    ADOContaPagarID_CLIENTE: TIntegerField;
    ADOContaPagarID_CLASSCONT: TIntegerField;
    ADOContaPagarNUMPARCELA: TStringField;
    ADOContaPagarTOTALPARCELA: TStringField;
    ADOContaPagarVLTOTAL: TBCDField;
    ADOContaPagarVALORPARCELA: TBCDField;
    ADOContaPagarLIQUIDADO: TStringField;
    ADOContaPagarDTPAGMENTO: TWideStringField;
    ADOContaPagarFORMA_PGTO: TStringField;
    ADOContaPagarVLPAGO: TBCDField;
    ADOContaPagarDATA_VENC: TDateTimeField;
    ADOContaPagarOBS: TMemoField;
    DSClasseCont: TDataSource;
    ADOClassCont: TADOQuery;
    ADOClassContID: TAutoIncField;
    ADOClassContSTATUS: TStringField;
    ADOClassContINATIVO: TStringField;
    ADOClassContDATA_INC: TDateTimeField;
    ADOClassContDATA_ALT: TDateTimeField;
    ADOClassContDATA_HAB: TDateTimeField;
    ADOClassContDESC_CLASSCONT: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure RGPagarReceberClick(Sender: TObject);
    procedure ChecVencTDDiaClick(Sender: TObject);
    procedure ChecVencACDiaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtValorParcelaEnter(Sender: TObject);
    procedure edtValorParcelaExit(Sender: TObject);
    procedure edtNumParcKeyPress(Sender: TObject; var Key: Char);
    procedure edtNumParcExit(Sender: TObject);
    procedure edtVencTDDiaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVencACDiaKeyPress(Sender: TObject; var Key: Char);
    procedure edtVencTDDiaExit(Sender: TObject);
  private
    { Private declarations }
    procedure DesabilitarCampos; // Desabilitar os Campo de Edicao
    procedure HabilitarCampos; // Habilitar os campos pra edicao
    procedure LimparCampos; // Limpar o text dos campos
  public
    { Public declarations }
  end;

var
  F_GeraParcelas_Pag_Recr: TF_GeraParcelas_Pag_Recr;
  GlobalVlTotal: Double;

// Variaveis para pegar os dados do contas a pagar e receber e colocar no gerar
  NUMDOC, OBS, DTVENCIMENTO, VLTOTALPARCEL, VLPARCEL, NUMPARCEL, TOTPARCEL: string;
  IDCLINT, IDCLASCONT: Integer;
  DEONDEVEM: Integer;   /// VARIAVEL PARA SABER QUAL TELA ESTA ABRINDO ESTA TELA = 1 CONTAS A RECEBER - 2 CONTAS A PAGAR - 3 GERACAO DE CONTAS
implementation

{$R *.dfm}

uses U_DMPrincipal, U_Principal;


procedure TF_GeraParcelas_Pag_Recr.btnIncluirClick(Sender: TObject);
begin
   LimparCampos;

  // Desativando os Botoes
    btnIncluir.Enabled:= False;
    btnSair.Enabled:= False;

  // Mostrando os Botoes
    btnCancelar.Visible:= True;
    btnGerar.Visible:= True;
    btnCancelar.Enabled:= True;
    btnGerar.Enabled:= True;

 // Colocando Valore nos Campos
    edtDTEmissao.Text:= DateToStr(Date);
    edtDTPrimeiVenc.Text:= DateToStr(Date+30);
    edtNumParc.Text:= '0';
    edtValorParcela.Text:= '0';

   HabilitarCampos;

   ComboClasseContabil.SetFocus;

   RGPagarReceber.OnClick(Sender);
end;

procedure TF_GeraParcelas_Pag_Recr.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_GeraParcelas_Pag_Recr.btnSalvarClick(Sender: TObject);
var
MensageAppMesBox, mensagem: string;
begin
  try
    // Verificando o que esta fazendo para salvar na tabela
      if RGPagarReceber.ItemIndex = 0 then   {$REGION 'CONTAS A RECEBER'} // Inicio
          begin
          // If pra ver o que esta fazendo pagar ou receber
            ADOContaReceber.Open;  // Abrindo o contas a PAgar para receber dos dados
            ClientDSGeraParc.First;

            while not ClientDSGeraParc.Eof do  // Fa�a em quanto n�o for o final do Registro
                begin
                  ADOContaReceber.Insert;  // Colocando a Tabela em modo de insercao
                  ADOContaReceberSTATUS.AsAnsiString:= ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString;
                  ADOContaReceberINATIVO.AsAnsiString:= ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString;
                  ADOContaReceberDATA_INC.AsDateTime:=  ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime;
                  ADOContaReceberDATA_HAB.AsDateTime:=  ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime;
                  ADOContaReceberNUMDOC.AsAnsiString:=  ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString;
                  ADOContaReceberID_CLIENTE.AsInteger:=  ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger;
                  ADOContaReceberID_CLASSCONT.AsInteger:= ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger;
                  ADOContaReceberNUMPARCELA.AsInteger:= ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger;
                  ADOContaReceberTOTALPARCELA.AsInteger:=  ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger;
                  ADOContaReceberVLTOTAL.AsFloat:= ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat;
                  ADOContaReceberVALORPARCELA.AsFloat:=  ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat;
                  ADOContaReceberLIQUIDADO.AsAnsiString:= ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString;
                  ADOContaReceberDATA_VENC.AsDateTime:= ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime;
                  ADOContaReceberOBS.AsAnsiString:= ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString;

                 ADOContaReceber.Post;
                 ClientDSGeraParc.Next;
                end;
          MensageAppMesBox:= 'GERANDO CONTAS A RECEBER';
          mensagem:= ' Contas a Receber Gerada com Sucesso! ' + #13
                    +'';
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);
          RGPagarReceber.ItemIndex:= -1;
          end {$ENDREGION} // Fim
      else
      if RGPagarReceber.ItemIndex = 1 then   {$REGION 'CONTAS A PAGAR'} // Inicio
          begin
          // If pra ver o que esta fazendo pagar ou receber
            ADOContaPagar.Open;  // Abrindo o contas a PAgar para receber dos dados
            ClientDSGeraParc.First;

            while not ClientDSGeraParc.Eof do  // Fa�a em quanto n�o for o final do Registro
                begin
                  ADOContaPagar.Insert;  // Colocando a Tabela em modo de insercao
                  ADOContaPagarSTATUS.AsAnsiString:= ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString;
                  ADOContaPagarINATIVO.AsAnsiString:= ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString;
                  ADOContaPagarDATA_INC.AsDateTime:=  ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime;
                  ADOContaPagarDATA_HAB.AsDateTime:=  ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime;
                  ADOContaPagarID_CLIENTE.AsInteger:=  ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger;
                  ADOContaPagarID_CLASSCONT.AsInteger:= ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger;
                  ADOContaPagarNUMDOC.AsAnsiString:=  ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString;
                  ADOContaPagarTOTALPARCELA.AsInteger:=  ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger;
                  ADOContaPagarVLTOTAL.AsFloat:= ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat;
                  ADOContaPagarVALORPARCELA.AsFloat:=  ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat;
                  ADOContaPagarNUMPARCELA.AsInteger:= ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger;
                  ADOContaPagarLIQUIDADO.AsAnsiString:= ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString;
                  ADOContaPagarDATA_VENC.AsDateTime:= ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime;
                  ADOContaPagarOBS.AsAnsiString:= ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString;

                 ADOContaPagar.Post;
                 ClientDSGeraParc.Next;
                end;
          MensageAppMesBox:= 'GERANDO CONTAS A PAGAR';
          mensagem:= ' Contas a Pagar Gerada com Sucesso! ' + #13
                    +'';
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);
          RGPagarReceber.ItemIndex:= -1;
          end;{$ENDREGION} // Fim
  except
     on E: Exception do
      ShowMessage('Erro: '+E.Message);
  end;

// Limpando o Cliente Data Set
ClientDSGeraParc.Delete;
ClientDSGeraParc.EmptyDataSet;
ClientDSGeraParc.Close;

//Desabilitar os Botoes
  btnGerar.Enabled:= False;
  btnCancelar.Enabled:= False;
  btnSalvar.Enabled:= False;

// Habilitar os Outros Botoes
   btnIncluir.Enabled:= True;
   btnSair.Enabled:= True;

DesabilitarCampos;
LimparCampos;


Height:= 340;
end;

procedure TF_GeraParcelas_Pag_Recr.btnCancelarClick(Sender: TObject);
begin
    btnIncluir.Enabled:= True;
    btnSair.Enabled:= True;
    btnGerar.Enabled:= False;
    btnSalvar.Enabled:= False;
    btnCancelar.Enabled:= False;

    DesabilitarCampos;
    LimparCampos;
    Height:= 340;
    ClientDSGeraParc.Close;

    ClientDSGeraParc.Open;
  if ClientDSGeraParc.RecordCount > 0 then
     begin
        ClientDSGeraParc.Delete;
        ClientDSGeraParc.EmptyDataSet;
        ClientDSGeraParc.Close;
     end;
end;

procedure TF_GeraParcelas_Pag_Recr.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_GeraParcelas_Pag_Recr.btnGerarClick(Sender: TObject);
var
//Data Inclusao -- Emissao -- Habilitacao -- Vencimento
DTInc, DTEmissao, DTHab, DTVenc, dataVencimento: TDateTime;

//ID Class Contas - ID CliFor -- Numero da Parcelas -- Contador das Parcelas -- Dias para Vencimento --Numero da Parcela
IDClassCont, IDCliFor, QTDParcelas, ContParcela, icond, DiasVenci, NumParcela: Integer;

// Valor da Parcela -- Valor TOtal
valorParcela, VLTotal,entrada: Double;

//Mensagem para aparecer para o usuario -- Mensagem para aparecer no captio do form da mensagem -- Tipo de Operacao-- Numero do controle NumDoc -- OBS
mensagem,MensageAppMesBox, TPPagarReceber, NumControle, OBSS, CodigoSimplificado: string;

// Status -- Marcado -- Inativo -- Liquidado -- Descricao clifor -- Dias de Venciento dia fixo no mes
// -- receber a data de vencimento para alterar e colocar o dia fixo
Stat, Marcarr, Inat, Liquida, DescClieFor, DiasVenci2, DTVencStr: string;
begin
MensageAppMesBox:= lblTitulo.Caption;
entrada:=0;
NumParcela:= 0;
 // o erro esta aqui
 // Date
  dataVencimento:= Now;
  valorParcela:= 0.00; //definindo valor pra nao dar erro
  ContParcela:= 0;


  {$REGION 'VERIFICA��O DOS CAMPOS'} // Inicio
  if Trim(edtDTEmissao.Text) = '' then // Verificando a Data de Emissao
    begin
      mensagem:= ' O Campo Data Emissao Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtDTEmissao.SetFocus;
      Exit;
    end;

  if Trim(ComboClasseContabil.Text) = '' then // Verificando a Classe Contabil
    begin
      mensagem:= ' O Campo Classe Contabil Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      ComboClasseContabil.SetFocus;
      Exit;
    end;

  if Trim(edtNumDoc.Text) = '' then // Verificando a Numero de Controle
    begin
      mensagem:= ' O Campo Numero de Controle Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtNumDoc.SetFocus;
      Exit;
    end;

 if RGPagarReceber.ItemIndex = 0 then      // Verificando se � contas a Pagar ou receber
  begin
   if Trim(ComboFornecedor.Text) = '' then // Verificando a Cliente Fornecedor
    begin
      mensagem:= ' O Campo Cliente Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      ComboFornecedor.SetFocus;
      Exit;
    end;
  end;

 if RGPagarReceber.ItemIndex = 1 then      // Verificando se � contas a Pagar ou receber
  begin
   if Trim(ComboFornecedor.Text) = '' then // Verificando a Cliente Fornecedor
    begin
      mensagem:= ' O Campo Fornecedor Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      ComboFornecedor.SetFocus;
      Exit;
    end;
  end;

  if Trim(edtObs.Text) = '' then // Verificando a Observa��es
    begin
      mensagem:= ' O Campo OBS Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtObs.SetFocus;
      Exit;
    end;

  if (Trim(edtNumParc.Text) = '') or (Trim(edtNumParc.Text) = '0') then // Verificando a numero de parcelas
    begin
      mensagem:= ' O Campo Numero de Parcela Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtNumParc.SetFocus;
      Exit;
    end;

  if Trim(edtDTPrimeiVenc.Text) = '' then // Verificando a Data Primeiro Vencimento
    begin
      mensagem:= ' O Campo Data do Primeiro Vencimento Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtDTPrimeiVenc.SetFocus;
      Exit;
    end;

  if (Trim(edtValorParcela.Text) = '') or  (Trim(edtValorParcela.Text) = '0') then // Verificando a Valor Parcela
    begin
      mensagem:= ' O Campo Valor Parcela Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtValorParcela.SetFocus;
      Exit;
    end;

    if (ChecVencTDDia.Checked <> True) and (ChecVencACDia.Checked <> True) then
      begin
          mensagem:= ' Precisa Escolher uma Forma de Contar os dias de Vencimento, ' + #13
                             +'"VENCIMENTO TODO DIA" ou "VENCIMENTO A CADA DIA"';

          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
          ChecVencTDDia.SetFocus;
          Exit;
      end
    else
      begin

       if ChecVencTDDia.Checked = True then // Verificando se ira usar o venimento de todos os dias
          begin
             if Trim(edtVencTDDia.Text) = '' then // Verificando a data de vencimneto das Parcelas todo dia
                begin
                  mensagem:= ' O Campo Vencimento todo Dia Nao Pode Ficar Vazio ' + #13
                                     +'Favor Preencher';

                  Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
                  edtVencTDDia.SetFocus;
                  Exit;
                end;
           end;

       if ChecVencACDia.Checked = True then // Verificando se ira usar o venimento de todos os dias
         begin
           if Trim(edtVencACDia.Text) = '' then // Verificando a data de vencimneto das Parcelas todo dia
              begin
                mensagem:= ' O Campo Vencimento a Cada Dia Nao Pode Ficar Vazio ' + #13
                                   +'Favor Preencher';

                Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
                edtVencACDia.SetFocus;
                Exit;
              end;
          end;
      end;
{$ENDREGION} // Fim

// Limpando o Data Set
  ClientDSGeraParc.Open;
  if ClientDSGeraParc.RecordCount > 0 then
     begin
        ClientDSGeraParc.Delete;
        ClientDSGeraParc.EmptyDataSet;
        ClientDSGeraParc.Close;
     end;

 // Habilitando os outros Botoes
  btnSalvar.Visible:= True;
  btnSalvar.Enabled:= True;

  Height:= 667;

// Jogar os Valore nos Campos
CodigoSimplificado:='Teste';
DTInc:= Now;                                // Data Inclusao - Ta No Form              //DATA_INC                DATA_INC_CDS
DTHab:= Now;                                // Data Habilitacao - Nao Ta No Form       //DATA_HAB                DATA_HAB_CDS
DTEmissao:= StrToDate(edtDTEmissao.Text);    // Data Emissao - Ta No Form               //DATA_DOCUMENTO          DATA_DOCUMENTO_CDS
DTVenc:=  StrToDate(edtDTPrimeiVenc.Text);   // Data Primeiro Vencimento - Ta No Form   //DATA_VENCIMENTO         DATA_VENCIMENTO_CDS
QTDParcelas:= StrToInt(edtNumParc.Text);     // Numero da Parcela - Ta No Form          //TOTALPARCELAS           TOTALPARCELAS_CDS
IDClassCont:= ComboClasseContabil.KeyValue;  // ID Classe Sub Grupo - Ta No Form        //ID_CLASSEDESUBGRUPO     ID_CLASSEDESUBGRUPO_CDS
DescClieFor:= ComboFornecedor.Text;
IDCliFor:= ComboFornecedor.KeyValue;         // ID CliFor - Ta No Form                  //ID_CLIENTE              ID_CLIENTE_CDS
valorParcela:= StrToFloat(edtValorParcela.Text);   // Valor da Parcela - Ta No Form           //VALORPARELA            VALORPARCELA_CDS
//VLTotal:= StrToFloat(edtValorTotal.Text);    // Valor Total - Ta No Form  aqui pode ser o erro              //VALORTOTAL              VALORTOTAL_CDS
VLTotal:=  GlobalVlTotal;
NumControle:= edtNumDoc.Text;                // Numero de Controle Num Doc - Ta No Form //NUMERODOCUMENTO         NUMERODOCUMENTO_CDS
OBSS:= edtObs.Text;                          // Observa��o - Ta No Form                 //OBS                     OBS_CDS
Stat:= 'N';                                  // Status - Nao Ta No Form                 //STATUS                  STATUS_CDS
Marcarr:= 'N';                               // Marcar - Nao Ta No Form                 //MARCAR                  MARCAR_CDS
Inat:= 'N';                                  // Inativo - Nao Ta No Form                //INATIVO                 INATIVO_CDS
Liquida:= 'N';                               // Liquidado - Nao Ta No Form              //LIQUIDADO               LIQUIDADO_CDS


// Verificando o que esta fazendo -- Neste � Receber
  if RGPagarReceber.ItemIndex = 0 then   {$REGION 'CONTAS A RECEBER'} // Inicio
    begin    // Criando a Primeira Parcela
      TPPagarReceber:= 'RECEBER';
      GridResult.Columns[0].Title.Caption:= 'Cliente';
      ContParcela:=1;
         ClientDSGeraParc.Close;
         ClientDSGeraParc.Open;
         ClientDSGeraParc.Append;
            ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime:=           DTInc;
            ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime:=           DTHab;
            ClientDSGeraParc.FieldByName('DATA_DOCUMENTO_CDS').AsDateTime:=     DTEmissao;
            ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime:=    DTVenc;
            ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger:=       QTDParcelas;
            ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger:= ContParcela;
            ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger:= IDClassCont;
            ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger:=          IDCliFor;
            ClientDSGeraParc.FieldByName('DESCCLIFOR_CDS').AsAnsiString:=       DescClieFor;
            ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat:=          valorParcela;
            ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat:=            VLTotal;
            ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString:=  'GCRM '+ NumControle;      // GERAR CONTAS A RECEBER MANUAL;
            ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString:=              '< GERAR CONTAS A RECEBER MANUAL - PARCELA ' + IntToStr(ContParcela) + ' DE  ' + IntToStr(QTDParcelas) +' > ' + OBSS;
            ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString:=           Stat;
            ClientDSGeraParc.FieldByName('MARCAR_CDS').AsAnsiString:=           Marcarr;
            ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString:=          Inat;
            ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString:=        Liquida;
         ClientDSGeraParc.Post;
      ContParcela:= ContParcela + 1;

      // Criar as Demais Parcelas
       for ContParcela := ContParcela to QTDParcelas do
          begin

          // IF Para COLOCAR OS DIAS ENTRE PARCELA OU DIA FIXO
            If ChecVencTDDia.Checked = True then
              begin
                if ContParcela = 2 then
                  begin
                    DTVenc:= IncMonth(DTVenc,1);
                    DiasVenci2:= edtVencTDDia.Text;
                    DTVencStr:= DateToStr(DTVenc);
                    DTVencStr:= DiasVenci2 + Copy(DTVencStr,3,8);
                    DTVenc:= StrToDate(DTVencStr);
                  end
                else
                  begin
                   DTVenc:= IncMonth(DTVenc,1);
                  end;
              end
            else
              if ChecVencACDia.Checked = True then
                  begin
                    DiasVenci:= StrToInt(edtVencACDia.Text);
                    DTVenc:= DTVenc + DiasVenci;
                  end;

             ClientDSGeraParc.Append;
                  ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime:=           DTInc;
                  ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime:=           DTHab;
                  ClientDSGeraParc.FieldByName('DATA_DOCUMENTO_CDS').AsDateTime:=     DTEmissao;
                  ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime:=    DTVenc;
                  ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger:=       QTDParcelas;
                  ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger:= ContParcela;
                  ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger:= IDClassCont;
                  ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger:=          IDCliFor;
                  ClientDSGeraParc.FieldByName('DESCCLIFOR_CDS').AsAnsiString:=       DescClieFor;
                  ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat:=          valorParcela;
                  ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat:=            VLTotal;
                  ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString:=  'GCRM '+ NumControle;      // GERAR CONTAS A RECEBER MANUAL
                  ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString:=              '< GERAR CONTAS A RECEBER MANUAL - PARCELA ' + IntToStr(ContParcela) + ' DE  ' + IntToStr(QTDParcelas) +' > ' + OBSS;;
                  ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString:=           Stat;
                  ClientDSGeraParc.FieldByName('MARCAR_CDS').AsAnsiString:=           Marcarr;
                  ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString:=          Inat;
                  ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString:=        Liquida;
             ClientDSGeraParc.Post;
          end;
    end {$ENDREGION} // Fim
  else
 // Verificando o que esta fazendo -- Neste � Pagar
  if RGPagarReceber.ItemIndex = 1 then   {$REGION 'CONTAS A PAGAR'} // Inicio
     begin
      TPPagarReceber:= 'PAGAR';
      GridResult.Columns[0].Title.Caption:= 'Fornecedor';
      ContParcela:=1;
         ClientDSGeraParc.Close;
         ClientDSGeraParc.Open;
         ClientDSGeraParc.Append;
            ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime:=           DTInc;
            ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime:=           DTHab;
            ClientDSGeraParc.FieldByName('DATA_DOCUMENTO_CDS').AsDateTime:=     DTEmissao;
            ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime:=    DTVenc;
            ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger:=       QTDParcelas;
            ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger:= ContParcela;
            ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger:= IDClassCont;
            ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger:=          IDCliFor;
            ClientDSGeraParc.FieldByName('DESCCLIFOR_CDS').AsAnsiString:=       DescClieFor;
            ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat:=          valorParcela;
            ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat:=            VLTotal;
            ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString:=  'GCPM '+ NumControle;      // GERAR CONTAS A PAGAR MANUAL
            ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString:=              '< GERAR CONTAS A PAGAR MANUAL - PARCELA ' + IntToStr(ContParcela) + ' DE  ' + IntToStr(QTDParcelas) +' > ' + OBSS;
            ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString:=           Stat;
            ClientDSGeraParc.FieldByName('MARCAR_CDS').AsAnsiString:=           Marcarr;
            ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString:=          Inat;
            ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString:=        Liquida;
         ClientDSGeraParc.Post;
      ContParcela:= ContParcela + 1;

      // Criando as demais parcelas
       for ContParcela := ContParcela to QTDParcelas do
          begin

          // IF Para COLOCAR OS DIAS ENTRE PARCELA OU DIA FIXO
            If ChecVencTDDia.Checked = True then
              begin
                if ContParcela = 2 then
                  begin
                    DTVenc:= IncMonth(DTVenc,1);
                    DiasVenci2:= edtVencTDDia.Text;
                    DTVencStr:= DateToStr(DTVenc);
                    DTVencStr:= DiasVenci2 + Copy(DTVencStr,3,8);
                    DTVenc:= StrToDate(DTVencStr);
                  end
                else
                  begin
                   DTVenc:= IncMonth(DTVenc,1);
                  end;
              end
            else
              if ChecVencACDia.Checked = True then
                  begin
                    DiasVenci:= StrToInt(edtVencACDia.Text);
                    DTVenc:= DTVenc + DiasVenci;
                  end;

             ClientDSGeraParc.Append;
                  ClientDSGeraParc.FieldByName('DATA_INC_CDS').AsDateTime:=           DTInc;
                  ClientDSGeraParc.FieldByName('DATA_HAB_CDS').AsDateTime:=           DTHab;
                  ClientDSGeraParc.FieldByName('DATA_DOCUMENTO_CDS').AsDateTime:=     DTEmissao;
                  ClientDSGeraParc.FieldByName('DATA_VENCIMENTO_CDS').AsDateTime:=    DTVenc;
                  ClientDSGeraParc.FieldByName('TOTALPARCELAS_CDS').AsInteger:=       QTDParcelas;
                  ClientDSGeraParc.FieldByName('NUMEROPARCELA_CDS').AsInteger:= ContParcela;
                  ClientDSGeraParc.FieldByName('ID_CLASSEDESUBGRUPO_CDS').AsInteger:= IDClassCont;
                  ClientDSGeraParc.FieldByName('ID_CLIENTE_CDS').AsInteger:=          IDCliFor;
                  ClientDSGeraParc.FieldByName('DESCCLIFOR_CDS').AsAnsiString:=       DescClieFor;
                  ClientDSGeraParc.FieldByName('VALORPARCELA_CDS').AsFloat:=          valorParcela;
                  ClientDSGeraParc.FieldByName('VALORTOTAL_CDS').AsFloat:=            VLTotal;
                  ClientDSGeraParc.FieldByName('NUMERODOCUMENTO_CDS').AsAnsiString:=  'GCPM '+ NumControle;      // GERAR CONTAS A PAGAR MANUAL
                  ClientDSGeraParc.FieldByName('OBS_CDS').AsAnsiString:=              '< GERAR CONTAS A PAGAR MANUAL - PARCELA ' + IntToStr(ContParcela) + ' DE  ' + IntToStr(QTDParcelas) +' > ' + OBSS;
                  ClientDSGeraParc.FieldByName('STATUS_CDS').AsAnsiString:=           Stat;
                  ClientDSGeraParc.FieldByName('MARCAR_CDS').AsAnsiString:=           Marcarr;
                  ClientDSGeraParc.FieldByName('INATIVO_CDS').AsAnsiString:=          Inat;
                  ClientDSGeraParc.FieldByName('LIQUIDADO_CDS').AsAnsiString:=        Liquida;
             ClientDSGeraParc.Post;
          end;

     end;  {$ENDREGION} // Fim

end;

procedure TF_GeraParcelas_Pag_Recr.ChecVencACDiaClick(Sender: TObject);
begin
  if ChecVencACDia.Checked = True then  // Verificando se Checou o Check de Vencimento a cada dia, para habilitar o edit e desabilitar o outro check
      begin
        edtVencACDia.Enabled:= True;
        edtVencACDia.Color:= clWindow;
        edtVencACDia.SetFocus;

        ChecVencTDDia.Enabled:= False;
      end
  else
      begin
        edtVencACDia.Enabled:= False;
        edtVencACDia.Color:= clBtnFace;
        edtVencACDia.Clear;
        ChecVencTDDia.Enabled:= True;
      end;

end;

procedure TF_GeraParcelas_Pag_Recr.ChecVencTDDiaClick(Sender: TObject);
begin
  if ChecVencTDDia.Checked = True then   // Verificando se Checou o Check de Vencimento todo dia, para habilitar o edit e desabilitar o outro check
     begin
       edtVencTDDia.Enabled:= True;
       edtVencTDDia.Color:= clWindow;
       edtVencTDDia.SetFocus;

       ChecVencACDia.Enabled:= False;
     end
  else
    begin
       edtVencTDDia.Enabled:= False;
       edtVencTDDia.Color:= clBtnFace;
       edtVencTDDia.Clear;
       ChecVencACDia.Enabled:= True;
    end;

end;

procedure TF_GeraParcelas_Pag_Recr.DesabilitarCampos;
begin
  edtDTEmissao.Enabled:= False;
  ComboClasseContabil.Enabled:= False;
  edtNumDoc.Enabled:= False;
  ComboFornecedor.Enabled:= False;
  edtObs.Enabled:= False;
  edtNumParc.Enabled:= False;
  edtDTPrimeiVenc.Enabled:= False;
  ChecVencTDDia.Enabled:= False;
  ChecVencACDia.Enabled:= False;
  edtValorParcela.Enabled:= False;
end;

procedure TF_GeraParcelas_Pag_Recr.edtNumParcExit(Sender: TObject);
var
QTDEParcela: Integer;
VLParcela, VlTotal: Double;
begin
 // Fazendo a Multiplica��o para colocar o valor total
 QTDEParcela:= StrToInt(edtNumParc.Text);
 VLParcela:= StrToFloat(edtValorParcela.Text);
 VlTotal:=  QTDEParcela * VLParcela;

 edtValorTotal.Text:= (FormatFloat('##,###,##0.00',VlTotal));
end;

procedure TF_GeraParcelas_Pag_Recr.edtNumParcKeyPress(Sender: TObject;
  var Key: Char);
begin
       // Comando para Deixar Digitar Apenas Numeros
         { if not (Key in ['0'..'9',#8]) then
          Key:= #0; }
end;

procedure TF_GeraParcelas_Pag_Recr.edtValorParcelaEnter(Sender: TObject);
var
mensagem,MensageAppMesBox: string;
begin
  if (Trim(edtNumParc.Text) = '') or (Trim(edtNumParc.Text) = '0') then // Verificando a numero de parcelas
    begin
      mensagem:= ' O Campo Numero de Parcela Nao Pode Ficar Vazio ' + #13
                         +'Favor Preencher';

      Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
      edtNumParc.SetFocus;
      Exit;
    end;
end;

procedure TF_GeraParcelas_Pag_Recr.edtValorParcelaExit(Sender: TObject);
var
QTDEParcela: Integer;
VLParcela, VlTotal: Double;
mensagem,MensageAppMesBox: string;
begin
GlobalVlTotal:= 0;
    if (Trim(edtValorParcela.Text) = '') or  (Trim(edtValorParcela.Text) = '0') then // Verificando a Valor Parcela
        begin
          mensagem:= ' O Campo Valor Parcela Nao Pode Ficar Vazio ' + #13
                             +'Favor Preencher';

          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
          edtValorParcela.SetFocus;
          Exit;
        end;

 // Fazendo a Multiplica��o para colocar o valor total
 QTDEParcela:= StrToInt(edtNumParc.Text);
 VLParcela:= StrToFloat(edtValorParcela.Text);
 GlobalVlTotal:=  QTDEParcela * VLParcela;

 edtValorTotal.Text:= (FormatFloat('"R$ "0,.00',GlobalVlTotal));
end;

procedure TF_GeraParcelas_Pag_Recr.edtVencACDiaKeyPress(Sender: TObject;
  var Key: Char);
begin
       // Comando para Deixar Digitar Apenas Numeros
          if not (Key in ['0'..'9',#8]) then
          Key:= #0;
end;

procedure TF_GeraParcelas_Pag_Recr.edtVencTDDiaExit(Sender: TObject);
var
mensagem,MensageAppMesBox: string;
Data :Integer;
begin
    Data:=StrToInt(edtVencTDDia.Text);
    if (Data <1) or (Data >30) then
     begin
         mensagem:= ' Dia Incorreto, Dias Validos: de 1 a 30 ' + #13
                             +'Colocar Dia Correto';
          Application.MessageBox(PChar(mensagem), PChar(MensageAppMesBox) , MB_OK + MB_ICONINFORMATION);   // Variavel Configuravel
          edtVencTDDia.SetFocus;
          Exit;
     end;
end;

procedure TF_GeraParcelas_Pag_Recr.edtVencTDDiaKeyPress(Sender: TObject;
  var Key: Char);
begin
       // Comando para Deixar Digitar Apenas Numeros
          if not (Key in ['0'..'9',#8]) then
          Key:= #0;
end;

procedure TF_GeraParcelas_Pag_Recr.FormActivate(Sender: TObject);
begin
// VERIFICANDO QUEM ESTA ABRINDO A TELA
    if DEONDEVEM = 1 then  // CONTAS A RECEBER
      begin
         RGPagarReceber.ItemIndex:= 0;

         btnIncluirClick(Sender);

         edtNumDoc.Text:= NUMDOC;
         ComboFornecedor.KeyValue:= IDCLINT;
         edtObs.Text:= OBS;
         edtNumParc.Text:= TOTPARCEL;
         edtDTPrimeiVenc.Text:= DTVENCIMENTO;
         edtValorParcela.Text:= VLPARCEL;
         ComboClasseContabil.KeyValue:= IDCLASCONT;
         edtDTEmissao.Text:= DateToStr(Date);
      end
    else    // CONTAS A PAGAR
      if DEONDEVEM = 2 then
        begin
         RGPagarReceber.ItemIndex:= 1;

         btnIncluirClick(Sender);

         edtNumDoc.Text:= NUMDOC;
         ComboFornecedor.KeyValue:= IDCLINT;
         edtObs.Text:= OBS;
         edtNumParc.Text:= TOTPARCEL;
         edtDTPrimeiVenc.Text:= DTVENCIMENTO;
         edtValorParcela.Text:= VLPARCEL;
         ComboClasseContabil.KeyValue:= IDCLASCONT;
         edtDTEmissao.Text:= DateToStr(Date);
        end
      else // GERACAO DE CONTAS
        begin
        // Mudando o Tamanho e Posicao do Titulo
          lblTitulo.Top:= 6;
          lblTitulo.Left:= 90;
          lblTitulo.Height:= 35;
          lblTitulo.Width:= 540;

          lblTitulo.Font.Size:= 22;

        // Mudando As Propriedade do RadioGroup
          RGPagarReceber.Top:= 63;
          RGPagarReceber.Left:= 200;
          RGPagarReceber.Height:= 156;
          RGPagarReceber.Width:=  288;

          RGPagarReceber.Font.Size:= 20;
          RGPagarReceber.Font.Style:= [fsBold];

        // Colocando o Botao Fechar na Posicao

          btnFechar.Left := 278;
          btnFechar.Top := 224;
          btnFechar.Width := 119 ;
          btnFechar.Height := 81;

          DesabilitarCampos;

          Height:= 340; // Diminuindo o Form
        end;
end;

procedure TF_GeraParcelas_Pag_Recr.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ADOContaPagar.Close;
ADOCliFor.Close;
ADOContaReceber.Close;
end;

procedure TF_GeraParcelas_Pag_Recr.HabilitarCampos;
begin
  edtDTEmissao.Enabled:= True;
  ComboClasseContabil.Enabled:= True;
  edtNumDoc.Enabled:= True;
  ComboFornecedor.Enabled:= True;
  edtObs.Enabled:= True;
  edtNumParc.Enabled:= True;
  edtDTPrimeiVenc.Enabled:= True;
  ChecVencTDDia.Enabled:= True;
  ChecVencACDia.Enabled:= True;
  edtValorParcela.Enabled:= True;
end;

procedure TF_GeraParcelas_Pag_Recr.LimparCampos;
begin
  edtDTEmissao.Clear;
  ADOCliFor.Close;
  ADOClassCont.Close;
  edtNumDoc.Clear;
  edtObs.Clear;
  edtNumParc.Clear;
  edtDTPrimeiVenc.Clear;
  ChecVencTDDia.Checked:= False;
  ChecVencACDia.Checked:= False;
  edtValorParcela.Clear;
  edtValorTotal.Clear;
end;

procedure TF_GeraParcelas_Pag_Recr.RGPagarReceberClick(Sender: TObject);
begin
  if RGPagarReceber.ItemIndex = 0 then
     begin
     btnFechar.Visible:= False; // Sumindo com o Botao Grande de Fechar
     // Voltando ao normal o Titulo e Na Posicao Original
        lblTitulo.Top:= 6;
        lblTitulo.Left:= 223;
        lblTitulo.Height:= 19;
        lblTitulo.Width:= 307;

        lblTitulo.Font.Size:= 12;
        lblTitulo.Font.Style:= [fsBold];

     // Voltando ao normal o RadioGroup  e na Posicao Original
        RGPagarReceber.Top:= 32;
        RGPagarReceber.Left:= 8;
        RGPagarReceber.Height:= 41;
        RGPagarReceber.Width:=  153;

        RGPagarReceber.Font.Size:= 8;
        RGPagarReceber.Font.Style:= [];

     // Colocando no Label titulo o que esta Fazendo
        lblTitulo.Caption:= 'GERAR CONTAS A RECEBER';

     // Colocando no Captio do Form o que esta Fazendo
        Caption:= 'GERAR CONTAS A RECEBER';

     // Colocando os Campos Padrao como Visivel
        lblDTInc.Visible:= True;
        edtDTInc.Visible:= True;
        lblDTEmissao.Visible:= True;
        edtDTEmissao.Visible:= True;
        lblClassContab.Visible:= True;
        ComboClasseContabil.Visible:= True;
        lblNumDoc.Visible:= True;
        edtNumDoc.Visible:= True;
        lblCliFor.Visible:= True;
        lblCliFor.Caption:= 'Cliente';
        ComboFornecedor.Visible:= True;
        lblObs.Visible:= True;
        edtObs.Visible:= True;
        lblnumParc.Visible:= True;
        edtNumParc.Visible:= True;
        lblDTPrimeiVenc.Visible:= True;
        edtDTPrimeiVenc.Visible:= True;
        ChecVencTDDia.Visible:= True;
        edtVencTDDia.Visible:= True;
        edtVencTDDia.Enabled:= False; // Desabilitando o Edit s� habilita na hora que escolher a opcao
        edtVencTDDia.Color:= clBtnFace; // Mudando a Cor de Fundo
        ChecVencACDia.Visible:= True;
        edtVencACDia.Visible:= True;
        edtVencACDia.Enabled:= False; // Desabilitando o Edit s� habilita na hora que escolher a opcao
        edtVencACDia.Color:= clBtnFace; // Mudando a Cor de Fundo
        lblValorParcela.Visible:= True;
        edtValorParcela.Visible:= True;
        lblValorTotal.Visible:= True;
        edtValorTotal.Visible:= True;

     // Ativando os Botoes Padrao
        btnSair.Visible:= True;
        btnIncluir.Visible:= True;

        ComboFornecedor.ListField:= '';
        ComboFornecedor.KeyField:= '';

     // Colocando os Cliente
        ADOCliFor.Close;
        ADOCliFor.SQL.Clear;
        ADOCliFor.SQL.Add('select * from TB_CADCHACARA');
        ADOCliFor.Open;

        ComboFornecedor.ListField:= 'NOME_PROPRIETARIO';
        ComboFornecedor.KeyField:= 'ID';

     // ABRINDO COMPONENTES
      ADOCliFor.Open;
      ADOClassCont.Open;
     end
  else
  if RGPagarReceber.ItemIndex = 1 then
     begin
     btnFechar.Visible:= False; // Sumindo com o Botao Grande de Fechar
     // Voltando ao normal o Titulo e Na Posicao Original
        lblTitulo.Top:= 6;
        lblTitulo.Left:= 231;
        lblTitulo.Height:= 19;
        lblTitulo.Width:= 307;

        lblTitulo.Font.Size:= 12;
        lblTitulo.Font.Style:= [fsBold];

     // Voltando ao normal o RadioGroup  e na Posicao Original
        RGPagarReceber.Top:= 32;
        RGPagarReceber.Left:= 8;
        RGPagarReceber.Height:= 41;
        RGPagarReceber.Width:=  153;

        RGPagarReceber.Font.Size:= 8;
        RGPagarReceber.Font.Style:= [];

     // Colocando no Label titulo o que esta Fazendo
        lblTitulo.Caption:= 'GERAR CONTAS A PAGAR';

     // Colocando no Captio do Form o que esta Fazendo
        Caption:= 'GERAR CONTAS A PAGAR';

     // Colocando os Campos Padrao como Visivel
        lblDTInc.Visible:= True;
        edtDTInc.Visible:= True;
        lblDTEmissao.Visible:= True;
        edtDTEmissao.Visible:= True;
        lblClassContab.Visible:= True;
        ComboClasseContabil.Visible:= True;
        lblNumDoc.Visible:= True;
        edtNumDoc.Visible:= True;
        lblCliFor.Visible:= True;
        lblCliFor.Caption:= 'Fornecedor';
        ComboFornecedor.Visible:= True;
        lblObs.Visible:= True;
        edtObs.Visible:= True;
        lblnumParc.Visible:= True;
        edtNumParc.Visible:= True;
        lblDTPrimeiVenc.Visible:= True;
        edtDTPrimeiVenc.Visible:= True;
        ChecVencTDDia.Visible:= True;
        edtVencTDDia.Visible:= True;
        edtVencTDDia.Enabled:= False; // Desabilitando o Edit s� habilita na hora que escolher a opcao
        edtVencTDDia.Color:= clBtnFace; // Mudando a Cor de Fundo
        ChecVencACDia.Visible:= True;
        edtVencACDia.Visible:= True;
        edtVencACDia.Enabled:= False; // Desabilitando o Edit s� habilita na hora que escolher a opcao
        edtVencACDia.Color:= clBtnFace; // Mudando a Cor de Fundo
        lblValorParcela.Visible:= True;
        edtValorParcela.Visible:= True;
        lblValorTotal.Visible:= True;
        edtValorTotal.Visible:= True;

     // Ativando os Botoes Padrao
        btnSair.Visible:= True;
        btnIncluir.Visible:= True;

        ComboFornecedor.ListField:= '';
        ComboFornecedor.KeyField:= '';

     // Colocando os Fornecedores
        ADOCliFor.Close;
        ADOCliFor.SQL.Clear;
        ADOCliFor.SQL.Add(' select * from TB_FORNECEDOR ');
        ADOCliFor.Open;

        ComboFornecedor.ListField:= 'NOME_FANTASIA';
        ComboFornecedor.KeyField:= 'ID';

     // ABRINDO COMPONENTES
      ADOClassCont.Open;
     end;
end;

end.
