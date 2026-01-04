unit uPrincipal;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, RXCtrls, ToolWin, StdCtrls, Buttons,
  DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable, ActnList, ActnMan,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, DateUtils, Printers, StrUtils,
  Grids, DBGrids, IBStoredProc, ImgList, Shellapi, DBTables, jpeg, math,
  XPStyleActnCtrls, IdBaseComponent, IdComponent, qrPrev,
  IdIPWatch, Provider, cxGraphics, cxControls, dxStatusBar, ACBrBarCode,
  IBSQL, dxDBGrid, dxTL, dxDBCtrl, TypInfo, dxsbar, dxDockPanel,
  dxDockControl, dxBar, dxBarExtItems, rxAnimate, rxGIFCtrl;

type
  TRunProcessThread = class(TThread)
  protected
    procedure Execute; override;
    procedure _SyncEvent;

  public
    ATHR_TBPK: String;
    ATHR_IDEP,
    ATHR_IDPK: Variant;
    ATHR_DEPK: String;
    FIDPK: String;

    constructor Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
    destructor  Destroy; override;
  end;

type
  TFrmPrincipal = class(TForm)
    ILPrincipal: TImageList;
    TPrincipal: TTimer;
    ODPrincipal: TOpenDialog;
    IPrincipal: TImage;
    PNLRodape: TPanel;
    PNLSBRodapeSynchronize: TPanel;
    PNLSynchronize: TPanel;
    PNLGF: TPanel;
    GFSynchronize: TRxGIFAnimator;
    SBRodape: TdxStatusBar;
    AMPrincipal: TActionManager;
    ACTSHE_DENIED: TAction;
    ACTUSER_LOG: TAction;
    ACTUSER_PAS: TAction;
    ACTSHE_PRN_ADM: TAction;
    ACTSHE_PRN_EXE: TAction;
    ACTSHE_PAR_ADM: TAction;
    ACTSHE_BKP_ADM: TAction;
    ACTSHE_ABOUT: TAction;
    ACTSHE_SAIDA: TAction;
    ACTPED_PDV_ADM: TAction;
    ACTCAD_PRO_ADM: TAction;
    ACTCAD_PRO_EST_ADM: TAction;
    ACTCAD_PRO_EST_LAN: TAction;
    ACTCAD_PRO_EST_EXP_COL: TAction;
    ACTCAD_PRO_EST_EXP_MAN: TAction;
    ACTCAD_PRO_EST_ETQ: TAction;
    ACTNFE_SAI: TAction;
    ACTPED_PDC_ADM: TAction;
    ACTCAI_ABR_PAD: TAction;
    ACTCAI_ABR_DIN: TAction;
    ACTCAI_RAB: TAction;
    ACTCAI_FEC: TAction;
    ACTCAI_LSS: TAction;
    ACTCAI_TSS: TAction;
    ACTCAI_FLC: TAction;
    ACTCAD_PRO_SCT: TAction;
    ACTFIS_NFE_ADM: TAction;
    ACTROM_PDV_ADM: TAction;
    ACTPED_PDC_CLD: TAction;
    ACTRelatorios: TAction;
    ACTREL_GER_EST_UCOM: TAction;
    procedure _DoneEvent(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TPrincipalTimer(Sender: TObject);

    procedure ACTUSER_LOGExecute(Sender: TObject);
    procedure ACTUSER_LOGUpdate(Sender: TObject);
    procedure ACTUSER_PASExecute(Sender: TObject);
    procedure ACTSHE_DENIEDExecute(Sender: TObject);
    procedure ACTSHE_PRN_ADMExecute(Sender: TObject);
    procedure ACTSHE_PRN_EXEExecute(Sender: TObject);
    procedure ACTSHE_PAR_ADMExecute(Sender: TObject);
    procedure ACTSHE_BKP_ADMExecute(Sender: TObject);
    procedure ACTSHE_ABOUTExecute(Sender: TObject);
    procedure ACTSHE_SAIDAExecute(Sender: TObject);
    procedure ACTCAI_ABR_PADExecute(Sender: TObject);
    procedure ACTCAI_ABR_DINExecute(Sender: TObject);
    procedure ACTCAI_RABExecute(Sender: TObject);
    procedure ACTCAI_FECExecute(Sender: TObject);
    procedure ACTCAI_LSSExecute(Sender: TObject);
    procedure ACTCAI_TSSExecute(Sender: TObject);
    procedure ACTCAI_FLCExecute(Sender: TObject);

  private
    { Private declarations }
    procedure _Login(AIDUSER: Variant; AIDEP,ADEEP: String);

    procedure _SetHintDefault;
    procedure _SetMouseLeave(var AMessage: TMessage); message WM_MOUSELEAVE;
    function  _SetMouseTracking: Boolean;
 public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

  ATrackMouseEvent: TTrackMouseEvent;
  ATHR_ITEM: LongInt;
  ATHR_SYNC: String;

implementation

uses pLogin, bPrincipal;

{$R *.dfm}

function ClientWindowProc(wnd: HWND; msg: Cardinal; wparam, lparam: Integer ): Integer; STDCall;
var
  Ponteiro: Pointer;
begin
  Ponteiro := Nil;
  Result   := 0;
  try
    Ponteiro := Pointer(GetWindowLong(wnd,GWL_USERDATA));
    case msg of
         WM_NCCALCSIZE: if (GetWindowLong(wnd,GWL_STYLE) and (WS_HSCROLL or WS_VSCROLL)) <> 0 then
                            SetWindowLong(wnd,GWL_STYLE,GetWindowLong(wnd,GWL_STYLE) and Not (WS_HSCROLL or WS_VSCROLL or WS_CAPTION));
    end;
    Result := CallWindowProc(Ponteiro,wnd,msg,wparam,lparam);
  except
    ;
  end;
end;

constructor TRunProcessThread.Create(const VTHR_TBPK: String; VTHR_IDEP,VTHR_IDPK: Variant; VTHR_DEPK: String; VIDPK: String = 'IDPK');
begin
  oOTransact(FBird.TFBConsulta);
  inherited Create(True);

  FreeOnTerminate := True;

  ATHR_TBPK := VTHR_TBPK;
  ATHR_IDEP := VTHR_IDEP;
  ATHR_IDPK := VTHR_IDPK;
  ATHR_DEPK := VTHR_DEPK;

  FIDPK := VIDPK;
end;

destructor TRunProcessThread.Destroy;
begin
  oCTransact(FBird.TFBConsulta);
  inherited;
end;

procedure TRunProcessThread._SyncEvent;
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    PNLSynchronize.Caption := ATHR_SYNC;
    GFSynchronize.Animate  := True;

    PNLRodape.Height := 75;
  end
end;

procedure TRunProcessThread.Execute;
var
  i: Word;
begin
  inherited;
  try
    with FrmPrincipal,
         FBird do
    begin
      ATHR_ITEM := 0;
      ATHR_SYNC := EmptyStr;

      with SQLFBConsulta do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT   PK.IDEP,PK.IDCP,PK.SKU,PK.DGCP,MAX(PK.ITEM) AS ITEM');
        SQL.Add('FROM ' + ATHR_TBPK + ' AS PK');

        SQL.Add('WHERE    PK.IDEP  = ''' + ATHR_IDEP + '''');
        SQL.Add('AND '  + FIDPK + '= ''' + ATHR_IDPK + '''');

        SQL.Add('GROUP BY 1,2,3,4');
        SQL.Add('ORDER BY 5');
        ExecQuery;
      end;

      while not SQLFBConsulta.Eof do
      begin
        try
          oOTransact(TFBEdicao);

          SPFBEdicao.Close;
          SPFBEdicao.StoredProcName := 'SP_CAD_PRO_EST_LAN';
          SPFBEdicao.Prepare;

          for i := 0 to SPFBEdicao.ParamCount - 1 do
          SPFBEdicao.Params[i].Value := Null;

          SPFBEdicao.ParamByName('AIDEP').Value := SQLFBConsulta.Current.ByName('IDEP').AsInteger;
          SPFBEdicao.ParamByName('AIDCP').Value := SQLFBConsulta.Current.ByName('IDCP').AsInteger;
          SPFBEdicao.ExecProc;

          oCTransact(TFBEdicao);
        except
          oCTransact(TFBEdicao,ltRollback);
        end;

        INC(ATHR_ITEM);
        ATHR_SYNC := 'Atualizando Estoque ...   ' +
                     'Pedido Nº: ' + ATHR_DEPK    + ' - ' +
                     'Produto: '   + oStrZero(SQLFBConsulta.Current.ByName('ITEM').AsInteger,5) + '   ' +
                                              SQLFBConsulta.Current.ByName('SKU' ).AsString     + '   ' +
                                              SQLFBConsulta.Current.ByName('DGCP').AsString;
        Synchronize(_SyncEvent);
        SQLFBConsulta.Next;
      end;
    end;
  except
    oCTransact(FBird.TFBConsulta,ltRollback);
  end
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  Randomize;

  if ClientHandle <> 0 then
  if not(GetWindowLong(ClientHandle, GWL_USERDATA) <> 0)  then
  SetWindowLong(ClientHandle, GWL_USERDATA, SetWindowLong(ClientHandle, GWL_WNDPROC, integer(@ClientWindowProc)));

  CurrencyString    := 'R$';
  ThousandSeparator := '.';
  DecimalSeparator  := ',';

  try TPrincipal.Enabled := False;

  _SetHintDefault;
  _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP);

  finally TPrincipal.Enabled := True;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if oEmpty(RECUsuarios.Id) then
  Close;
end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if oEmpty(RECUsuarios.Id) then
  Exit;
end;

procedure TFrmPrincipal.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
  var i: Word;
begin
  if oEmpty(RECUsuarios.Id) then
  Exit;

  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  if oYesNo(Handle,'Sair do Sistema ?') = mrNo then
  Abort;
end;


procedure TFrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPrincipal.FormPaint(Sender: TObject);
begin
  SBRodape.Panels[4].Width := SBRodape.Width - 20 - (SBRodape.Panels[0].Width + SBRodape.Panels[1].Width + SBRodape.Panels[2].Width + SBRodape.Panels[3].Width + SBRodape.Panels[5].Width + SBRodape.Panels[6].Width);
  SBRodape.Repaint;
end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
var
  XRect: TRect;
begin
  if FrmPrincipal <> Nil then
  begin
    GetWindowRect(Application.MainForm.ClientHandle,XRect);
    XRect.Top := IPrincipal.Top;

    Canvas.FillRect(XRect);
    Canvas.StretchDraw(xRect,IPrincipal.Picture.Graphic);

    Paint;
  end;
end;

procedure TFrmPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
var
  APoint  : TPoint;
  AControl: TControl;
begin
  if _SetMouseTracking then
  begin
    GetCursorPos(APoint);
    AControl := FindDragTarget(APoint, True);  { Mouse.CursorPos }

    if (AControl = Nil) or (AControl <> Sender) then
        Perform(WM_MOUSELEAVE, 0, 0) else
        AControl.Hint := IFThen(Self.Hint <> EmptyStr,Self.Hint + 'SAIU',AControl.HelpKeyword);
  end;
end;

procedure TFrmPrincipal.TPrincipalTimer(Sender: TObject);
          function SecondsIdle: DWord;
          var
            liInfo: TLastInputInfo;
          begin
            liInfo.cbSize := SizeOf(TLastInputInfo);
            GetLastInputInfo(liInfo);

            Result := (GetTickCount - liinfo.dwTime) DIV 1000;
          end;
begin
  if FrmPrincipal <> Nil then
     with FrmPrincipal, FBird do
     begin
       RECParametros.SecondsIdle := SecondsIdle;

       { RODAPÉ }
       SBRodape.Panels[2].Text := RECParametros.STCX; { Caixa }
       SBRodape.Panels[5].Text := Format('Tempo Ocioso: %d',[RECParametros.SecondsIdle]); { Tempo }

       if RECParametros.SecondsIdle > 0 then
       if RECParametros.SecondsIdle mod 180 = 0  then
       begin
         { MAIN DB }
         if not FBird.DBErp.TestConnected then
            try
              DBErp.CloseDataSets;
              DBErp.ForceClose;

              SleepEx(100,False);
              DBErp.Connected := True;
            except
              ;
            end;

         { VER CAIXA }
         if RECParametros.CDCX = 0 then
         bExecEvent('Caixa');
       end;

       { EXEC CAIXA }
       ACTCAI_ABR_PAD.Enabled := (((RECParametros.STCX = 'Caixa Fechado') or (RECParametros.STCX = 'Caixa não aberto')) and (RECUsuarios.Caixa));
       ACTCAI_RAB.Enabled     := (ACTCAI_ABR_PAD.Enabled);
       ACTCAI_FEC.Enabled     := ((not ACTCAI_ABR_PAD.Enabled) and (RECUsuarios.Caixa));
     end;
end;

procedure TFrmPrincipal._SetMouseLeave(var AMessage: TMessage);
begin
  inherited;
  AMessage.Result := 1;
end;

function TFrmPrincipal._SetMouseTracking: Boolean;
begin
  with ATrackMouseEvent do
  begin
    cbSize      := sizeof(ATrackMouseEvent);
    dwFlags     := TME_LEAVE;
    hwndTrack   := Self.Handle;
    dwHoverTime := HOVER_DEFAULT;
  end;

  result := TrackMouseEvent(ATrackMouseEvent);
end;

procedure TFrmPrincipal._SetHintDefault;
var
  AhintBK: String;
  AHintPI,
  AHelpPI: PPropInfo;
  i: Word;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i].ClassType = TPanel then
       tag := 0;

    AHelpPI := GetPropInfo(Components[i].ClassInfo,'HelpKeyword');
    AHintPI := GetPropInfo(Components[i].ClassInfo,'Hint');

    if (AHintPI <> Nil) and (AHelpPI <> Nil) then
    begin
       AHintBK := GetStrProp(Components[i] , AHintPI);
       SetStrProp(Components[i], AHelpPI   , AHintBK);
    end;
  end;
end;

procedure TFrmPrincipal._DoneEvent(Sender: TObject);
begin
  if   ATHR_ITEM > 1 then
  with Frmprincipal do
  begin
    { SINCRONIA }
    PNLRodape.Height := 25;
    PNLRodape.Refresh;

    PNLSynchronize.Caption := EmptyStr;
    PNLSynchronize.Refresh;

    GFSynchronize.Animate := False;
    GFSynchronize.Refresh;

    Repaint;
  end;
end;

procedure TFrmPrincipal._Login(AIDUSER: Variant; AIDEP,ADEEP: String);
          procedure _RSBAction(AAction: TAction; ARxSpeedButton: TRxSpeedButton; ARxSpeedCaption: String = '');
          begin
            ARxSpeedButton.Glyph   := Nil;
            ARxSpeedButton.Action  := Nil;

            AAction.ImageIndex := AAction.Tag + IFThen(AAction.Enabled,0,1);

            ARxSpeedButton.Action  := AAction;
            ARxSpeedButton.Enabled := True;
            ARxSpeedButton.Cursor  := IFThen(AAction.Enabled,crHandPoint,crNo);
            ARxSpeedButton.Caption := IFThen(ARxSpeedCaption = EmptyStr ,ARXSpeedButton.Caption,ARxSpeedCaption);
          end;
var
  AREC_SHE_DEF: TREC_SHE_DEF;
begin
  if oEmpty(AIDUSER) then
  Exit;

  with FBird do
  try
    oOTransact(TFBEdicao);
    with SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE TAB_USER');
      SQL.Add('SET    IDEP_UEP = ''' + AIDEP + ''',');
      SQL.Add('       IDEP_UDT = CURRENT_TIMESTAMP,');

      SQL.Add('       IP   = ''' + RECParametros.IP   + ''',');
      SQL.Add('       HOST = ''' + RECParametros.HOST + '''' );
      SQL.Add('WHERE  ID   = ''' + AIDUSER + '''');
      ExecQuery;
    end;
    oCTransact(TFBEdicao);

    bExecParametros(AIDEP);
    bExecUsuarios(AIDUSER);
    bExecCaixa;

    { PATH - Área de Trabalho }
    ODPrincipal.InitialDir := RECParametros.SHE_PATH_DESKTOP;

    if ODPrincipal.InitialDir  = EmptyStr then
       ODPrincipal.InitialDir := 'C:\Sheild\Coletor';
  except
    { nothing }
  end;

  { GRANT USER }
  oIREC_SHE_DEF(AREC_SHE_DEF);
  try
  finally
    oFREC_SHE_DEF(AREC_SHE_DEF);
  end;

  with FrmPrincipal do
  begin
    { RODAPÉ }
    SBRodape.Width := Screen.Width + 1;

    { EMPRESA }
    SBRodape.Panels[0].Text  := RECParametros.EP_NO;
    SBRodape.Panels[0].Width := Length(SBRodape.Panels[0].Text) * IFThen(Length(SBRodape.Panels[0].Text) > 15,7,10);

    { USUÁRIO }
    SBRodape.Panels[1].Text  := RECUsuarios.Login + ' ' + RECUsuarios.Cargo;
    SBRodape.Panels[1].Width := Length(SBRodape.Panels[1].Text) * IFThen(Length(SBRodape.Panels[1].Text) > 15,7,10);

    { HOST }
    SBRodape.Panels[3].Text  := RECParametros.ServerHost;
    SBRodape.Panels[3].Width := Length(SBRodape.Panels[3].Text) * IFThen(Length(SBRodape.Panels[3].Text) > 15,6,10);

    { SHEILD }
    SBRodape.Panels[4].Text := EmptyStr;
    SBRodape.Panels[6].Text := 'Copyright © ' + oStrZero(YearOf(Date),4) + ' Sheild';
    SBRodape.Refresh;

    _oLoadJPG(Nil,Nil,IPrincipal,True,'JPG_SPLASH');
    Repaint;
  end;

  { Impressoras }
  oExecPrinter(Application.Handle,'Relatórios');
end;

procedure TFrmPrincipal.ACTUSER_LOGExecute(Sender: TObject);
var
  i: integer;
begin
  try
    for i := MDIChildCount - 1 downto 0 do
        if   MDIChildren[i] <> Nil then
             MDIChildren[i].Free;
  except
    on E: Exception do
       oException(Nil,'Falha ao tentar fechar automaticamente as páginas do sistema !' +#13+
                      'Favor fechar manualmente.' +#13 +#13+
                       E.Message + '.');
  end;

  FrmLogin         := TFrmLogin.create(Nil);
  FrmLogin.Caption := 'Login de Usuário';

  try
    FrmLogin.ShowModal;
  finally
    try
      if (FBird.DBErp.TestConnected) and (FrmLogin.RECLogin.Selected) then
          _Login(FrmLogin.RECLogin.ID,FrmLogin.RECLogin.IDEP,FrmLogin.RECLogin.DEEP) else
      begin
        RECUsuarios.Id := 0;
        Close;
      end;
    finally
      FreeAndNil(FrmLogin);
    end;
  end;
end;

procedure TFrmPrincipal.ACTUSER_LOGUpdate(Sender: TObject);
begin
  //BLBUSER_LOG.Caption := RECUsuarios.Nome;
end;

procedure TFrmPrincipal.ACTUSER_PASExecute(Sender: TObject);
begin
  { nothing }
end;

procedure TFrmPrincipal.ACTSHE_DENIEDExecute(Sender: TObject);
begin
  raise exception.Create(PChar(ACTSHE_DENIED.Caption) + #13 +
                         PChar(ACTSHE_DENIED.Hint));
end;

procedure TFrmPrincipal.ACTSHE_PRN_ADMExecute(Sender: TObject);
begin
  if oEmpty(ACTSHE_PRN_EXE.Hint) then
            ACTSHE_PRN_EXE.Hint := 'Relatórios';

  try
    oExecPrinter(Handle,ACTSHE_PRN_EXE.Hint);
  finally
    ACTSHE_PRN_EXE.Hint := EmptyStr;
  end;
end;

procedure TFrmPrincipal.ACTSHE_PRN_EXEExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_PAR_ADMExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_BKP_ADMExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_ABOUTExecute(Sender: TObject);
begin
  ACTSHE_DENIED.Execute;
end;

procedure TFrmPrincipal.ACTSHE_SAIDAExecute(Sender: TObject);
begin
  if ATHR_ITEM = 0 THEN
  Close;
end;

procedure TFrmPrincipal.ACTCAI_ABR_PADExecute(Sender: TObject);
var
  ACAI_LAF_ID,
  ACAI_TSR_ID: Variant;
begin
  if oYesNo(handle,'Confirma abertura do caixa ?') = mrno then
     Abort;

  with FBird do
  try
    oOTransact(TFBEdicao);

    with SQLFBEdicao do
    begin
      { VER CAIXA INICIAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT ID FROM CAI_TSR');
      SQL.Add('WHERE  CAI_DESC = ''CAIXA INICIAL''');
      ExecQuery;
      ACAI_TSR_ID := Current.Vars[0].AsString;

      if Eof then
      oException(Nil,'CAIXA INICIAL não encontrado !');

      { VER TERMINAIS }
      Close;
      SQL.Clear;
      SQL.Add('SELECT EP.FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX,CAI_DFEC,CAI_HFEC');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DABR         = ''' + formatDateTime('mm/dd/yy',RECParametros.SHE_DATA) +'''');
      SQL.Add('AND    CAI_DFEC IS NOT NULL');
      ExecQuery;

      if Eof then
      oException(Nil,'Caixa '       + Current.Vars[5].AsString + ' selecionado já está registrado !' + #13 + #13 +
                     'Empresa: '    + Current.Vars[0].AsString + #13 +

                     'Abertura: '   + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Fechamento: ' + FormatDateTime('dd/mm/yy',Current.Vars[6].AsDateTime) + ' '   +
                                      FormatDateTime('hh:mm:ss',Current.Vars[7].AsDateTime) + ' - ' +
                                      'Terminal: ' + Current.Vars[1].AsString + #13 +

                     'Usuário  : '  + Current.Vars[4].AsString);

      { VER CAIXA ABERTO }               
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_IP,CAI_DABR,CAI_HABR,USU_DUSU,CAI_DECX');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');

      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      SQL.Add('AND    EP.ID            = CAI_CDEP');
      SQL.Add('AND    CAI_CDEP         = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Eof then
      oException(Nil,'Caixa '      + Current.Vars[5].AsString + ' selecionado já está aberto !' + #13 + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13 +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + '  '  +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + ' - ' +
                                     'Terminal: '+ Current.Vars[1].AsString + #13  +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { VER TERMINAL }
      Close;
      SQL.Clear;
      SQL.Add('SELECT FANTASIA,CAI_DECX,CAI_DABR,CAI_HABR,USU_DUSU');
      SQL.Add('FROM   CAI_LAF,CAD_USU,TAB_PAR_SIS AS EP');
      SQL.Add('WHERE  CAD_USU.USU_CUSU = CAI_CUSU');
      
      SQL.Add('AND    EP.ID    = CAI_CDEP');
      SQL.Add('AND    CAI_IP   = ''' + RECParametros.IP + '''');
      SQL.Add('AND    CAI_CDEP = ''' + RECParametros.EP_ID + '''');
      SQL.Add('AND    CAI_DFEC IS NULL');
      ExecQuery;

      if not Current.Vars[0].IsNull then
      oException(Nil,'Terminal já possui caixa aberto !'      + #13   + #13 +
                     'Empresa: '   + Current.Vars[0].AsString + #13   +
                     'Caixa:'      + Current.Vars[1].AsString + ' - ' +

                     'Abertura: '  + FormatDateTime('dd/mm/yy',Current.Vars[2].AsDateTime) + ' ' +
                                     FormatDateTime('hh:mm:ss',Current.Vars[3].AsDateTime) + #13 +

                     'Usuário  : ' + Current.Vars[4].AsString);

      { ID CAI_LAF }
      Close;
      SQL.Clear;
      SQL.Add('SELECT GEN_ID(ID_NO_CAI_LAF,1) FROM RDB$DATABASE');
      ExecQuery;
      ACAI_LAF_ID := Current.Vars[0].AsString;
    end;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_LAF';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID' ).Value  := 0;
    SPFBEdicao.ParamByName('CDEP').Value := RECParametros.EP_ID;
    SPFBEdicao.ParamByName('CDCX').Value := '1';
    SPFBEdicao.ParamByName('DECX').Value := '1 - CAIXA';
    SPFBEdicao.ParamByName('DABR').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('HABR').Value := FormatDateTime('hh:mm',Now);
    SPFBEdicao.ParamByName('VABR').Value := 0;
    SPFBEdicao.ParamByName('DFEC').Value := null;
    SPFBEdicao.ParamByName('HFEC').Value := null;
    SPFBEdicao.ParamByName('VFEC').Value := 0;
    SPFBEdicao.ParamByName('CUSU').Value := RECUsuarios.Id;
    SPFBEdicao.ParamByName('IP'  ).Value := RECParametros.IP;
    SPFBEdicao.ParamByName('DETE').Value := RECParametros.HOST;
    SPFBEdicao.ExecProc;

    SPFBEdicao.Close;
    SPFBEdicao.StoredProcName := 'SP_CAI_MOV';
    SPFBEdicao.Prepare;

    SPFBEdicao.ParamByName('ID'  ).Value := 0;
    SPFBEdicao.ParamByName('CCAB').Value := ACAI_LAF_ID;
    SPFBEdicao.ParamByName('CTSR').Value := ACAI_TSR_ID;
    SPFBEdicao.ParamByName('CONC').Value := 1;
    SPFBEdicao.ParamByName('DOCT').Value := ACAI_LAF_ID + oStrZero(ACAI_LAF_ID,20 - Length(ACAI_LAF_ID));
    SPFBEdicao.ParamByName('DEMV').Value := 'CAIXA INICIAL';
    SPFBEdicao.ParamByName('DCAD').Value := RECParametros.SHE_DATA;
    SPFBEdicao.ParamByName('CRED').Value := 0;
    SPFBEdicao.ParamByName('DEBI').Value := 0;
    SPFBEdicao.ExecProc;

    oCTransact(TFBEdicao);
    oAviso(Application.Handle,'Abertura de caixa efetuada com sucesso !');
  except
    on E: Exception do
    begin
      oCTransact(TFBEdicao,ltRollback);
      oException(Nil,'Falha ao tentar abrir caixa !' + #13 + #13 +
                     'Código do Erro: ' + E.Message  + '.' + #13);
    end;
  end;

  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_ABR_DINExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_abr,Frmcai_abr);
end;

procedure TFrmPrincipal.ACTCAI_RABExecute(Sender: TObject);
begin
  if oYesNo(handle,'Confirma re-abertura do caixa ?') = mrno then
     Abort;

  if RECParametros.STCX = 'Caixa Aberto' then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Caixa já está aberto !');

  if RECParametros.DTCX <> Date then
     oException(Nil,'Falha ao tentar re-abrir caixa.' + #13 +
                    'Não há registro de caixa para o dia de hoje !');

  try
    oOTransact(FBird.TFBEdicao);
    with FBird.SQLFBEdicao do
    begin
      Close;
      SQL.Clear;
      SQL.Add('UPDATE CAI_LAF');
      SQL.Add('SET    CAI_DFEC = NULL,');
      SQL.Add('       CAI_HFEC = NULL' );
      SQL.Add('WHERE  ID = ''' + RECParametros.CDCX + '''');
      SQL.Add('AND    CAI_DABR = CURRENT_DATE');
      ExecQuery;
    end;
  finally
    oCTransact(FBird.TFBEdicao);
  end;

  oAviso(Handle,'Re-Abertura do caixa registrado com sucesso !');
  bExecEvent('Caixa');
end;

procedure TFrmPrincipal.ACTCAI_FECExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_fec,Frmcai_fec);
end;

procedure TFrmPrincipal.ACTCAI_LSSExecute(Sender: TObject);
begin
//  Tfrmcai_sar._ExecForm(Nil,frmcai_sar);
end;

procedure TFrmPrincipal.ACTCAI_TSSExecute(Sender: TObject);
begin
//  FrmCreate(Nil,Tfrmcai_tsr,Frmcai_tsr);
end;

procedure TFrmPrincipal.ACTCAI_FLCExecute(Sender: TObject);
begin
//  uFrmCreate(Nil,Tfrmcai_mov,frmcai_mov);
end;

end.
