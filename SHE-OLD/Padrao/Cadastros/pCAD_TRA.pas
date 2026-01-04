unit pcad_tra;

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
  Tfrmcad_tra = class(TFrmConsulta)
    cadastroID: TIntegerField;
    cadastroTRA_FANT: TIBStringField;
    cadastroTRA_RAZA: TIBStringField;
    cadastroTRA_CNPJ: TIBStringField;
    cadastroTRA_CPF: TIBStringField;
    cadastroTRA_CRED: TIBBCDField;
    cadastroTRA_CID: TIBStringField;
    cadastroTRA_BAI: TIBStringField;
    cadastroTRA_LOGR: TIBStringField;
    cadastroTRA_ESTA: TIBStringField;
    cadastroTRA_STA: TIBStringField;
    cadastroTRA_STAV: TIBStringField;
    cadastroTRA_DPAG: TIBStringField;
    cadastroTRA_OBSO: TMemoField;
    cadastroTRA_VDSC: TIBBCDField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaTRA_FANT: TdxDBGridMaskColumn;
    dbgConsultaTRA_RAZA: TdxDBGridMaskColumn;
    dbgConsultaTRA_CNPJ: TdxDBGridMaskColumn;
    dbgConsultaTRA_CPF: TdxDBGridMaskColumn;
    dbgConsultaTRA_CID: TdxDBGridMaskColumn;
    dbgConsultaTRA_BAI: TdxDBGridMaskColumn;
    dbgConsultaTRA_LOGR: TdxDBGridMaskColumn;
    dbgConsultaTRA_ESTA: TdxDBGridMaskColumn;
    dbgConsultaTRA_STAV: TdxDBGridMaskColumn;
    SIMTabela: TSpeedItem;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure SIEIncluiClick(Sender: TObject);
    procedure SIEAlteraClick(Sender: TObject);
    procedure SIEExcluiClick(Sender: TObject);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
  end;

var
  frmcad_tra: Tfrmcad_tra;

implementation

uses uPrincipal, pcad_tra_edi;

{$R *.dfm}

procedure Tfrmcad_tra.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_TRA_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Transportadoras';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  with cadastro do
  begin
    SQL.Clear;
    UnPrepare;
    SQL.Add('SELECT   ID,TRA_FANT,TRA_RAZA,TRA_CNPJ,TRA_CPF,TRA_CRED,TRA_CID,TRA_BAI,TRA_LOGR,TRA_ESTA,TRA_STA,TRA_STAV,TRA_DPAG,TRA_OBSO,TRA_VDSC');
    SQL.Add('FROM     CAD_TRA');
    SQL.Add('WHERE    ID > 0');
    SQL.Add('ORDER BY ID');
    Prepare;
    Open;
  end;
end;

procedure Tfrmcad_tra.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_tra.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  if Pos(CadastroTRA_FANT.AsString,'O PROPIOO PRÓPRIOPROPRIAPRÓPRIA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(CadastroTRA_FANT.AsString,'SEM FRETE') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(CadastroTRA_FANT.AsString,'CLIENTE RETIRA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('CARRETO',CadastroTRA_FANT.AsString) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('NOSSO',CadastroTRA_FANT.AsString) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  _Edicao(1);
end;

procedure Tfrmcad_tra.dbgConsultaCustomDrawCell(Sender: TObject;
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

    Value := ANode.Values[4];
    if (Value = '') or (VarIsNull(Value)) then
    begin
      AColor      := clWhite;
      AFont.Color := clBlack;
    end else
    begin
      AColor      := $00BEEFF8;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure Tfrmcad_tra._Edicao(AEdicao: Word);
begin
  frmcad_tra_edi     := TFrmcad_tra_edi.Create(Self);
  frmcad_tra_edi.Tag := AEdicao;
  try frmcad_tra_edi.ShowModal;
  finally FreeAndNil(frmcad_tra_edi);
  end;
end;

procedure Tfrmcad_tra.SIEExcluiClick(Sender: TObject);
begin
  if Pos(CadastroTRA_FANT.AsString,'O PROPIOO PRÓPRIOPROPRIAPRÓPRIA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(CadastroTRA_FANT.AsString,'SEM FRETE') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos(CadastroTRA_FANT.AsString,'CLIENTE RETIRA') > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('CARRETO',CadastroTRA_FANT.AsString) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  if Pos('NOSSO',CadastroTRA_FANT.AsString) > 0 then
  raise exception.Create('Transportadora já cadastrada como padrão do sistema !');

  inherited;
end;

end.

