unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls,Data.Win.ADODB;

type
  TFrmTemp = class(TForm)
    pnlPosMudanca: TPanel;
    GridEditarResultado: TDBGrid;
    pnlLabelMudado1: TPanel;
    lblMudanca1: TLabel;
    lblMudancaRegistros1: TLabel;
    pnlVoltarporEmail: TPanel;
    lblEditarEmail: TLabel;
    lblEditarCliente: TLabel;
    lblEditarArqExcel: TLabel;
    lblEditarGrupoCarteira: TLabel;
    edtEditarPesq: TEdit;
    ComboBoxEditarEmailArqExcel: TComboBox;
    ComboBoxEditarEmailCliente: TComboBox;
    btnEmailReativar: TButton;
    ComboBoxEditarEmailGrupoCarteira: TComboBox;
    pnlAntesMudanca: TPanel;
    GridEditarAntesMudanca: TDBGrid;
    pnlLabelMudado2: TPanel;
    lblMudancaRegistrosAntes2: TLabel;
    lblAntesMudanca1: TLabel;
    pnlVoltarporCliente: TPanel;
    lbl133: TLabel;
    lbl143: TLabel;
    lbl153: TLabel;
    ComboBoxClienteCliente: TComboBox;
    ComboBoxClienteArqExcel: TComboBox;
    ComboBoxClienteGrupoCarteira: TComboBox;
    btnClienteReativar: TButton;
    pnlEditarRadioButton: TPanel;
    RadioButtonVoltarporEmail: TRadioButton;
    RadioButtonVoltCliente: TRadioButton;
    procedure RadioButtonVoltarporEmailClick(Sender: TObject);
    procedure RadioButtonVoltClienteClick(Sender: TObject);
    procedure edtEditarPesqEnter(Sender: TObject);
    procedure edtEditarPesqExit(Sender: TObject);
    procedure ComboBoxEditarEmailClienteEnter(Sender: TObject);
    procedure ComboBoxEditarEmailClienteExit(Sender: TObject);
    procedure ComboBoxEditarEmailArqExcelEnter(Sender: TObject);
    procedure ComboBoxEditarEmailArqExcelExit(Sender: TObject);
    procedure ComboBoxEditarEmailGrupoCarteiraEnter(Sender: TObject);
    procedure ComboBoxEditarEmailGrupoCarteiraExit(Sender: TObject);
    procedure edtEditarPesqKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxEditarEmailClienteSelect(Sender: TObject);
    procedure ComboBoxEditarEmailArqExcelSelect(Sender: TObject);
    procedure ComboBoxEditarEmailGrupoCarteiraSelect(Sender: TObject);
    procedure btnEmailReativarClick(Sender: TObject);
    procedure ComboBoxClienteClienteEnter(Sender: TObject);
    procedure ComboBoxClienteClienteExit(Sender: TObject);
    procedure ComboBoxClienteArqExcelEnter(Sender: TObject);
    procedure ComboBoxClienteArqExcelExit(Sender: TObject);
    procedure ComboBoxClienteGrupoCarteiraEnter(Sender: TObject);
    procedure ComboBoxClienteGrupoCarteiraExit(Sender: TObject);
    procedure ComboBoxClienteClienteSelect(Sender: TObject);
    procedure ComboBoxClienteArqExcelSelect(Sender: TObject);
    procedure ComboBoxClienteGrupoCarteiraSelect(Sender: TObject);
    procedure btnClienteReativarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTemp: TFrmTemp;

implementation

{$R *.dfm}

uses U_Principal;

procedure TFrmTemp.btnClienteReativarClick(Sender: TObject);
var
  qry: TADOQuery;
  strSQL: string;
