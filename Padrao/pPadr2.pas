unit pPadr2;

interface

uses
  oPrincipal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ComCtrls, ImgList, ExtCtrls, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, DB, IBCustomDataSet, IBQuery, IBStoredProc, math, StrUtils,
  IBEvents, IBDatabase, StdCtrls, dxEdLib, dxDBELib, dxExEdtr, rxSpeedbar,
  IBSQL, dxBar, dxDockControl, dxDockPanel, ActnList;

type
  TFrmPadr2 = class(TForm)
    sbMSG: TStatusBar;
    DTSCadastro: TDataSource;
    SpeedBar2: TSpeedBar;
    SpeedbarSection5: TSpeedbarSection;
    SpeedbarSection6: TSpeedbarSection;
    SpeedbarSection7: TSpeedbarSection;
    SpeedbarSection8: TSpeedbarSection;
    siPSQ: TSpeedItem;
    siREF: TSpeedItem;
    siSAIR: TSpeedItem;
    siLIXO: TSpeedItem;
    siREL: TSpeedItem;
    pnldbg: TPanel;
    imageOPC: TImageList;
    siEVE: TSpeedItem;
    Cadastro: TIBQuery;
    TConsulta: TIBTransaction;
    SQLConsulta: TIBSQL;
    TEdicao: TIBTransaction;
    SQLEdicao: TIBSQL;
    SPEdicao: TIBStoredProc;
    TEvent: TIBTransaction;
    SPEvent: TIBStoredProc;
    EEvent: TIBEvents;
    ILDockIcons: TImageList;
    DMMain: TdxDockingManager;
    BMMain: TdxBarManager;
    DSConsulta: TdxDockSite;
    DPConsulta: TdxDockPanel;
    LDSConsulta: TdxLayoutDockSite;
    gbDET: TGroupBox;
    DBGConsulta: TdxDBGrid;
    SQLEvent: TIBSQL;
    pnlbot: TPanel;
    ALPrincipal: TActionList;
    ACTRefresh: TAction;
    ACTExecEvent: TAction;
    ACTPesquisa: TAction;
    ACTRelatorios: TAction;
    ACTEAppend: TAction;
    ACTEEdit: TAction;
    ACTEDelete: TAction;
    ACTEPost: TAction;
    ACTECancel: TAction;
    ACTMAppend: TAction;
    ACTMEdit: TAction;
    ACTMDelete: TAction;
    ACTMPost: TAction;
    ACTMCancel: TAction;
    ACTSaida: TAction;
    ACTPSQ_OK: TAction;
    ACTPSQ_FOCUS: TAction;
    EEventAdmin: TIBEvents;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure siREFClick(Sender: TObject);
    procedure siSAIRClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure siPSQClick(Sender: TObject);
    procedure siRELClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EEventEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure ACTExecEventExecute(Sender: TObject);
    procedure EEventAdminEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
  private
    { Private declarations }
    FCurrentEvent: String;
    FForceClose  : Boolean;

    { método para atribuição\validação de valor }
    procedure _SetCurrentEvent(const AValue: String);
    procedure _SetForceClose  (const AValue: Boolean);
  public
    { Public declarations }
    REC_SHE_DEF: TREC_SHE_DEF;

    property CurrentEvent: String  read FCurrentEvent write _SetCurrentEvent;
    property ForceClose  : Boolean read FForceClose   write _SetForceClose;

    Constructor Create(AOwner: TComponent;
                 const AEP_ID: Integer;
                       AIDPK : LongInt;
                       AIDEV : LongInt;
                       ACDEV : Word); reintroduce; overload;
  end;

var
  FrmPadr2: TFrmPadr2;

implementation

uses uPrincipal, bPrincipal;

{$R *.dfm}

procedure TFrmPadr2._SetCurrentEvent(const AValue: String);
begin
  FCurrentEvent := AValue;
end;

procedure TFrmPadr2._SetForceClose(const AValue: Boolean);
begin
  FForceClose := AValue;
end;

Constructor TFrmPadr2.Create(AOwner: TComponent;
                          const AEP_ID: Integer;
                                AIDPK : LongInt;
                                AIDEV : LongInt;
                                ACDEV : Word);
