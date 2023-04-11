unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TF_Login = class(TForm)
    imgLoginFundo: TImage;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    lblTitulo: TLabel;
    edtSenha: TEdit;
    edtUsuario: TEdit;
    imgLogoPeq: TImage;
    imgLogoGrande: TImage;
    CheckSenha: TCheckBox;
    CheckUser: TCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnEntrarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckSenhaClick(Sender: TObject);
    procedure CheckUserClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure WMNChitTest (var M: TWMNCHitTest ); message WM_NCHITTEST;     // habilitar mudar o form de login
    procedure MSG; // Para Verificar se o Caps Lock esta ativa
  end;

var
  F_Login: TF_Login;

implementation

uses
  U_DMPrincipal, U_Principal;

{$R *.dfm}



procedure TF_Login.btnEntrarClick(Sender: TObject);
var
  mensagem, strSqlLog: string;
begin
  if edtUsuario.Text = '' then    // Verificando o Campo de Usuario se esta Vazio
      begin
        Application.MessageBox('  Informe  Seu  Usu�rio.  ','COLOCAR NOME DE USU�RIO',MB_OK+MB_ICONWARNING);
        edtUsuario.SetFocus;
        Abort;
      end;
  if edtSenha.Text = '' then    // Verificando se o Campo senha esta Vazio
      begin
        Application.MessageBox('  Informe  Sua  Senha.  ','COLOCAR SENHA',MB_OK+MB_ICONWARNING);
        edtSenha.SetFocus;
        Abort;
      end;
// Buscando o usuario no Banco
  strSqlLog:= 'select * from TB_USUARIO U, TB_PERFIL P  WHERE U.ID_PERFIL = P.ID';  //' SELECT * FROM TB_USUARIO U, TB_PERFIL P WHERE U.ID_PERFIL_U = P.ID';
  strSqlLog:= strSqlLog + ' AND U.LOGIN = ' + #39 + edtUsuario.Text + #39;
  strSqlLog:= strSqlLog + ' AND U.SENHA = ' + #39 + edtSenha.Text + #39;
  with F_Principal.ADOQLogin do                                       //*********** ADOQUERY = ADOTABELS **************************************
    begin
        Close;
        SQL.Clear;
        SQL.Add(strSqlLog);
        open;
    end;


  // Verificando se o Usuario esta Bloqueado Para Usar o Sistema
  if F_Principal.ADOQLogin.FieldByName('STATUS').AsAnsiString = 'N' then         //*********** ADOQUERY = ADOTABELS **************************************
        begin
            mensagem:='     << ERRO 1021 >>     '    +#13 +#13 +
            ' Voc� est� cadastrado no Sistema mas n�o possui' +#13 +
            ' autoriza��o para usa-lo neste momento. ' + #13+  #13+
            'Consulte o Administrador do Sistema.<< ERRO 1021 >>';
            Application.MessageBox(PChar(mensagem), 'Login n�o Autorizado << ERRO 1021 >>',MB_OK + MB_ICONERROR);
            Application.Terminate;
        end
  else
 // Verificando se o Usuario e Senha Estao Corretos
    if (F_Principal.ADOQLogin.RecordCount) = 0 then                              //*********** ADOQUERY = ADOTABELS **************************************
        begin  // Neste o Usuario ou Senha estao Errados
            mensagem:='     << ERRO 1019 >>     '    +#13 +#13 +
            ' Nome ou Senha do Usuario Invalido.' +#13 + #13 +
            'Se voce esqueceu a Sua Senha, Consulte ' + #13+
            'o Administrador do Sistema. << ERRO 1019 >>';

            Application.MessageBox(PChar(mensagem), 'Login n�o Autorizado << ERRO 1019 >>', MB_OK + MB_ICONERROR);
            edtUsuario.Text:='';
            edtSenha.Text:='';
            edtUsuario.SetFocus;
        end;
   if (F_Principal.ADOQLogin.RecordCount) = 1 then                           //*********** ADOQUERY = ADOTABELS **************************************
        begin   // Neste o Usuario e Senha estao OK
            F_Principal.stbarPrincipal.Panels[2].Text:=' User =  ' + F_Login.edtUsuario.Text + ' / Perfil ' + F_Principal.ADOQLogin.FieldByName('DESC_PERFIL').AsAnsiString ;
            F_Principal.Logoff.Caption:= ' Logof de: '+ F_Principal.ADOQLogin.FieldByName('LOGIN').AsAnsiString;
            F_Principal.Logoff.Hint:=' Logof de: '+  F_Principal.ADOQLogin.FieldByName('LOGIN').AsAnsiString;

            // Abrir a Tabela de Gravar Login
                  DMPrincipal.ADOGrava_Login.Open;
          // Inserindo as Informa��es
                  DMPrincipal.ADOGrava_Login.Append;
          // Grava na Tabela de GravarLogins as informa��es de quem esta logando e que horas logou
                  DMPrincipal.ADOGrava_LoginCOD_USUARIO.Value:=F_Principal.ADOQLoginID.Value ;   // Pega o Codigo do Usuario
                  DMPrincipal.ADOGrava_LoginLOGIN.Value:= F_Principal.ADOQLoginLOGIN.Value;                            // Pega o Nome De Login
                  DMPrincipal.ADOGrava_LoginDT_LOGIN.Value:= (Now); // Pegar a Data do Login
                  DMPrincipal.ADOGrava_LoginHR_LOGIN.Value:= FormatDateTime('hh:mm:ss',Now); // Pega a Hora do Login
                  DMPrincipal.ADOGrava_LoginENTRADA_SAIDA.Value:= 'E';
                  DMPrincipal.ADOGrava_Login.Post;                   // Salvar
                  DMPrincipal.ADOGrava_Login.Close;                 // Fechar a Tabela

            F_Login.Close;
        end;