begin
{$REGION 'Processo de Voltar os Registros para Ativo'}
 try
   if ComboBoxClienteCliente.Text <> '' then
      begin
         strSQL:= ' UPDATE hh.Lista_Email ';
         strSQL:= strSQL + ' SET ONOFF = 1 ';
         strsql:= strsql + ' where 1=1 '; //Email like ' + #39 + ComboBoxClienteCliente.Text + #37 + #39;

         if ComboBoxClienteCliente.Text <> '' then
          begin
             strSQL:= strSQL + ' and  cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
          end;

         if ComboBoxClienteArqExcel.Text <> '' then
          begin
             strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboBoxClienteArqExcel.Text + #39;
          end;

         if ComboBoxClienteGrupoCarteira.Text <> '' then
          begin
             strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboBoxClienteGrupoCarteira.Text + #39;
          end;

         F_Principal.AdoQ_Excluir.Close;
         F_Principal.AdoQ_Excluir.SQL.Clear;
         F_Principal.AdoQ_Excluir.SQL.Add(strSQL);
         F_Principal.AdoQ_Excluir.ExecSQL;

      end;
 except
   on E:Exception do
      Begin
         Showmessage('Erro Arrumar:4 ' + E.Message);
         Exit;
      End;
 end; {$ENDREGION 'Processo de Voltar os Registros para Ativo'}

 {$REGION 'Alimentar a grid de exclus�o'}
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;

  if ComboBoxClienteArqExcel.Text <> '' then
   begin
      strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboBoxClienteArqExcel.Text + #39;
   end;

  if ComboBoxClienteGrupoCarteira.Text <> '' then
   begin
      strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboBoxClienteGrupoCarteira.Text + #39;
   end;

   F_Principal.AdoQ_Excluir.Close;
   F_Principal.AdoQ_Excluir.SQL.Clear;
   F_Principal.AdoQ_Excluir.SQL.Add(strSQL);
   F_Principal.AdoQ_Excluir.Open;  {$ENDREGION 'Alimentar a grid de exclus�o'}

{$REGION 'Verificando quantidade de registros para mostrar nos textos'}
//Verificar se � registro unico
   if F_Principal.AdoQ_Excluir.RecordCount = 1 then
      begin
         F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar - '
         + F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Conta Reativada '; // Mostrar quantidade de Registros
         lblMudancaRegistrosAntes2.Visible:= True;
         lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
         lblMudancaRegistros1.Caption:= F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Registro ';
      end
   else
      if F_Principal.AdoQ_Excluir.RecordCount = 0 then
        begin
            F_Principal.statPesquisa.Panels[1].Text:= '';
        end
      else
        begin
          F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar - '
          + F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Contas Reativadas'; // Mostrar quantidade de Registros
          lblMudancaRegistrosAntes2.Visible:= True;
          lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
          lblMudancaRegistros1.Caption:= F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Registros ';
        end; {$ENDREGION 'Verificando quantidade de registros para mostrar nos textos'}

   // Colocar o Form no centro
   F_Principal.Height:= 832;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

   pnlPosMudanca.Height:= 253;
   pnlPosMudanca.Top:= 146;
   pnlPosMudanca.Visible:= True;

  // pnlGridEscluir.Height:= 253;
   pnlAntesMudanca.Align:= alClient;

   lblAntesMudanca1.Visible:= True;

   ComboBoxClienteCliente.Clear;
   ComboBoxClienteArqExcel.Clear;
   ComboBoxClienteGrupoCarteira.Clear;
   ComboBoxClienteArqExcel.Enabled:= False;
   ComboBoxClienteGrupoCarteira.Enabled:= False;

   lblMudancaRegistros1.Visible:= True;

   pnlVoltarporCliente.Top:= 49;

   btnClienteReativar.Enabled:= False;

{$REGION 'Busca para alimentar Combo Cliente'}
   try
   // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente  Apos Reativar ja alimenta o combo para caso queira realizar outro ja.
     qry:= TADOQuery.Create(nil);
     qry.Connection:= F_Principal.con_Geral;

   // Criando o Select
     strSql:= 'select distinct Cliente from hh.Lista_Email where ONOFF = 0 Order by cliente' ;

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
               ComboBoxClienteCliente.Clear;
                while not qry.Eof do
                  begin
                     ComboBoxClienteCliente.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
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
   End; {$ENDREGION 'Busca para alimentar Combo Cliente'}
end;

procedure TFrmTemp.btnEmailReativarClick(Sender: TObject);
var
  strSQL : string;
begin

  { if edtEditarPesq.Text <> '' then
      begin
         strSQL:= ' UPDATE hh.Lista_Email ';
         strSQL:= strSQL + ' SET ONOFF = 1 ';
         strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
         strsql:= strsql + ' and ONOFF <> 1 ';

         if ComboBoxEditarEmailCliente.Text <> '' then
          begin
             strSQL:= strSQL + ' and  cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
          end;

         if ComboBoxEditarEmailArqExcel.Text <> '' then
          begin
             strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboBoxEditarEmailArqExcel.Text + #39;
          end;

         if ComboBoxEditarEmailGrupoCarteira.Text <> '' then
          begin
             strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboBoxEditarEmailGrupoCarteira.Text + #39;
          end;

         F_Principal.AdoQ_Excluir.Close;
         F_Principal.AdoQ_Excluir.SQL.Clear;
         F_Principal.AdoQ_Excluir.SQL.Add(strSQL);
         F_Principal.AdoQ_Excluir.ExecSQL;

      end; } // se precisar tirar temporario