begin
  oIREC_SHE_DEF(REC_SHE_DEF);

  REC_SHE_DEF.EP_ID := INTTOSTR(AEP_ID);
  REC_SHE_DEF.IDPK  := INTTOSTR(AIDPK );

  REC_SHE_DEF.IDEV  := INTTOSTR(AIDEV);
  REC_SHE_DEF.CDEV  := INTTOSTR(ACDEV);

  inherited Create(AOwner);
end;

procedure TFrmPadr2.FormCreate(Sender: TObject);
begin
  { INICIALIZAÇÃO }
  oOTransact(TConsulta); { Transação }

  { FORM MANAGER }
  REC_SHE_DEF.FPosition := Self.Position; { Página }
  //SetCursorPos(500,Self.Top); { Posição Inicial }

  { ACCESS MANAGER }
  REC_SHE_DEF.FForceClose := ForceClose;
  REC_SHE_DEF.FAlert      := 'Usuário não Autorizado.' + #13 +
                             'Favor entrar em contato com o administrador do sistema.';

  { GRANT USER }
  if REC_SHE_DEF.GAdmin then
  begin
    REC_SHE_DEF.GAppend := True;
    REC_SHE_DEF.GEdit   := True;
    REC_SHE_DEF.GDelete := True;
    REC_SHE_DEF.GView   := True;
    REC_SHE_DEF.GPrint  := True;
  end else
  if ((not REC_SHE_DEF.GView) and (not REC_SHE_DEF.GPrint)) then
  begin
    REC_SHE_DEF.GAppend := bPSQUSER('USU_NOVO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GEdit   := bPSQUSER('USU_EDIT',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GDelete := bPSQUSER('USU_DELE',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GView   := bPSQUSER('USU_VISU',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GPrint  := bPSQUSER('USU_PRIN',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
    REC_SHE_DEF.GAdmin  := bPSQUSER('USU_AUTO',REC_SHE_DEF.GDescricao,REC_SHE_DEF.GReferencia,REC_SHE_DEF.GRegra);
  end;

  { ACCESS DENIED }
  if (not REC_SHE_DEF.FForceClose) and (REC_SHE_DEF.FForceCaixa) and (REC_SHE_DEF.IDEV = 0) and
     (RECParametros.STCX <> 'Caixa Aberto') then
  begin
    ForceClose := True;

    REC_SHE_DEF.FForceClose := ForceClose;
    REC_SHE_DEF.FAlert      := 'Caixa não Aberto.' + #13 +
                               'Favor entrar em contato com o administrador do sistema.';
  end;

  { ACCESS ABORT }
  if (REC_SHE_DEF.FForceClose) or (not REC_SHE_DEF.GView) then
  begin
    oErro(Application.Handle,'ACESSO NEGADO !' + #13 + #13 +
                              REC_SHE_DEF.FAlert);

    Self.Visible := False;
    Self.Height  := 0;
    Self.Width   := 0;

    PostMessage(Handle, WM_CLOSE, 0, 0);
  end;
end;

procedure TFrmPadr2.FormShow(Sender: TObject);
begin
  OnShow := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;
end;

procedure TFrmPadr2.FormActivate(Sender: TObject);
begin
  OnActivate := Nil;
  if REC_SHE_DEF.FForceClose then
  Exit;

  { EVENTOS }
  try
    { Limpa Eventos }
    REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
    REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
    REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

    try
      { Addmin }
      EEventAdmin.UnregisterEvents;
      EEventAdmin.Events.Clear;

      { Padrão }
      EEvent.UnregisterEvents;
      EEvent.Events.Clear;

      { Registra Eventos }
      if REC_SHE_DEF.FB_Event <> EmptyStr then
      begin
        { Admin }
        REC_SHE_DEF.FB_EVE_ADM := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-ADM';
        EEventAdmin.Events.Add(REC_SHE_DEF.FB_EVE_ADM);
        EEventAdmin.RegisterEvents;

        if not RECUsuarios.IS_EVE_ADM then
        begin
          { Padrão }
          REC_SHE_DEF.FB_EVE_PAD := REC_SHE_DEF.FB_Event + '-' + oStrZero(RECParametros.EP_ID,3) + '-' + oStrZero(RECUsuarios.ID,3);
          EEvent.Events.Add(REC_SHE_DEF.FB_EVE_PAD);
          EEvent.RegisterEvents;
        end;  
      end;
    except
      on E: Exception do
      begin
        { Limpa Eventos }
        REC_SHE_DEF.FB_EVE_ADM := EmptyStr; { Admin    }
        REC_SHE_DEF.FB_EVE_CTR := EmptyStr; { Controle }
        REC_SHE_DEF.FB_EVE_PAD := EmptyStr; { Login    }

        oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                  REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                  E.Message              + '.' + #13 + #13 +
                                 'Favor entrar em contato com o administrador do sistema.');
      end;
    end;

  finally
    oUnLockWindowUpdate; { Desbloqueia Tela }
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  OnClose := Nil;
  Action  := caFree;
