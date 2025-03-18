unit U_DelLote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBGrids;

type
  Tfrm_DelLote = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ImageList1: TImageList;
    edtLote: TEdit;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    QPRINC: TFDQuery;
    dsPRINC: TDataSource;
    DBGrid: TDBGrid;
    QPRINCNUMERO_DO_LOTE: TStringField;
    QPRINCDATA_ENTREGA_LOTE: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure delLote;
    procedure limparDB;
  public
    { Public declarations }
  end;

var
  frm_DelLote: Tfrm_DelLote;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_DelLote.delLote;
begin
//if MessageDlg('Pretende realmente EXCLUIR o LOTE ' + edtLote.Text + '?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
if MessageDlg('Pretende realmente EXCLUIR o LOTE ' + edtLote.Text + '?',TMsgDlgType.mtWarning,[mbOk,mbNo],0)=mrOk then
  begin
  QPrinc.Close;
  QPrinc.SQL.Clear;
  QPrinc.SQL.Add('DELETE FROM TB_BASE_DADOS ');
  QPrinc.SQL.Add(' WHERE NUMERO_DO_LOTE =:PNUMLOTE');
  // criamos o parametro
  QPrinc.ParamByName('PNUMLOTE').AsString := edtLote.Text;
  // aponta para o campo do parametro
  //  Q_ProdPesq.SQL.Add(' WHERE 1 = 1');
  QPrinc.ExecSQL;
  QPrinc.Close;
  MessageDlg('O lote '+edtLote.Text+' foi excluido com sucesso!',mtInformation,[mbOk],0);
  end;
end;

procedure Tfrm_DelLote.FormShow(Sender: TObject);
begin
QPRINC.Open();
end;

procedure Tfrm_DelLote.limparDB;
begin
  QPrinc.Close;
  QPrinc.SQL.Clear;
  QPrinc.SQL.Add('DELETE FROM TB_BASE_DADOS WHERE COD_CLIENTE >= 0 ');
//  Q_ProdPesq.SQL.Add(' WHERE 1 = 1');
  QPrinc.ExecSQL;
  QPrinc.Close;
  MessageDlg('Bancos de dados foi limpo com sucesso!',mtInformation,[mbOk],0);
end;

procedure Tfrm_DelLote.SpeedButton1Click(Sender: TObject);
begin
delLote;
end;

procedure Tfrm_DelLote.SpeedButton2Click(Sender: TObject);
begin
limparDB;
end;

procedure Tfrm_DelLote.SpeedButton3Click(Sender: TObject);
begin
Close;
end;

end.
