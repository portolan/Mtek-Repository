unit UP_contabancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, UManuPadrao;

type
  TP_contasbancarias = class(TForm)
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
    cbContent: TComboBox;
    cBoxFiltro: TComboBox;
    editPesquisa: TEdit;
    Pesquisar: TButton;
    procedure sbSairClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbRemoverClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PesquisarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure editPesquisaChange(Sender: TObject);
    procedure DBGDadosDblClick(Sender: TObject);
  private

  public
    b_finalizaTransacao: Boolean;
    b_somenteConsulta: Boolean;
    QryPadrao : TIBQuery;
    TelaManutencao : TForm;
    CTelaManutencao : TFormClass;
    Filtros : TFieldList;
    c_where : String;


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

    function funcAtribuiFiltros: TFieldList;
    function funcFiltroAtual: TField;
    function funcFiltroIsString: boolean;
    procedure procMontaWhere;
  end;

var
  P_contasbancarias: TP_contasbancarias;

implementation

{$R *.dfm}

procedure TP_contasbancarias.DBGDadosDblClick(Sender: TObject);
begin
    if b_somenteConsulta then
        sbSair.Click
    else
        sbAlterar.Click;
end;

procedure TP_contasbancarias.editPesquisaChange(Sender: TObject);
begin
    procSelect;
end;

procedure TP_contasbancarias.FormActivate(Sender: TObject);
begin
    editPesquisa.SetFocus;
    cBoxFiltro.ItemIndex := 1;
end;

procedure TP_contasbancarias.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
      VK_F2 : sbNovo.Click;
      VK_F3 : sbAlterar.Click;
      VK_F4 : sbRemover.Click;
      VK_ESCAPE : sbSair.Click;
   end;
   if b_somenteConsulta then
        if Key = VK_RETURN then
            sbSair.Click;

end;

procedure TP_contasbancarias.FormShow(Sender: TObject);
begin
   procSelect;

   if b_somenteConsulta then
   begin
      sbNovo.Visible    := False;
      sbAlterar.Visible := False;
      sbRemover.Visible := False;
   end;
end;

function TP_contasbancarias.funcAtribuiFiltros: TFieldList;
var
    I: integer;
begin
    Filtros := QryPadrao.FieldList;

    for I := 0 to Filtros.Count - 1 do
        cBoxFiltro.Items.Add(Filtros[I].DisplayLabel);
end;

function TP_contasbancarias.funcFiltroAtual: TField;
var
    I: integer;
begin
    Filtros := QryPadrao.FieldList;

    for I := 0 to Filtros.Count - 1 do
        if Filtros[I].DisplayLabel = cBoxFiltro.Text then
            Result := Filtros[I];
end;

function TP_contasbancarias.funcFiltroIsString: boolean;
var
    I: integer;
begin
    for I := 0 to Filtros.Count - 1 do
    begin
        if Filtros[I].DisplayLabel = cBoxFiltro.Text then
        begin
            if Filtros[I].DataType <> ftInteger then
                Result := true;
        end;
    end;
end;

procedure TP_contasbancarias.procMontaWhere;
var
    filtro: String;
begin
   c_where := ' (1 = 1) ';

   if editPesquisa.Text = EmptyStr then
      Exit;

   if funcFiltroIsString then
   begin
      if cbContent.Text = 'É igual' then
         c_where := funcFiltroAtual.FieldName + ' = ' + QuotedStr(editPesquisa.Text)
      else if cbContent.Text = 'É diferente' then
         c_where := funcFiltroAtual.FieldName + ' <> ' + QuotedStr(editPesquisa.Text)
      else if cbContent.Text = 'Contém' then
         c_where := funcFiltroAtual.FieldName + ' LIKE ' + QuotedStr('%'+editPesquisa.Text+'%');
   end
   else if cbContent.Text = 'É igual' then
      c_where := funcFiltroAtual.FieldName + ' = ' + editPesquisa.Text
   else if cbContent.Text = 'É diferente' then
      c_where := funcFiltroAtual.FieldName + ' <> ' + editPesquisa.Text;
end;

procedure TP_contasbancarias.PesquisarClick(Sender: TObject);
begin
   procSelect;
end;

procedure TP_contasbancarias.procAntesAlterar;
begin

end;

procedure TP_contasbancarias.procAntesIncluir;
begin

end;

procedure TP_contasbancarias.procAntesRemover;
begin

end;

procedure TP_contasbancarias.procBotaoVisivelHabilitado(botao: TObject);
begin
   if not (botao is TSpeedButton) then
      Exit;

   if not (TSpeedButton(botao).Visible and TSpeedButton(botao).Enabled) then
      Abort;
end;

procedure TP_contasbancarias.procChamaTela;
begin
   TelaManutencao := CTelaManutencao.Create(Self);
   try
      if TelaManutencao is TxManuPadrao then
      begin
         TxManuPadrao(TelaManutencao).QryPadrao           := Self.QryPadrao;
         TxManuPadrao(TelaManutencao).b_finalizaTransacao := Self.b_finalizaTransacao;
      end;

      TelaManutencao.ShowModal;
   finally
      FreeAndNil(TelaManutencao);
   end;
end;

procedure TP_contasbancarias.procDepoisAlterar;
begin

end;

procedure TP_contasbancarias.procDepoisIncluir;
begin

end;

procedure TP_contasbancarias.procDepoisRemover;
begin

end;

procedure TP_contasbancarias.procInicializar(Query: TIBQuery; b_finalizaTransacao, b_somenteConsulta: Boolean;
 TelaManutencao: TForm; CTelaManutencao: TFormClass);
begin
   Self.b_finalizaTransacao := b_finalizaTransacao;
   Self.b_somenteConsulta   := b_somenteConsulta;
   Self.QryPadrao           := Query;
   Self.TelaManutencao      := TelaManutencao;
   Self.CTelaManutencao     := CTelaManutencao;
end;

procedure TP_contasbancarias.procSelect;
begin

end;

procedure TP_contasbancarias.sbAlterarClick(Sender: TObject);
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

procedure TP_contasbancarias.sbNovoClick(Sender: TObject);
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

procedure TP_contasbancarias.sbRemoverClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);

   try
      if Application.MessageBox('Confirma a exclusão do Registro selecionado?','Aviso ao Usuário',MB_YESNO+MB_ICONQUESTION) = IDNO then
         Exit;

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

procedure TP_contasbancarias.sbSairClick(Sender: TObject);
begin
   procBotaoVisivelHabilitado(Sender);
   Close;
end;

end.
