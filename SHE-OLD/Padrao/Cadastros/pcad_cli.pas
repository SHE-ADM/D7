unit pcad_cli;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, DB,
  IBCustomDataSet, IBQuery, ImgList, dxCntner,  ComCtrls, ExtCtrls,
  dxExEdtr, dxEdLib, dxEditor, StdCtrls, DateUtils, DBCtrls, dxPageControl,
  dxDBELib, Menus, IBStoredProc, IBDatabase, IBEvents, Shellapi,
  jpeg, math, StrUtils, rxSpeedbar, cxGraphics, IBSQL, cxControls, dxStatusBar,
  pConsulta, ActnList;

type
  Tfrmcad_cli = class(TFrmConsulta)
    SIMInfoComercial: TSpeedItem;
    DBGConsultaCNPJ_MASK: TdxDBGridColumn;
    DBGConsultaCD_NO: TdxDBGridMaskColumn;
    DBGConsultaCD_RZ_NO: TdxDBGridMaskColumn;
    DBGConsultaUF: TdxDBGridMaskColumn;
    DBGConsultaDECV: TdxDBGridMaskColumn;
    DBGConsultaDECR: TdxDBGridMaskColumn;
    DBGConsultaDECT: TdxDBGridMaskColumn;
    DBGConsultaCD_ID: TdxDBGridMaskColumn;
    DBGConsultaTEL_MASK: TdxDBGridColumn;
    PNLINFADCAD: TPanel;
    DBINFADCAD: TdxDBMemo;
    DBGConsultaEmail: TdxDBGridMaskColumn;
    DBGConsultaDEST: TdxDBGridMaskColumn;
    DBGConsultaCRD_DEST: TdxDBGridMaskColumn;
    DBGConsultaCD_GP_NO: TdxDBGridMaskColumn;
    DBGConsultaCEL_TEL_MASK: TdxDBGridMaskColumn;
    DBGConsultaZAP_TEL_MASK: TdxDBGridMaskColumn;
    CadastroID: TLargeintField;
    CadastroEP_ID: TSmallintField;
    CadastroCDST: TSmallintField;
    CadastroREST: TIBStringField;
    CadastroDEST: TIBStringField;
    CadastroCRD_DEST: TIBStringField;
    CadastroCD_ID: TIntegerField;
    CadastroCD_NO: TIBStringField;
    CadastroCD_RZ_NO: TIBStringField;
    CadastroCD_GP_NO: TIBStringField;
    CadastroCNPJ: TIBStringField;
    CadastroCNPJ_MASK: TIBStringField;
    CadastroIE: TIBStringField;
    CadastroISUF: TIBStringField;
    CadastroCPF: TIBStringField;
    CadastroCPF_MASK: TIBStringField;
    CadastroIDESTRANGEIRO: TIBStringField;
    CadastroCV_NO: TIBStringField;
    CadastroCR_NO: TIBStringField;
    CadastroCT_NO: TIBStringField;
    CadastroTEL_MASK: TIBStringField;
    CadastroCEL_TEL_MASK: TIBStringField;
    CadastroZAP_TEL_MASK: TIBStringField;
    CadastroEMAIL: TIBStringField;
    CadastroBAI_NO_ABREV: TIBStringField;
    CadastroLOC_NO_ABREV: TIBStringField;
    CadastroUF: TIBStringField;
    CadastroDTPP: TDateField;
    CadastroDTPV: TDateField;
    CadastroDTNF: TDateField;
    CadastroDTSA: TDateField;
    CadastroDTBX: TDateField;
    CadastroCRD_VPAD: TIBBCDField;
    CadastroCRD_VTAP: TIBBCDField;
    CadastroCRD_VTSD: TIBBCDField;
    CadastroCRD_VTKT: TIBBCDField;
    CadastroCRD_BQST: TSmallintField;
    CadastroFIS_DTFU: TDateField;
    CadastroFIS_CRT_NO: TIBStringField;
    CadastroINFADCAD: TIBStringField;
    CadastroLOG_NO_ABREV: TIBStringField;
    DBGConsultaLOG_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaBAI_NO_ABREV: TdxDBGridMaskColumn;
    DBGConsultaLOC_NO_ABREV: TdxDBGridMaskColumn;
    procedure FormCreate(Sender: TObject);
    procedure dbgConsultaCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure SIMInfoComercialClick(Sender: TObject);
    procedure SIEIncluiClick(Sender: TObject);
    procedure DTSCadastroDataChange(Sender: TObject; Field: TField);
    procedure DBGConsultaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SIEAlteraClick(Sender: TObject);
    procedure ACTPesquisaExecute(Sender: TObject);
    procedure CadastroAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
    procedure _Edicao(AEdicao: Word);
  public
    { Public declarations }
  end;

