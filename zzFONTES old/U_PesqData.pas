unit U_PesqData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TF_PesqData = class(TForm)
    pnlGeral: TPanel;
    lblJanela: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    pnlPesquisar: TPanel;
    Label1: TLabel;
    lblFinal: TLabel;
    DTPData1: TDateTimePicker;
    DTPData2: TDateTimePicker;
    btnPesquisar: TBitBtn;
    btnSair: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PesqData: TF_PesqData;

implementation

uses
  U_Modelo1, U_Principal, U_Usuario;

{$R *.dfm}



procedure TF_PesqData.btnPesquisarClick(Sender: TObject);
begin
    tarefaClick:= 1;      // Dando Valor para Realizar a Pesquisa
    valdata1:= DateToStr(DTPData1.Date);
    valdata2:= DateToStr(DTPData2.Date);
    val1:= Copy(valdata1,4,2) + '/' + Copy(valdata1,1,2) + '/' + Copy(valdata1,7,4);
    val2:= Copy(valdata2,4,2) + '/' + Copy(valdata2,1,2) + '/' + Copy(valdata2,7,4);
   Close;
end;

procedure TF_PesqData.btnSairClick(Sender: TObject);
begin
  tarefaClick:= 0;        // Para nao dar Erros ao Sair
  Close; // Fechar a Tela
end;

procedure TF_PesqData.FormActivate(Sender: TObject);
begin
    lblJanela.Caption:= nomeJanela;  /// Carregando o Nome da Tela que esta pesquisando
    F_PesqData.Caption:= NoEmpresa;  /// Carregando o Nome da Tela que esta pesquisando
    DTPData1.Date:= date-15;   // Colocando a Data inicio 15 Antes da Atual
    DTPData2.Date:= date+15;   // Colocando a Data Final 15 Dias Apos
end;

end.
