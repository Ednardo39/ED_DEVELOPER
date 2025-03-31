program Servidor;

uses
  Vcl.Forms,
  U_Principal in '..\U_Principal.pas' {frmPrincipal},
  Controllers.Cliente in '..\Controllers\Controllers.Cliente.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