var
  frmcad_cli: Tfrmcad_cli;

implementation

uses uPrincipal, bPrincipal,
  {$IFDEF DEF_COMPRAS} pcad_cli_edi {$ELSE} pcad_cli_edi, pPesquisa {$ENDIF};

{$R *.dfm}

procedure Tfrmcad_cli.FormCreate(Sender: TObject);
begin
  { ADMIN MANAGER }
  //DBGConsultaIDPK.Visible := (RECUsuarios.ID = 0); { Código Pedido }

  { FORM SCREEN }
  REC_SHE_DEF.FPosition := Self.Position; { Posição }

  REC_SHE_DEF.FMainArea := False; { Aplicativo }
  REC_SHE_DEF.FWorkArea := False; { Windows    }

  { ACCESS MANAGER }
  REC_SHE_DEF.FB_Event := 'CAD_CLI_ADM'; { Eventos }

  { GRANT USER }
  REC_SHE_DEF.GDescricao  := 'Cadastro';
  REC_SHE_DEF.GReferencia := 'Clientes';
  REC_SHE_DEF.GRegra      := 'Permissões Gerais';
  REC_SHE_DEF.GAdmin      := False;
  inherited;

  ACTPesquisa.Execute;
end;

procedure Tfrmcad_cli.SIMInfoComercialClick(Sender: TObject);
begin
  uPSQSCORE(self,CadastroID.AsString,EmptyStr);
end;

procedure Tfrmcad_cli.SIEIncluiClick(Sender: TObject);
begin
  inherited;
  _Edicao(0);
end;

procedure Tfrmcad_cli.SIEAlteraClick(Sender: TObject);
begin
  inherited;
  _Edicao(CadastroID.AsInteger);
end;

procedure Tfrmcad_cli._Edicao(AEdicao: Word);
begin
  frmcad_cli_edi           := TFrmcad_cli_edi.Create(Self);
  frmcad_cli_edi.Tag       := AEdicao;
  frmcad_cli_edi.IDCliente := IntToStr(AEdicao);

  try frmcad_cli_edi.ShowModal;
  finally
    FreeAndNil(frmcad_cli_edi);
    oRefresh(Cadastro);
  end;
end;

procedure Tfrmcad_cli.DTSCadastroDataChange(Sender: TObject;
  Field: TField);
var
  PosCount: Word;
begin
  inherited;
  { Informações Adicionais }
            PosCount := oPosCount(''#$D'',CadastroINFADCAD.AsString);
  PNLINFADCAD.Height := IFThen(Length(CadastroINFADCAD.AsString) <= 2,0,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString =  EmptyStr) ,00,
                        IFThen((PosCount = 00) and (CadastroINFADCAD.AsString <> EmptyStr) ,30,
                        IFThen((PosCount = 01),040,
                        IFThen((PosCount = 02),055,
                        IFThen((PosCount = 03),070,
                        IFThen((PosCount = 04),080,
                        IFThen((PosCount = 05),090,
                        IFThen((PosCount = 06),100,
                        IFThen((PosCount = 07),110,
                        IFThen((PosCount = 08),120,
                        IFThen((PosCount = 09),130,
                        IFThen((PosCount = 10),140,
                        IFThen((PosCount = 11),150,
                        IFThen((PosCount = 12),160,
                        IFThen((PosCount = 13),170,
                        IFThen((PosCount = 14),180,
                        IFThen((PosCount = 15),190,200))))))))))))))))));

  DBGConsulta.ApplyBestFit(DBGConsultaTEL_MASK);
  DBGConsulta.ApplyBestFit(DBGConsultaEMAIL   ); DBGConsultaEMAIL.Width := IFThen(DBGConsultaEMAIL.Width > 200,200,DBGConsultaEMAIL.Width);
end;