{$REGION 'Para mostrar Resultado da Grid Excluir'}
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
  strsql:= strsql + ' and ONOFF <> 1 ';

  if ComboBoxEditarEmailCliente.Text <> '' then
   begin
      strSQL:= strSQL + ' and  cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
   end;

  if ComboBoxEditarEmailArqExcel.Text <> '' then
   begin
      strSQL:= strSQL + ' and  HH_Excel  = ' + #39 + ComboBoxEditarEmailArqExcel.Text + #39;
   end;

  if ComboBoxEditarEmailGrupoCarteira.Text <> '' then
   begin
      strSQL:= strSQL + ' and  Grupo_Carteira = ' + #39 + ComboBoxEditarEmailGrupoCarteira.Text + #39;
   end;

   F_Principal.AdoQ_Excluir.Close;
   F_Principal.AdoQ_Excluir.SQL.Clear;
   F_Principal.AdoQ_Excluir.SQL.Add(strSQL);
   F_Principal.AdoQ_Excluir.Open;
{$ENDREGION 'Para mostrar Resultado da Grid Excluir'}

{$REGION 'Verificar quantidade de Registro para Mostrar a Mensagem'}
//Verificar se � registro unico
   if F_Principal.AdoQ_Excluir.RecordCount = 1 then
      begin
         F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Desativar - '
         + F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Conta Desativada '; // Mostrar quantidade de Registros
         lblMudancaRegistrosAntes2.Visible:= True;
         lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
         lblMudancaRegistros1.Visible:= True;
         lblMudancaRegistros1.Caption:= F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Registro ';
      end
   else
      if F_Principal.AdoQ_Excluir.RecordCount = 0 then
        begin
            F_Principal.statPesquisa.Panels[1].Text:= '';
        end
      else
        begin
          F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Desativar - '
          + F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Contas Desativadas'; // Mostrar quantidade de Registros
          lblMudancaRegistrosAntes2.Visible:= True;
          lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
          lblMudancaRegistros1.Visible:= True;
          lblMudancaRegistros1.Caption:= F_Principal.AdoQ_Excluir.RecordCount.ToString + ' Registros ';
        end;
{$ENDREGION 'Verificar quantidade de Registro para Mostrar a Mensagem'}

   F_Principal.Height:= 832;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

   pnlPosMudanca.Top:= 146;
   pnlPosMudanca.Visible:= True;
   pnlPosMudanca.Height:= 253;

   pnlAntesMudanca.Height:= 253;
   pnlAntesMudanca.Align:= alClient;
   lblMudanca1.Visible:= True;
   lblAntesMudanca1.Visible:= True;

   edtEditarPesq.Clear;
   ComboBoxEditarEmailCliente.Clear;
   ComboBoxEditarEmailArqExcel.Clear;
   ComboBoxEditarEmailGrupoCarteira.Clear;
   ComboBoxEditarEmailCliente.Enabled:= False;
   ComboBoxEditarEmailArqExcel.Enabled:= False;
   ComboBoxEditarEmailGrupoCarteira.Enabled:= False;

   pnlVoltarporEmail.Top:= 49;

   btnEmailReativar.Enabled:= False;
   GridEditarAntesMudanca.Tag:= 0;
end;

procedure TFrmTemp.ComboBoxClienteArqExcelEnter(Sender: TObject);
var
  strsql: string;
begin
  ComboBoxClienteGrupoCarteira.Clear;

// verificar se o campo nao esta vazio
  if Trim(ComboBoxClienteArqExcel.Text) <> '' then
    begin
       strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
       strsql:= strsql + ' from hh.Lista_Email ';
       strSql:= strSql + ' where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
       strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxClienteArqExcel.Text + #39;
       strSql:= strSql + ' and onoff <> 1 order by Email';

      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;
             F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString; // Mostrar quantidade de Registros
          end;
    end;

  ComboBoxClienteArqExcel.Color:= clSkyBlue;
  lbl143.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxClienteArqExcelExit(Sender: TObject);
