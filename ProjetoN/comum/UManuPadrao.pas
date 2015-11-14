unit UManuPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TxManuPadrao = class(TForm)
    pnRodape: TPanel;
    gbInfos: TGroupBox;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbCancelarClick(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     b_finalizaTransacao: Boolean;
     b_gravou : Boolean;
     QryPadrao : TIBQuery;

     procedure procBotaoVisivelHabilitado(botao: TObject);
  end;

var
  xManuPadrao: TxManuPadrao;

implementation

{$R *.dfm}


procedure TxManuPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if not b_gravou then
   begin
      if QryPadrao.State in [dsInsert,dsEdit] then
         QryPadrao.Cancel;

      if b_finalizaTransacao then
      begin
         if QryPadrao.Transaction.Intransaction then
            QryPadrao.Transaction.Rollback;
      end;
   end;
end;

procedure TxManuPadrao.FormCreate(Sender: TObject);
begin
   b_gravou := False;
end;

procedure TxManuPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_F5 : sbGravar.Click;
      VK_F6 : sbCancelar.Click;
      VK_ESCAPE : sbCancelar.Click;
   end;
end;

procedure TxManuPadrao.procBotaoVisivelHabilitado(botao: TObject);
begin
   if not (botao is TSpeedButton) then
      Exit;

   if not (TSpeedButton(botao).Visible and TSpeedButton(botao).Enabled) then
      Abort;
end;

procedure TxManuPadrao.sbCancelarClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   Close;
end;

procedure TxManuPadrao.sbGravarClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   try
      if QryPadrao.State in [dsInsert,dsEdit] then
         QryPadrao.Post;

      if b_finalizaTransacao and (QryPadrao.Transaction.Intransaction) then
         QryPadrao.Transaction.Commit;

      b_gravou := True;

      close;
   except
      on E: Exception do
      begin
         Application.MessageBox(PChar('Erro ao Gravar Registro! '+sLineBreak+sLineBreak+
                                ' Erro :'+sLineBreak+ e.Message),PChar(Self.Caption), MB_OK+MB_ICONERROR);

      end;
   end;
end;


end.