end;

procedure TFrmPadr2.FormDestroy(Sender: TObject);
begin
  try
     try
       { Eventos }
       try
         try
           EEvent.UnRegisterEvents;
         except
           on E: Exception do
           begin
             oErro(Application.Handle,'Falha ao tentar fechar eventos !'+#13+#13+
                                      'Error Code: '+E.Message+'.'      +#13+
                                       Caption+'.');
           end;
         end;

       finally
         try
           { Transação Principal }
           try
             oFTransact(TConsulta);
           except
             on E: Exception do
             begin
               oErro(Application.Handle,'Falha ao tentar fechar tabelas !'+#13+#13+
                                        'Error Code: '+E.Message+'.'      +#13+
                                         Caption+'.');
             end;
           end;

         finally
           { record e afins }
           try
             Finalize(REC_SHE_DEF);
             FillChar(REC_SHE_DEF,SizeOf(REC_SHE_DEF),0);
           except
             on E: Exception do
             begin
              oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                       'Error Code: '+E.Message+'.'        +#13+
                                        Caption+'.');
             end;
           end;

           { record e afins }
           try
             oFREC_SHE_DEF(REC_SHE_DEF);
           except
             on E: Exception do
             begin
              oErro(Application.Handle,'Falha ao tentar esvaziar memória !'+#13+#13+
                                       'Error Code: '+E.Message+'.'        +#13+
                                        Caption+'.');
             end;
           end;

         end;
       end;

     finally
       FrmPadr2 := Nil;
     end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmPadr2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
       vk_escape: SISair.Click;
       vk_return: if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo)) then
                  SelectNext (ActiveControl, True, True);
       40       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext (ActiveControl, True, True);
       38       : if (not (ActiveControl is TdxDBGrid)    and
                      not (ActiveControl is TdxDBMemo)    and
                      not (ActiveControl is TdxMemo)      and
                      not (ActiveControl is TMemo))       and
                      not (ActiveControl is TdxImageEdit) and
                      not (ActiveControl is TdxPickEdit)  and
                      not (ActiveControl is TComboBox)    and
                      not (ActiveControl is TListBox)     then
                  SelectNext(ActiveControl, False, True);
       118      : SIPsq.Click;
       116      : SIRef.Click;
  end;
end;

procedure TFrmPadr2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #5 then
  {[Ctrl+E]} else
  if key = #8 then
  {[Ctrl+H]} else
  if key = #9 then
  {[Ctrl+I]} else
  if key = #16 then
  SIRel.Click else
  if key = #19 then
  {[Ctrl+S]} else
  if key = #22 then
  {[Ctrl+V]};
end;