begin
  ComboBoxClienteArqExcel.Color:= clWindow;
  lbl143.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxClienteArqExcelSelect(Sender: TObject);
var
  qry: TADOQuery;
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxClienteArqExcel.Text + #39;
  strSql:= strSql + ' and onoff <> 1 order by Email';

// verificar se o campo nao esta vazio
  if Trim(ComboBoxClienteArqExcel.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
          end;
    end;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o pegar Grupo Carteira
      qry:= TADOQuery.Create(nil);
      qry.Connection:= F_Principal.con_Geral;

    // Criando o Select
       strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where cliente like ' + #39 + ComboBoxClienteCliente.Text + #37 + #39;
       strSql:= strSql + ' and ONOFF <> 1 and HH_Excel = ' + #39 + ComboBoxClienteArqExcel.Text + #39;

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
                      ComboBoxClienteGrupoCarteira.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                      qry.Next;
                   end;
              end;
          end;
      ComboBoxClienteGrupoCarteira.Enabled:= True;
    Except
      on E:Exception do
         Begin
            Showmessage('Erro Arrumar:6 ' + E.Message);
            Exit;
         End;
    End;
end;

procedure TFrmTemp.ComboBoxClienteClienteEnter(Sender: TObject);
begin
  ComboBoxClienteArqExcel.Clear;
  ComboBoxClienteGrupoCarteira.Clear;
  btnClienteReativar.Enabled:= False;
  F_Principal.AdoQ_Pesquisa.Close;
  lblMudancaRegistrosAntes2.Visible:= False;

  ComboBoxClienteCliente.Color:= clSkyBlue;
  lbl133.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxClienteClienteExit(Sender: TObject);
begin
  ComboBoxClienteCliente.Color:= clWindow;
  lbl133.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxClienteClienteSelect(Sender: TObject);
var
  qry : TADOQuery;
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
  strSql:= strSql + ' and OnOff <> 1  order by Email'  ;

{$REGION 'Verifica se N�o esta vazio e preenche informa��es de registros'}
// verificar se o campo nao esta vazio
  if Trim(ComboBoxClienteCliente.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
          end;

          if (F_Principal.AdoQ_Pesquisa.RecordCount <> 0) then // Se n�o encontrar dados
             begin
                btnClienteReativar.Enabled:= True;
             end;
    end; {$ENDREGION 'Verifica se N�o esta vazio e preenche informa��es de registros'}

{$REGION 'Preenchendo o proximo ComboBOX'}
     try
     // Criando Um ADOQUERY Em Tempo de Execu��o pegar Arquivos de Excel
       qry:= TADOQuery.Create(nil);
       qry.Connection:= F_Principal.con_Geral;

     // Criando o Select
       strSql:= 'select distinct HH_Excel from hh.Lista_Email where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
       strSql:= strSql + ' and onoff <> 1 ';
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
                  ComboBoxClienteArqExcel.Clear;
                  while not qry.Eof do
                    begin
                       ComboBoxClienteArqExcel.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
               end;
           end;

        ComboBoxClienteArqExcel.Enabled:= True;
     Except
       on E:Exception do
          Begin
             Showmessage('Erro Arrumar:5 ' + E.Message);
             Exit;
          End;
     End; {$ENDREGION 'Preenchendo o proximo ComboBOX'}
//Fechar Componente
  F_Principal.AdoQ_Excluir.Close;
  lblMudancaRegistros1.Visible:= False;
end;

procedure TFrmTemp.ComboBoxClienteGrupoCarteiraEnter(Sender: TObject);
begin
  ComboBoxClienteGrupoCarteira.Color:= clSkyBlue;
  lbl153.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxClienteGrupoCarteiraExit(Sender: TObject);
begin
  ComboBoxClienteGrupoCarteira.Color:= clWindow;
  lbl153.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxClienteGrupoCarteiraSelect(Sender: TObject);
var
  strSQL: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strSql:= strSql + ' where cliente = ' + #39 + ComboBoxClienteCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxClienteArqExcel.Text + #39;
  strSql:= strSql + ' and Grupo_Carteira = ' + #39 + ComboBoxClienteGrupoCarteira.Text + #39;
  strSql:= strSql + ' and onoff <> 1 order by Email';

// verificar se o campo nao esta vazio
  if Trim(ComboBoxClienteArqExcel.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                  end
                else
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
          end;
    end;
end;

procedure TFrmTemp.ComboBoxEditarEmailArqExcelEnter(Sender: TObject);
begin
  ComboBoxEditarEmailGrupoCarteira.Enabled:= False;
  ComboBoxEditarEmailGrupoCarteira.Clear;

  ComboBoxEditarEmailArqExcel.Color:= clSkyBlue;
  lblEditarArqExcel.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxEditarEmailArqExcelExit(Sender: TObject);
begin
  ComboBoxEditarEmailArqExcel.Color:= clWindow;
  lblEditarArqExcel.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxEditarEmailArqExcelSelect(Sender: TObject);
var
  qry: TADOQuery;
  strsql: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxEditarEmailArqExcel.Text + #39;
  strsql:= strsql + ' and ONOFF <> 1 ';

// verificar se o campo nao esta vazio
  if Trim(ComboBoxEditarEmailArqExcel.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                   lblMudancaRegistrosAntes2.Visible:= True;
                   lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
                   btnEmailReativar.Enabled:= True;
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                      lblMudancaRegistrosAntes2.Visible:= False;
                      btnEmailReativar.Enabled:= False;
                  end
                else
                  begin
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
                    lblMudancaRegistrosAntes2.Visible:= True;
                    lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
                    btnEmailReativar.Enabled:= True;
                  end;
          end;
    end;

    try
    // Criando Um ADOQUERY Em Tempo de Execu��o pegar Grupo Carteira
      qry:= TADOQuery.Create(nil);
      qry.Connection:= F_Principal.con_Geral;

    // Criando o Select
       strSql:= 'select distinct Grupo_Carteira from hh.Lista_Email where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
       strSql:= strSql + ' and ONOFF = 0 and cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
       strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxEditarEmailArqExcel.Text + #39;

      with qry do
          begin
            Close;
            SQL.Clear;
            SQL.Add(strSql);
            Open;
            First;
            if (qry.RecordCount = 0) then // Se n�o encontrar dados
               begin
                // ComboCarteiraEmailEnviado.Clear;
                  mensagem:= ' N�o Existe Grupo Carteira Cadastrado, ' + #13
                           +'Favor Verificar com Ad. Do Banco.';
                  Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
               end
            else
              begin
                 ComboBoxEditarEmailGrupoCarteira.Clear;
                 while not qry.Eof do
                   begin
                      ComboBoxEditarEmailGrupoCarteira.Items.Add(qry.FieldByName('Grupo_Carteira').AsAnsiString);
                      qry.Next;
                   end;
                 ComboBoxEditarEmailGrupoCarteira.Enabled:= True;
              end;
          end;

    Except
      on E:Exception do
         Begin
            Showmessage('Erro Arrumar:6 ' + E.Message);
            Exit;
         End;
    End;
end;

procedure TFrmTemp.ComboBoxEditarEmailClienteEnter(Sender: TObject);
begin
  ComboBoxEditarEmailArqExcel.Enabled:= False;
  ComboBoxEditarEmailArqExcel.Clear;
  ComboBoxEditarEmailGrupoCarteira.Enabled:= False;
  ComboBoxEditarEmailGrupoCarteira.Clear;

  ComboBoxEditarEmailCliente.Color:= clSkyBlue;
  lblEditarCliente.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxEditarEmailClienteExit(Sender: TObject);
begin
  ComboBoxEditarEmailCliente.Color:= clWindow;
  lblEditarCliente.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxEditarEmailClienteSelect(Sender: TObject);
var
  qry: TADOQuery;
  strsql: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
  strsql:= strsql + ' and ONOFF <> 1 ';

// verificar se o campo nao esta vazio
  if Trim(ComboBoxEditarEmailCliente.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                   lblMudancaRegistrosAntes2.Visible:= True;
                   lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
                   btnEmailReativar.Enabled:= True;
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= ''; // Mostrar quantidade de Registros
                      lblMudancaRegistrosAntes2.Visible:= False;
                      btnEmailReativar.Enabled:= False;
                  end
                else
                  begin
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
                    lblMudancaRegistrosAntes2.Visible:= True;
                    lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
                    btnEmailReativar.Enabled:= True;
                  end;
          end;
    end;

     try
     // Criando Um ADOQUERY Em Tempo de Execu��o pegar Arquivos de Excel
       qry:= TADOQuery.Create(nil);
       qry.Connection:= F_Principal.con_Geral;

     // Criando o Select
       strSql:= 'select distinct HH_Excel from hh.Lista_Email where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
       strSql:= strSql + ' and ONOFF = 0 and cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;

       with qry do
           begin
             Close;
             SQL.Clear;
             SQL.Add(strSql);
             Open;
             First;
             if (qry.RecordCount = 0) then // Se n�o encontrar dados
                begin
                   btnEmailReativar.Enabled:= false;
                   ComboBoxEditarEmailCliente.Clear;
                   ComboBoxEditarEmailCliente.Enabled:= False;
                   edtEditarPesq.SetFocus;
                   mensagem:= ' N�o Existe Arquivo de Excel Cadastrado, ' + #13
                            +'Favor Verificar se o e-mail est� correto.';
                   Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                end
             else
               begin
                  ComboBoxEditarEmailArqExcel.Clear;
                  while not qry.Eof do
                    begin
                       ComboBoxEditarEmailArqExcel.Items.Add(qry.FieldByName('HH_Excel').AsAnsiString);
                       qry.Next;
                    end;
                  ComboBoxEditarEmailArqExcel.Enabled:= True;
               end;
           end;
     Except
       on E:Exception do
          Begin
             Showmessage('Erro Arrumar:5 ' + E.Message);
             Exit;
          End;
     End;
end;

procedure TFrmTemp.ComboBoxEditarEmailGrupoCarteiraEnter(Sender: TObject);
begin
  ComboBoxEditarEmailGrupoCarteira.Color:= clSkyBlue;
  lblEditarGrupoCarteira.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.ComboBoxEditarEmailGrupoCarteiraExit(Sender: TObject);
begin
  ComboBoxEditarEmailGrupoCarteira.Color:= clWindow;
  lblEditarGrupoCarteira.Font.Style:= [];
end;

procedure TFrmTemp.ComboBoxEditarEmailGrupoCarteiraSelect(Sender: TObject);
var
  strsql: string;
begin
  strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
  strsql:= strsql + ' from hh.Lista_Email ';
  strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
  strSql:= strSql + ' and cliente = ' + #39 + ComboBoxEditarEmailCliente.Text + #39;
  strSql:= strSql + ' and HH_Excel = ' + #39 + ComboBoxEditarEmailArqExcel.Text + #39;
  strSql:= strSql + ' and Grupo_Carteira = ' + #39 + ComboBoxEditarEmailGrupoCarteira.Text + #39;
  strsql:= strsql + ' and ONOFF <> 1 ';

// verificar se o campo nao esta vazio
  if Trim(ComboBoxEditarEmailGrupoCarteira.Text) <> '' then
    begin
      // Para nao ficar digitando o adoquery
       with F_Principal.AdoQ_Pesquisa do
          begin
             Close;
             SQL.clear;
             SQL.Add(strsql);
             Open;
             First;

          //Verificar se � registro unico
             if RecordCount = 1 then
                begin
                   F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                   lblMudancaRegistrosAntes2.Visible:= True;
                   lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
                   btnEmailReativar.Enabled:= True;
                end
             else
                if RecordCount = 0 then
                  begin
                      F_Principal.statPesquisa.Panels[1].Text:= ''; // Mostrar quantidade de Registros
                      lblMudancaRegistrosAntes2.Visible:= False;
                      btnEmailReativar.Enabled:= False;
                  end
                else
                  begin
                    F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
                    lblMudancaRegistrosAntes2.Visible:= True;
                    lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
                    btnEmailReativar.Enabled:= True;
                  end;
          end;
    end;
end;

procedure TFrmTemp.edtEditarPesqEnter(Sender: TObject);
begin
  btnEmailReativar.Enabled:= False;

  ComboBoxEditarEmailCliente.Enabled:= False;
  ComboBoxEditarEmailCliente.Clear;
  ComboBoxEditarEmailArqExcel.Enabled:= False;
  ComboBoxEditarEmailArqExcel.Clear;
  ComboBoxEditarEmailGrupoCarteira.Enabled:= False;
  ComboBoxEditarEmailGrupoCarteira.Clear;

  edtEditarPesq.Color:= clSkyBlue;
  lblEditarEmail.Font.Style:= [TFontStyle.fsBold];
end;

procedure TFrmTemp.edtEditarPesqExit(Sender: TObject);
begin
  edtEditarPesq.Color:= clWindow;
  lblEditarEmail.Font.Style:= [];
end;

procedure TFrmTemp.edtEditarPesqKeyPress(Sender: TObject; var Key: Char);
var
  strsql, strsql1: string;
  UserUnico: Integer;
  qry: TADOQuery;
begin
  if Trim(edtEditarPesq.Text) <> '' then
    begin

    {$REGION 'Verificando se a apenas um e-mail para trabalhar'}
        try
        // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente para verificar se � unico
          qry:= TADOQuery.Create(nil);
          qry.Connection:= F_Principal.con_Geral;

        // Criando o Select
          strsql1:= 'select distinct Email from hh.Lista_Email where ONOFF = 0 and Email like ' +#39+ edtEditarPesq.Text + #37 + #39;

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
                      btnEmailReativar.Enabled:= False;
                      ComboBoxEditarEmailCliente.Enabled:= False;
                      ComboBoxEditarEmailArqExcel.Enabled:= False;
                      ComboBoxEditarEmailGrupoCarteira.Enabled:= False;
                   end;
              end;
        Except
          on E:Exception do
             Begin
                Showmessage('Erro Arrumar:4 ' + E.Message);
                Exit;
             End;
        End;
    {$ENDREGION 'Verificando se a apenas um e-mail para trabalhar'}

    {$REGION 'Filtrando para Alimentar a Grid de pesqusia'}
    // verificar se o campo nao esta vazio
      if Trim(edtEditarPesq.Text) <> '' then
        begin
        // Select Inicial
          strsql:= 'select ID, Nome, Email, HH_Excel, Grupo_Carteira GCarteira, Cliente,  Case onoff when 1 then ''Verdadeiro'' else ''Falso'' end Recebe ' ;
          strsql:= strsql + ' from hh.Lista_Email ';
          strsql:= strsql + ' where Email like ' + #39 + edtEditarPesq.Text + #37 + #39;
          strsql:= strsql + ' and ONOFF <> 1 ';

          // Para nao ficar digitando o adoquery
           with F_Principal.AdoQ_Pesquisa do
              begin
                 Close;
                 SQL.clear;
                 SQL.Add(strsql);
                 Open;
                 First;

              //Verificar se � registro unico
                 if RecordCount = 1 then
                    begin
                       F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Conta Para Reativar '; // Mostrar quantidade de Registros
                       lblMudancaRegistrosAntes2.Visible:= True;
                       lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registro ';
                       btnEmailReativar.Enabled:= True;
                    end
                 else
                    if RecordCount = 0 then
                      begin
                          F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ''; // Mostrar quantidade de Registros
                          lblMudancaRegistrosAntes2.Visible:= False;
                          btnEmailReativar.Enabled:= False;
                      end
                    else
                      begin
                        F_Principal.statPesquisa.Panels[1].Text:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Contas Para Reativar '; // Mostrar quantidade de Registros
                        lblMudancaRegistrosAntes2.Visible:= True;
                        lblMudancaRegistrosAntes2.Caption:= F_Principal.AdoQ_Pesquisa.RecordCount.ToString + ' Registros ';
                        btnEmailReativar.Enabled:= True;
                      end;
              end;

        {$REGION 'Ap�s ter verificado que s� tem um email unico faz as a�oes necessarias, e Alimenta o comboCliente'}
              if (UserUnico) = 1 then
                begin
                // Realizar Alguma A��o
                  try
                  // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente
                    qry:= TADOQuery.Create(nil);
                    qry.Connection:= F_Principal.con_Geral;

                  // Criando o Select
                    strSql:= 'select distinct Cliente from hh.Lista_Email where ONOFF = 0 and Email like ' + #39 + edtEditarPesq.Text + #37 + #39;

                    with qry do
                        begin
                          Close;
                          SQL.Clear;
                          SQL.Add(strSql);
                          Open;
                          First;
                          if (qry.RecordCount = 0) then // Se n�o encontrar dados
                             begin
                             //  ComboCarteiraEmailEnviado.Clear;
                                mensagem:= ' N�o Existe Cliente Cadastrado, ' + #13
                                         + ' Favor Verificar com Ad. Do Banco.';
                                Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                             end
                          else
                            begin
                              ComboBoxEditarEmailCliente.Clear;
                               while not qry.Eof do
                                 begin
                                    ComboBoxEditarEmailCliente.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
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
                  btnEmailReativar.Enabled:= True;
                  ComboBoxEditarEmailCliente.Enabled:= True;
                  F_Principal.AdoQ_Excluir.Close;
                  lblMudancaRegistros1.Visible:= False;
                end
              else
                begin
                   // btnExcluir.Enabled:= False;
                   //ComboExcluirCliente.Enabled:= False;
                end;     {$ENDREGION 'Ap�s ter verificado que s� tem um email unico faz as a�oes necessarias, e Alimenta o comboCarteira'}
        end;
    {$ENDREGION 'Filtrando para Alimentar a Grid de pesqusia'}
    end;
end;

procedure TFrmTemp.RadioButtonVoltarporEmailClick(Sender: TObject);
begin
  GridEditarAntesMudanca.Tag:= 1;

  pnlVoltarporCliente.Visible:= False;
  pnlVoltarporCliente.Enabled:=False;

  pnlVoltarporEmail.Top:= 49;
  pnlVoltarporEmail.Visible:=True;
  pnlVoltarporEmail.Enabled:= True;
  edtEditarPesq.SetFocus;
  pnlAntesMudanca.Visible:= True;
  pnlAntesMudanca.Top:= 243;
  pnlPosMudanca.Visible:= False;
  Height:= 657;
  F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
  F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

  lblMudancaRegistros1.Visible:= False;
  lblMudancaRegistrosAntes2.Visible:= False;
  lblAntesMudanca1.Visible:= False;
  btnEmailReativar.Enabled:= False;

  edtEditarPesq.Clear;
  ComboBoxEditarEmailCliente.Clear;
  ComboBoxEditarEmailArqExcel.Clear;
  ComboBoxEditarEmailGrupoCarteira.Clear;
  ComboBoxClienteCliente.Clear;
  ComboBoxClienteArqExcel.Clear;
  ComboBoxClienteGrupoCarteira.Clear;
  F_Principal.AdoQ_Pesquisa.Close;
  F_Principal.statPesquisa.Panels[1].Text:= '';

end;

procedure TFrmTemp.RadioButtonVoltClienteClick(Sender: TObject);
var
  qry: TADOQuery;
  strSQL: string;
begin
   GridEditarAntesMudanca.Tag:= 2;

   pnlVoltarporEmail.Visible:=False;
   pnlVoltarporEmail.Enabled:= False;

   pnlPosMudanca.Visible:= False;
   Height:= 657;
   F_Principal.Left:= (Screen.Width div 2) - (F_Principal.Width div 2);
   F_Principal.Top:= (Screen.Height div 2) - (F_Principal.Height div 2);

   lblMudancaRegistros1.Visible:= False;
   lblMudancaRegistrosAntes2.Visible:= False;
   lblAntesMudanca1.Visible:= False;
   btnClienteReativar.Enabled:= False;

   edtEditarPesq.Clear;
   ComboBoxEditarEmailCliente.Clear;
   ComboBoxEditarEmailArqExcel.Clear;
   ComboBoxEditarEmailGrupoCarteira.Clear;
   ComboBoxClienteCliente.Clear;
   ComboBoxClienteArqExcel.Clear;
   ComboBoxClienteGrupoCarteira.Clear;
   F_Principal.AdoQ_Pesquisa.Close;

   try
   // Criando Um ADOQUERY Em Tempo de Execu��o pegar Cliente
     qry:= TADOQuery.Create(nil);
     qry.Connection:= F_Principal.con_Geral;

   // Criando o Select
     strSql:= 'select distinct Cliente from hh.Lista_Email where ONOFF = 0 Order by cliente' ;

     with qry do
         begin
           Close;
           SQL.Clear;
           SQL.Add(strSql);
           Open;
           First;
           if (qry.RecordCount = 0) then // Se n�o encontrar dados
              begin
                 mensagem:= ' N�o Existe Cliente para Reativar, ' + #13
                          + ' Tudo certo por aqui. ';
                 Application.MessageBox(PChar(mensagem),PChar(MensageAppMesBox),MB_OK+MB_ICONINFORMATION);
                 ComboBoxClienteCliente.Enabled:= False;
              end
           else
             begin
//               ComboExcluirCliente.Clear;
                while not qry.Eof do
                  begin
                     ComboBoxClienteCliente.Items.Add(qry.FieldByName('Cliente').AsAnsiString);
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

  pnlVoltarporCliente.Top:= 49;
  pnlVoltarporCliente.Visible:= True;
  pnlVoltarporCliente.Enabled:=True;
  pnlAntesMudanca.Visible:= True;
  pnlAntesMudanca.Align:= alClient;
  F_Principal.statPesquisa.Panels[1].Text:= '';
end;

end.
