unit U_PadraoRel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxSmartMemo, frCoreClasses, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList;

type
  Tfrm_PadraoRel = class(TForm)
    pnl_Cabecalho: TPanel;
    Label1: TLabel;
    lb_nome: TLabel;
    cb_chave_pesquisa: TComboBox;
    ed_nome: TEdit;
    pnlPesq: TPanel;
    bt_Pesquisa: TSpeedButton;
    pnl_Imprimir: TPanel;
    bt_Imprimir: TSpeedButton;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    ImageList1: TImageList;
    btn_Sair: TSpeedButton;
    ImageList3: TImageList;
    SpeedButton2: TSpeedButton;
    ImageList2: TImageList;
    REL_pesq_padrao: TfrxReport;
    DatSET_pesq_padrao: TfrxDBDataset;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_PadraoRel: Tfrm_PadraoRel;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_PadraoRel.btn_SairClick(Sender: TObject);
begin
Close;
end;

procedure Tfrm_PadraoRel.FormKeyPress(Sender: TObject; var Key: Char);
begin
// faz a fun��o do tab
 if key=#13 then
    begin
      Key:=#0;
      Perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure Tfrm_PadraoRel.FormShow(Sender: TObject);
begin
Q_pesq_padrao.Close
end;



end.
