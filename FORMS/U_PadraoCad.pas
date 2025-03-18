unit U_PadraoCad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.ImgList;

type
  Tfrm_PadraoCad = class(TForm)
    pnl_Cabecalho: TPanel;
    Label1: TLabel;
    btn_CodPrincipal: TSpeedButton;
    Label2: TLabel;
    btn_CodOP: TSpeedButton;
    edtCodPeca: TEdit;
    edtCodigoOP: TEdit;
    Timer1: TTimer;
    DBGrid1: TDBGrid;
    pnl_FundoForm: TPanel;
    Q_Padrao: TFDQuery;
    ds_Padrao: TDataSource;
    ImageList1: TImageList;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PadraoCad: Tfrm_PadraoCad;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_PadraoCad.Timer1Timer(Sender: TObject);
begin
//Insere dados no statusbar
{Statusbar1.Panels[0].Text:=DateToStr(now);
Statusbar1.Panels[1].Text:=TimeToStr(now);
Statusbar1.Panels[2].Text:='SEJA BEM VINDO(A) AO SISTEMA';
Statusbar1.Panels[3].Text:='USINAGEM';}
end;

end.