procedure TFrmPadr2.FormPaint(Sender: TObject);
var
  AMainFormScreen: TRect;
  FHeight,
  FWidth ,
  H,
  T,
  B,
  L,R: Word;
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  { Ajusta o Form para o tamanho da area livre do MainForm }
  GetWindowRect(FrmPrincipal.ClientHandle,AMainFormScreen);

  T := AMainFormScreen.Top;
  B := AMainFormScreen.Bottom;
  L := AMainFormScreen.Left;
  R := AMainFormScreen.Right;
  H := B;

  if REC_SHE_DEF.FPosition = poDesigned then
  begin
    if (HelpContext = 0) then { % da altura }
    if (AMainFormScreen.Bottom - AMainFormScreen.Top < Self.Height) then { Área livre menor que página }
    HelpContext := 95; { % }

    FHeight := IFThen(HelpContext     > 0,Trunc((H-T) * (HelpContext     / 100)),0);
    FWidth  := IFThen(AlphaBlendValue > 0,Trunc((R-L) * (AlphaBlendValue / 100)),0);

    if (REC_SHE_DEF.FTop > 0) and (REC_SHE_DEF.FLeft > 0) then
    begin
      Top    := REC_SHE_DEF.FTop;
      Left   := REC_SHE_DEF.FLeft;

      if Top + Height > B then
      begin
        Top := Top - ((Top + Height) - B);
      end;

      if Left + Width > R then
      begin
        Left := Left - ((Left + Width) - R);
      end;

    end else
    begin
      if FHeight > 0 then Height := FHeight;
      if FWidth  > 0 then Width  := FWidth;

      if FormStyle = fsNormal then
      begin
        //if FHeight > 0 then
        Top := (T  + (H - Height)) div 2;

        //if FWidth > 0 then
        Left := ((R + L) - Width )  div 2;
      end else
      //if (FHeight > 0) or (FWidth  > 0) then
      begin
        Top  := ((B - T ) - Height) div 2;
        Left := ((R - L)  - Width ) div 2;
      end;
    end;
  end else
  if (REC_SHE_DEF.FWorkArea) and (FormStyle = fsNormal) then
  begin
    Top    := Screen.WorkAreaTop;
    Left   := Screen.WorkAreaLeft;
    Width  := Screen.WorkAreaWidth;
    Height := Screen.WorkAreaHeight;
  end else
  if (REC_SHE_DEF.FMainArea) and (FormStyle = fsNormal) then
  begin
    Top    := 0;
    Left   := 0;
    Width  := R - L - 5;
    Height := H - T - 5;
  end else
  if REC_SHE_DEF.FPosition = poDefault then
  begin
    Top    := IFThen(FormStyle = fsNormal,T,0);
    Left   := IFThen(FormStyle = fsNormal,L,0);
    Width  := IFThen(REC_SHE_DEF.FPosition = poDefault,R - L - 5,0);
    Height := IFThen(REC_SHE_DEF.FPosition = poDefault,H - T - 5,0);
  end;
end;

procedure TFrmPadr2.FormResize(Sender: TObject);
begin
  if (not Showing) or (REC_SHE_DEF.FForceClose) then
  Exit;

  if Self <> Nil then
     try
       { VER DIM TELA }
       REC_SHE_DEF.FHeight := Self.Height;
       REC_SHE_DEF.FWidth  := Self.Width ;

       if RECUsuarios.Id = 0 then
       Self.Caption := 'Dimensões: Monitor = ' + IntToStr(Screen.Width) + ' x ' + IntToStr(Screen.Height) + ' - APP = ' + IntToStr(REC_SHE_DEF.FWidth)  + ' x ' + IntToStr(REC_SHE_DEF.FHeight) + '. ' + Self.Caption;
       Paint;
    finally
      { After Resize }
       oResize(DBGConsulta);
    end;
end;

procedure TFrmPadr2.siPSQClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIPsq.Enabled) or (not SIPsq.Visible) then
  Abort;

  DBGConsulta.SetFocus;
end;

procedure TFrmPadr2.siREFClick(Sender: TObject);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr2.siRELClick(Sender: TObject);
begin
  if (not SpeedBar2.Enabled) or (not SpeedBar2.Visible) or (not SIRel.Enabled) or (not SIRel.Visible) then
  Abort;

  DBGConsulta.SetFocus;
end;

procedure TFrmPadr2.siSAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPadr2.EEventEventAlert(Sender: TObject; EventName: String;
  EventCount: Integer; var CancelAlerts: Boolean);
begin
  oRefresh(Cadastro);
end;

procedure TFrmPadr2.EEventAdminEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if RECUsuarios.IS_EVE_ADM then
  oRefresh(Cadastro);
end;

procedure TFrmPadr2.ACTExecEventExecute(Sender: TObject);
var
  i: word;
begin
  if REC_SHE_DEF.FB_Event <> EmptyStr then
     try
       oOTransact(TEvent);

       { Admin }
       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_SHE_EVE_ADM';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_ADM;
       SPEvent.ExecProc;

       { Padrão }
       SPEvent.Close;
       SPEvent.StoredProcName := 'SP_SHE_EVE_PAD';
       SPEvent.Prepare;

       for i := 0 to SPEvent.ParamCount - 1 do
       SPEvent.Params[i].Value := Null;

       SPEvent.Params[0].Value := REC_SHE_DEF.FB_EVE_PAD;
       SPEvent.ExecProc;

       oCTransact(TEvent);
     except
       on E: Exception do
       begin
         oCTransact(TEvent,ltRollback);
         oErro(Application.Handle,'Falha ao tentar executar evento !' + #13 +
                                   REC_SHE_DEF.FB_Event   + '.' + #13 + #13 +
                                   E.Message              + '.');
       end;
     end;
end;

end.