procedure Tfrmcad_cli.dbgConsultaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if not ASelected then
  begin
    if (AColumn = DBGConsultaDEST) and (ANode.Values[DBGConsultaDEST.Index] <> Null) then
    if (ANode.Values[DBGConsultaDEST.Index] = 'PRÉ-CADASTRO') then
    begin
      AFont.Color := clBlack;
      AColor      := clInfoBk;
    end else
    
    if (ANode.Values[DBGConsultaDEST.Index] = 'INATIVO') then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;

    if ANode.Values[DBGConsultaCRD_DEST.Index] <> Null then
    if Pos('AGU',ANode.Values[DBGConsultaCRD_DEST.Index]) > 0 then
    begin
      AFont.Color := clWhite;
      AColor      := $000024B3;
    end;
  end;
end;

procedure Tfrmcad_cli.DBGConsultaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SIMSaida.Click;
       vk_insert: SIEInclui.Click;
       vk_return: DBGConsultaDblClick(Self);
       vk_delete: SIEExclui.Click;
  end;
end;

procedure Tfrmcad_cli.dbgConsultaDblClick(Sender: TObject);
begin
  SIEAltera.Click;
end;

procedure Tfrmcad_cli.ACTPesquisaExecute(Sender: TObject);
begin
  inherited;

  if not REC_SHE_DEF.FInitialize then
  try
    FrmPesquisa := TFrmPesquisa.Create(Self);
    FrmPesquisa.Tag := 1;
    FrmPesquisa.ShowModal;
  finally
    if   FrmPesquisa.Editado then
    with Cadastro do
    begin
      oCTransact(TConsulta);
      oOTransact(TConsulta);

      Close;
      SQL.Clear;

      { RECURSIVE INI }
      SQL.Add('WITH RECURSIVE PK');
      SQL.Add('AS (');

      SQL.Add('SELECT PK.ID   ,PK.EP_ID,');
      SQL.Add('       PK.CDST ,PK.REST ,PK.DEST ,CRD.CRD_DEST AS CRD_DEST,');
      SQL.Add('       PK.CD_ID,PK.CD_NO,PK.CD_RZ_NO,PK.CD_GP_NO ,');
      SQL.Add('       PK.CNPJ ,FCNPJ(PK.CNPJ) AS CNPJ_MASK,PK.IE,PK.ISUF,');
      SQL.Add('       PK.CPF  ,FCPF(PK.CPF)   AS CPF_MASK ,PK.IDESTRANGEIRO,');

      SQL.Add('       PK.CR_NO,PK.CV_NO,PK.CT_NO,');

      SQL.Add('       TRIM(CAST(FTEL(PK.DDD_NU,PK.TEL_NU) || '' '' || LEFT(PK.CONTATO_NO,10) AS VARCHAR(30))) TEL_MASK,');
      SQL.Add('       FTEL(PK.CEL_DDD_NU,PK.CEL_TEL_NU) AS CEL_TEL_MASK,');
      SQL.Add('       FTEL(PK.ZAP_DDD_NU,PK.ZAP_TEL_NU) AS ZAP_TEL_MASK,');
      SQL.Add('       TRIM(CAST(PK.EMAIL || '' '' || PK.EMAIL2 || '' '' || PK.EMAIL3 AS VARCHAR(200))) AS EMAIL,');

      SQL.Add('       PK.LOG_NO_ABREV,PK.BAI_NO_ABREV,PK.LOC_NO_ABREV,PK.UF,');

      SQL.Add('       PK.DTPP,PK.DTPV,PK.DTNF,PK.DTSA,PK.DTBX,');
      SQL.Add('       CRD.CRD_VPAD,CRD.CRD_VTAP,CRD.CRD_VTSD,CRD.CRD_VTKT,CRD.CRD_BQST,');
      SQL.Add('       PK.FIS_DTFU,PK.FIS_CRT_NO,');
      SQL.Add('       PK.INFADCAD');

      SQL.Add('FROM      VW_PSQ_CAD_CLI  AS PK');
      SQL.Add('LEFT JOIN CAD_CLI_CRD_FIN AS CRD ON (CRD.EP_ID = :EP_ID AND CRD.CD_ID = PK.CD_ID)');

      { PESQUISA DATA }
      if (FrmPesquisa.dxDT1.Date > 0) and (FrmPesquisa.dxDT2.Date > 0) and (FrmPesquisa.dxDT1.Date <= FrmPesquisa.dxDT2.Date) then
      begin
        SQL.Add('WHERE ' + FrmPesquisa.cData + ' BETWEEN ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT1.Date) + ''' AND ''' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT2.Date) + '''');
        SBRodape.Panels[1].Text := 'Pesquisado Data ' + FrmPesquisa.cbData.Text + ' ' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT1.Date) + ' até ' + FormatDateTime('mm/dd/yy',FrmPesquisa.dxDT2.Date);
      end;

      SQL.Add('),'); { RECURSIVE FIM }

      { CTE INI }
      SQL.Add('CTE_PSQ');
      SQL.Add('AS (');

      { RECURSIVE SQL }
      SQL.Add('SELECT PK.* FROM PK');

      { PESQUISA TEXTO PRINCIPAL }
      if (FrmPesquisa.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa.CField,2) = 'PK') then
      SQL.Add('WHERE ' + FrmPesquisa.CField + ' ' + FrmPesquisa.cPesquisaWhere + ' ''' + FrmPesquisa.EDTXT.Text + FrmPesquisa.cPesquisaLike + '''');
      SQL.Add(')'); { CTE FIM }

      { CTE SELECT }
      SQL.Add('SELECT DISTINCT PK.* FROM CTE_PSQ AS PK');

      { SUB QUERY }
      if (FrmPesquisa.EDTXT.Text <> EmptyStr) and (LeftStr(FrmPesquisa.CField,2) <> 'PK') then
      begin
        { INÍCIO }
        SQL.Add('WHERE EXISTS');
        SQL.Add('(');

        { PEDIDOS }
        if Pos('PV_PK.',FrmPesquisa.CField) > 0 then
        begin
          FrmPesquisa.CField     := oStrTran(FrmPesquisa.CField,'PV_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('PED_VEN_CAB','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { FINANCEIRO BANCÁRIO }
        if Pos('FN_PK.',FrmPesquisa.CField) > 0 then
        begin
          FrmPesquisa.CField     := oStrTran(FrmPesquisa.CField,'FN_PK.','FK.');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_BAN','_',RECParametros.EP_ID,3) + ' AS FK');
        end;

        { PESQUISA TEXTO SECUNDÁRIO }
        SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
        SQL.Add('AND ' + FrmPesquisa.CField + ' ' + FrmPesquisa.cPesquisaWhere + ' ''' + FrmPesquisa.EDTXT.Text + FrmPesquisa.cPesquisaLike + '''');
        SQL.Add(')'); { FIM }

        { FINANCEIRO CARTEIRA }
        if Pos('FIN_REC_BAN',Cadastro.SQL.Text) > 0 then
        begin
          SQL.Add('OR EXISTS');
          SQL.Add('(');
          SQL.Add('SELECT FIRST 1 FK.ID FROM ' +  oREPZero('VW_PSQ_FIN_REC_CAR','_',RECParametros.EP_ID,3) + ' AS FK');

          { PESQUISA TEXTO SECUNDÁRIO }
          SQL.Add('WHERE FK.CD_ID = PK.CD_ID');
          SQL.Add('AND ' + FrmPesquisa.CField + ' ' + FrmPesquisa.cPesquisaWhere + ' ''' + FrmPesquisa.EDTXT.Text + FrmPesquisa.cPesquisaLike + '''');
          SQL.Add(')'); { FIM }
        end;
      end;

      SQL.Add('ORDER BY ' + IFThen(LeftStr(FrmPesquisa.CField,2) = 'PK',FrmPesquisa.CField,'PK.CD_NO'));
    end;

    if FrmPesquisa.EDTXT.Text <> EmptyStr then
    begin
      APSQ_CAD_CLI := FrmPesquisa.cbCAMPO.Text;
      SBRodape.Panels[1].Text := SBRodape.Panels[1].Text + ' Pesquisado ' + FrmPesquisa.cbCampo.Text + ' ' + FrmPesquisa.EDTXT.Text;
    end;

    FreeAndNil(FrmPesquisa  );
  end;

  if Cadastro.State = dsInactive then
  begin
    Cadastro.ParamByName('EP_ID').Value := RECParametros.EP_ID;
    Cadastro.Prepare;
    Cadastro.Open;
  end;

  DBGConsultaCD_NO.Field.FocusControl;
  if Showing then
     DBGConsulta.SetFocus;
end;

procedure Tfrmcad_cli.CadastroAfterClose(DataSet: TDataSet);
begin
  SBRodape.Panels[1].Text := EmptyStr;
end;

end.


