unit U_PesqString;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage;

type
  TF_PesqString = class(TForm)
    pnlFundo: TPanel;
    lblJanela: TLabel;
    Label1: TLabel;
    pnlImagem: TPanel;
    Image1: TImage;
    btnSair: TBitBtn;
    btnPesquisar: TBitBtn;
    RadioGroup1: TRadioGroup;
    edtValor: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PesqString: TF_PesqString;

implementation

uses
  U_DMPrincipal, U_Modelo1, U_Principal, U_Usuario;

{$R *.dfm}


procedure TF_PesqString.btnPesquisarClick(Sender: TObject);
begin
    if edtValor.Text = '' then  // Verificando se o campo Valor esta Vazio
      begin
          beep;
          ShowMessage('O Campo Valor N�o Pode Ficar Em Branco');
          edtValor.SetFocus;
      end;
    if edtValor.Text <> '' then
      close;
end;

procedure TF_PesqString.btnSairClick(Sender: TObject);
begin
  Close; // FEchar Tela de Pesquisa
end;

procedure TF_PesqString.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_PesqString.FormActivate(Sender: TObject);
begin
    lblJanela.Caption:= nomeJanela;  /// Carregando o Nome da Tela que esta pesquisando
    F_PesqString.Caption:= NoEmpresa;  /// Carregando o Nome da Tela que esta pesquisando
    edtValor.Clear;    // Limpar se tiver algum conteudo
    edtValor.SetFocus; // Colocar o Foco.
end;

end.