end;

procedure TF_Login.btnSairClick(Sender: TObject);
begin
   Application.Terminate;       // Terminar a Aplicacao -- Cancelar
end;

procedure TF_Login.CheckSenhaClick(Sender: TObject);
begin
// Verificando se o Check de senha esta para mostrar a senha ou nao
  if CheckSenha.Checked = True then
    begin
      edtSenha.PasswordChar:= #0;
    end
  else
    begin
       edtSenha.PasswordChar:= '*';
    end;
end;

procedure TF_Login.CheckUserClick(Sender: TObject);
begin
// Verificando se o Check de Usuario esta para mostrar a senha ou nao
  if CheckUser.Checked = True then
    begin
      edtUsuario.PasswordChar:= #0;
    end
  else
    begin
       edtUsuario.PasswordChar:= '*';
    end;
end;

procedure TF_Login.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_Login.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_Login.FormActivate(Sender: TObject);
VAR
  KeyState: TKeyboardState;
begin
    lblTitulo.Caption:= NoEmpresa;     // Colocar o Nome da Empresa no Login
    edtUsuario.SetFocus;              // Colocar o Focu no Edt de Usuario
   MSG;// vERIFICANDO A TECLA CAPS LOCK

   imgLogoPeq.Picture.LoadFromFile(LogoP);      // Colocar o Logo Na Tela Principal
   imgLogoGrande.Picture.LoadFromFile(LogoG);      // Colocar o Logo Na Tela Principal

// Verificando se o Check de senha esta para mostrar a senha ou nao
  if CheckSenha.Checked = True then
    begin
      edtSenha.PasswordChar:= #0;
    end
  else
    begin
       edtSenha.PasswordChar:= '*';
    end;
// Verificando se o Check de Usuario esta para mostrar a senha ou nao
  if CheckUser.Checked = True then
    begin
      edtUsuario.PasswordChar:= #0;
    end
  else
    begin
       edtUsuario.PasswordChar:= '*';
    end;

 // Verificar se a Tecla CapsLook esta Acionada, se nao acionar
   GetKeyboardState(KeyState);
  if(KeyState[VK_CAPITAL] = 0) then
    begin
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or 0, 0);
      Keybd_Event(VK_CAPITAL, 1, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
    end
  else
    begin
      Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or 0, 0);
      Keybd_Event(VK_CAPITAL, 0, KEYEVENTF_EXTENDEDKEY or KEYEVENTF_KEYUP, 0);
    end;
end;

procedure TF_Login.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if Key = VK_CAPITAL then
      begin
      MSG;
      end;
end;

procedure TF_Login.MSG;
// Para Verificar se o Caps Lock esta ativa
begin
  if getkeystate(VK_CAPITAL) = 1 then
      begin
        ShowMessage('A tecla Caps Lock est� ativada');
        edtSenha.Color:= clRed;
      end
  else
  edtSenha.Color:= clInfoBk;
end;

procedure TF_Login.WMNChitTest(var M: TWMNCHitTest);
begin          // Habilitar ARRASTAR o Form do Login
   inherited;
      if (M.Result=HTCLIENT) then
        begin
            M.Result:= HTCAPTION;
        end;
end;

end.
