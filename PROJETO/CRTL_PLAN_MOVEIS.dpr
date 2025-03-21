program CRTL_PLAN_MOVEIS;

uses
  Vcl.Forms,
  U_Principal in '..\FORMS\U_Principal.pas' {frm_Principal},
  U_GestaoDB in '..\FORMS\U_GestaoDB.pas' {frm_GestaoDB},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_PadraoCad in '..\FORMS\U_PadraoCad.pas' {frm_PadraoCad},
  U_CadUsinagem in '..\FORMS\U_CadUsinagem.pas' {frm_CadUsinagem},
  U_CadCorte in '..\FORMS\U_CadCorte.pas' {frm_CadCorte},
  U_CadFuracao in '..\FORMS\U_CadFuracao.pas' {frm_CadFuracao},
  U_CadBorda in '..\FORMS\U_CadBorda.pas' {frm_CadBorda},
  Vcl.Navigation in '..\Utils\Vcl.Navigation.pas',
  U_PadraoRel in '..\FORMS\U_PadraoRel.pas' {frm_PadraoRel},
  U_RelUsinagens in '..\FORMS\U_RelUsinagens.pas' {frm_RelUsinagens},
  U_RelCorte in '..\FORMS\U_RelCorte.pas' {frm_RelCorte},
  U_RelBorda in '..\FORMS\U_RelBorda.pas' {frm_RelBorda},
  U_RelFuracao in '..\FORMS\U_RelFuracao.pas' {frm_RelFuracao},
  U_DelLote in '..\FORMS\U_DelLote.pas' {frm_DelLote};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_Principal, frm_Principal);
  Application.CreateForm(Tfrm_RelCorte, frm_RelCorte);
  Application.CreateForm(Tfrm_RelUsinagens, frm_RelUsinagens);
  Application.Run;
end.
