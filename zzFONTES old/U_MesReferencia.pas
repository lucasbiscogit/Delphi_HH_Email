unit U_MesReferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Grids,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TF_MesReferencia = class(TForm)
    lblMesReferencia: TLabel;
    MEMesReferencia: TMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure MEMesReferenciaEnter(Sender: TObject);
    procedure MEMesReferenciaExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MEMesReferenciaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  F_MesReferencia: TF_MesReferencia;

implementation

uses
  U_LeituraChacaras;

{$R *.dfm}

procedure TF_MesReferencia.FormActivate(Sender: TObject);
begin
  MesReferencia:= '';
end;

procedure TF_MesReferencia.FormKeyPress(Sender: TObject; var Key: Char);
begin
 //ENTER No Lugar de TAB
    if key = #13 then
       Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TF_MesReferencia.FormShow(Sender: TObject);
begin
// TRazendo os campo pra frente
  lblMesReferencia.Visible:= True;
  MEMesReferencia.Visible:= True;
  MEMesReferencia.Enabled:= True;
  MEMesReferencia.SetFocus;
end;

procedure TF_MesReferencia.MEMesReferenciaEnter(Sender: TObject);
begin
MEMesReferencia.Color:= clSkyBlue;
end;

procedure TF_MesReferencia.MEMesReferenciaExit(Sender: TObject);
begin
  MesReferencia:= MEMesReferencia.Text;

// Colocando o Maskedit no padrao
  lblMesReferencia.Visible:= False;
  MEMesReferencia.Visible:= False;
  MEMesReferencia.Enabled:= False;
  MEMesReferencia.Color:= clInfoBk;
  F_MesReferencia.Close;
end;

procedure TF_MesReferencia.MEMesReferenciaKeyPress(Sender: TObject;
  var Key: Char);
begin
   //ENTER No Lugar de TAB
    if key = #13 then
      begin
        MesReferencia:= MEMesReferencia.Text;

      // Colocando o Maskedit no padrao
        lblMesReferencia.Visible:= False;
        MEMesReferencia.Visible:= False;
        MEMesReferencia.Enabled:= False;
        MEMesReferencia.Color:= clInfoBk;
        F_MesReferencia.Close;
      end;
end;

end.
