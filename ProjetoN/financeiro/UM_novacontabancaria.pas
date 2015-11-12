unit UM_novacontabancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, IBX.IBDatabase,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.DBCtrls, Vcl.Mask;

type
  TM_novaconta = class(TForm)
    pnRodape: TPanel;
    gbInfos: TGroupBox;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
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
  M_novaconta: TM_novaconta;

implementation

{$R *.dfm}


procedure TM_novaconta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if b_finalizaTransacao then
   begin
      if (not b_gravou) and (QryPadrao.Transaction.Intransaction) then
         QryPadrao.Transaction.Rollback;
   end;
   sbCancelar.Click;//Willian Colocou p nao dar pau ao clicar botao fechar
end;

procedure TM_novaconta.FormCreate(Sender: TObject);
begin
   b_gravou := False;
end;

procedure TM_novaconta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_F5 : sbGravar.Click;
      VK_F6 : sbCancelar.Click;
      VK_ESCAPE : sbCancelar.Click;
   end;
end;

procedure TM_novaconta.procBotaoVisivelHabilitado(botao: TObject);
begin
   if not (botao is TSpeedButton) then
      Exit;

   if not (TSpeedButton(botao).Visible and TSpeedButton(botao).Enabled) then
      Abort;
end;

procedure TM_novaconta.sbCancelarClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   if QryPadrao.State in [dsInsert,dsEdit] then
      QryPadrao.Cancel;

   Close;
end;

procedure TM_novaconta.sbGravarClick(Sender: TObject);
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
