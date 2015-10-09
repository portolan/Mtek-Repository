unit UTelaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TxPesqPadrao = class(TForm)
    pnCorpo: TPanel;
    pnRodape: TPanel;
    gbDados: TGroupBox;
    pnCabecalho: TPanel;
    DBGDados: TDBGrid;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
    sbSair: TSpeedButton;
    gbStatus: TGroupBox;
    gbFiltro: TGroupBox;
    procedure sbSairClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbRemoverClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    b_finalizaTransacao: Boolean;
    b_somenteConsulta: Boolean;
    QryPadrao : TIBQuery;
    TelaManutencao : TForm;
    CTelaManutencao : TFormClass;

    procedure procBotaoVisivelHabilitado(botao: TObject);
    procedure procInicializar(Query: TIBQuery; b_finalizaTransacao: Boolean; b_somenteConsulta: Boolean; TelaManutencao: TForm; CTelaManutencao: TFormClass);
    procedure procSelect; dynamic;

    procedure procAntesIncluir; dynamic;
    procedure procDepoisIncluir; dynamic;

    procedure procAntesAlterar; dynamic;
    procedure procDepoisAlterar; dynamic;

    procedure procAntesRemover; dynamic;
    procedure procDepoisRemover; dynamic;

    procedure procChamaTela; dynamic;
  end;

var
  xPesqPadrao: TxPesqPadrao;

implementation

{$R *.dfm}

procedure TxPesqPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_F2 : sbNovo.Click;
      VK_F3 : sbAlterar.Click;
      VK_F4 : sbRemover.Click;
      VK_ESCAPE : sbSair.Click;
   end;
end;

procedure TxPesqPadrao.FormShow(Sender: TObject);
begin
   procSelect;

   if b_somenteConsulta then
   begin
      sbNovo.Visible    := False;
      sbAlterar.Visible := False;
      sbRemover.Visible := False;
   end;
end;

procedure TxPesqPadrao.procAntesAlterar;
begin

end;

procedure TxPesqPadrao.procAntesIncluir;
begin

end;

procedure TxPesqPadrao.procAntesRemover;
begin

end;

procedure TxPesqPadrao.procBotaoVisivelHabilitado(botao: TObject);
begin
   if not (botao is TSpeedButton) then
      Exit;

   if not (TSpeedButton(botao).Visible and TSpeedButton(botao).Enabled) then
      Abort;
end;

procedure TxPesqPadrao.procChamaTela;
begin
   TelaManutencao := CTelaManutencao.Create(Self);
   try
      TelaManutencao.ShowModal;
   finally
      FreeAndNil(TelaManutencao);
   end;
end;

procedure TxPesqPadrao.procDepoisAlterar;
begin

end;

procedure TxPesqPadrao.procDepoisIncluir;
begin

end;

procedure TxPesqPadrao.procDepoisRemover;
begin

end;

procedure TxPesqPadrao.procInicializar(Query: TIBQuery; b_finalizaTransacao, b_somenteConsulta: Boolean;
 TelaManutencao: TForm; CTelaManutencao: TFormClass);
begin
   Self.b_finalizaTransacao := b_finalizaTransacao;
   Self.b_somenteConsulta   := b_somenteConsulta;
   Self.QryPadrao           := Query;
   Self.TelaManutencao      := TelaManutencao;
   Self.CTelaManutencao     := CTelaManutencao;
end;

procedure TxPesqPadrao.procSelect;
begin

end;

procedure TxPesqPadrao.sbAlterarClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   try
      procAntesAlterar;
      QryPadrao.Edit;
      procChamaTela;
      procDepoisAlterar;
   finally
      if b_finalizaTransacao then
         procSelect;
   end;
end;

procedure TxPesqPadrao.sbNovoClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   try
      procAntesIncluir;
      QryPadrao.Insert;
      procChamaTela;
      procDepoisIncluir;
   finally
      if b_finalizaTransacao then
         procSelect;
   end;
end;

procedure TxPesqPadrao.sbRemoverClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   try
      procAntesRemover;
      QryPadrao.Delete;
      procDepoisRemover;

      if b_finalizaTransacao then
      begin
         if QryPadrao.Transaction.InTransaction then
            QryPadrao.Transaction.Commit;

         procSelect;
      end;
   except
      on E: Exception do
      begin
         if b_finalizaTransacao then
         begin
            if QryPadrao.Transaction.InTransaction then
               QryPadrao.Transaction.Rollback;

            procSelect;
         end;

         Application.MessageBox(PChar('Ocorreu um erro ao remover registro!'+ sLineBreak + sLineBreak +
                                 'Erro:'+ sLineBreak + e.Message), PChar(caption), MB_ICONERROR+MB_OK);
      end;
   end;
end;

procedure TxPesqPadrao.sbSairClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);
   Close;
end;

end.
