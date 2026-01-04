unit pProduto_Devolucao_Cancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pDefaultEdicao, cxGraphics, ActnList, dxDockControl, dxBar,
  dxBarExtItems, ImgList, IBEvents, IBStoredProc, DB, IBCustomDataSet,
  IBQuery, IBSQL, IBDatabase, dxsbar, dxDockPanel, ExtCtrls, dxPageControl,
  cxControls, dxStatusBar, dxExEdtr, dxEdLib, StdCtrls, dxCntner, dxEditor,
  ClipBrd;

type
  TFrmProduto_Devolucao_Cancelamento = class(TFrmDefaultEdicao)
    PNLEdicao: TPanel;
    GBInfAd: TGroupBox;
    GBMotivo: TGroupBox;
    IEMotivo: TdxImageEdit;
    EMINFADCAD: TdxMemo;
    procedure ACTSalvaExecute(Sender: TObject);
    procedure ACTCancelaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EMINFADCADKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Editado: Boolean;
  end;

var
  FrmProduto_Devolucao_Cancelamento: TFrmProduto_Devolucao_Cancelamento;

implementation

{$R *.dfm}

procedure TFrmProduto_Devolucao_Cancelamento.FormCreate(Sender: TObject);
begin
  REC_SHE_DEF.GAdmin := True;

  IEMotivo.Text   := REC_SHE_DEF.FB_TB_PK;
  EMINFADCAD.Text := REC_SHE_DEF.ID;

  inherited;
end;

procedure TFrmProduto_Devolucao_Cancelamento.ACTSalvaExecute(Sender: TObject);
begin
  inherited;
  Editado := True;
  Close;
end;

procedure TFrmProduto_Devolucao_Cancelamento.ACTCancelaExecute(Sender: TObject);
begin
  inherited;
  Editado := False;
  Close;
end;

procedure TFrmProduto_Devolucao_Cancelamento.EMINFADCADKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if ((Shift = [ssCtrl]) and (Key = 86)) or ((Shift = [ssCtrl]) and (Key = 118)) then
      EMINFADCAD.Text := Clipboard.AsText;
end;

end.
