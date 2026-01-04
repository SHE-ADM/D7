unit pcad_rep;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, rxSpeedbar, cxGraphics, IBSQL, cxControls, dxStatusBar,
  pConsulta, ActnList;

type
  Tfrmcad_rep = class(TFrmConsulta)
    cadastroID: TIntegerField;
    cadastroREP_FANT: TIBStringField;
    cadastroREP_RAZA: TIBStringField;
    cadastroREP_CNPJ: TIBStringField;
    cadastroREP_CPF: TIBStringField;
    cadastroREP_CRED: TIBBCDField;
    cadastroREP_CID: TIBStringField;
    cadastroREP_BAI: TIBStringField;
    cadastroREP_LOGR: TIBStringField;
    cadastroREP_ESTA: TIBStringField;
    cadastroREP_STA: TIBStringField;
    cadastroREP_STAV: TIBStringField;
    cadastroREP_DPAG: TIBStringField;
    cadastroREP_OBSO: TMemoField;
    cadastroREP_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaREP_FANT: TdxDBGridMaskColumn;
    dbgConsultaREP_RAZA: TdxDBGridMaskColumn;
    dbgConsultaREP_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaREP_CPF: TdxDBGridMaskColumn;
    dbgConsultaREP_CID: TdxDBGridMaskColumn;
    dbgConsultaREP_BAI: TdxDBGridMaskColumn;
    dbgConsultaREP_LOGR: TdxDBGridMaskColumn;
    dbgConsultaREP_ESTA: TdxDBGridMaskColumn;
    dbgConsultaREP_STAV: TdxDBGridMaskColumn;
    cadastroREP_COMI: TIBBCDField;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
  end;

var
  frmcad_rep: Tfrmcad_rep;

implementation

uses uPrincipal, pcad_rep_edi, pven_nfe;

{$R *.dfm}

procedure Tfrmcad_rep.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_REP_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Representantes';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    UnPrepare;
    SQL.Add('SELECT   ID,REP_FANT,REP_RAZA,REP_CNPJ,REP_CPF,REP_CRED,REP_CID,REP_BAI,REP_LOGR,REP_ESTA,REP_STA,REP_STAV,REP_DPAG,REP_OBSO,REP_VDSC,REP_COMI');
    SQL.Add('FROM     CAD_REP');
    SQL.Add('WHERE    ID > 0');
    SQL.Add('ORDER BY ID');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcad_rep.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_rep.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(1);
end;

procedure Tfrmcad_rep.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
  var Value: Variant;
begin
  if not ASelected then
  begin
    Value := ANode.Values[9];
    if not VarIsNull(Value) then
       if Value = 'I' then
       begin
         AFont.Color := clwhite;
         AColor      := clRed;
      end;
  end;
end;

procedure Tfrmcad_rep._Edicao(AEdicao: Word);
begin
  frmcad_rep_edi     := TFrmcad_rep_edi.Create(Self);
  frmcad_rep_edi.Tag := AEdicao;
  try frmcad_rep_edi.ShowModal;
  finally FreeAndNil(frmcad_rep_edi);
  end;
end;

end.


