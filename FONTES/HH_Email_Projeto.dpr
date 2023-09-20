program HH_Email_Projeto;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  Unit1 in 'Unit1.pas' {FrmTemp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TFrmTemp, FrmTemp);
  Application.Run;
end.
