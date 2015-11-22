unit UP_FornecedorCotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TPFornecedorCotacao = class(TForm)
    pnRodape: TPanel;
    sbGravar: TSpeedButton;
    sbCancelar: TSpeedButton;
    gbFornecedores: TGroupBox;
    gbCabeca: TGroupBox;
    pnlBotoes: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
    DBG_Fornecedores: TDBGrid;
    lbTitulo: TLabel;
    DBE_COT_EMPRESA: TDBEdit;
    panelFundo: TPanel;
    DBT_EMP_RAZAO: TDBText;
    Label1: TLabel;
    DBE_COT_DEPARTAMENTO: TDBEdit;
    Panel2: TPanel;
    DBT_DEP_NOME: TDBText;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Panel3: TPanel;
    DBT_PRO_DESCRICAO: TDBText;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    dsFornecedores: TDataSource;
    sbFechar: TSpeedButton;
    sbSair: TSpeedButton;
    procedure sbCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbGravarClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure sbRemoverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsFornecedoresDataChange(Sender: TObject; Field: TField);
    procedure sbSairClick(Sender: TObject);
    procedure sbFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
     b_gravou : Boolean;
     b_fechamento : Boolean;

     class procedure procChamaTela(AOwner : TComponent; b_fechamento: Boolean = False);
  end;

var
  PFornecedorCotacao: TPFornecedorCotacao;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UM_FornecedorCotacao;

procedure TPFornecedorCotacao.dsFornecedoresDataChange(Sender: TObject; Field: TField);
begin
   sbAlterar.Enabled := not dmPedCompra.FornecedorCotacao.IsEmpty;
   sbRemover.Enabled := not dmPedCompra.FornecedorCotacao.IsEmpty;
end;

procedure TPFornecedorCotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (not b_gravou) and (not b_fechamento)then
   begin
      if dmBanco.TBanco.InTransaction then
         dmBanco.TBanco.Rollback;
   end;
end;

procedure TPFornecedorCotacao.FormCreate(Sender: TObject);
begin
   b_gravou := False;
   b_fechamento := False;
end;

procedure TPFornecedorCotacao.FormShow(Sender: TObject);
begin
   dmPedCompra.FornecedorCotacao.Close;
   dmPedCompra.FornecedorCotacao.SQL.Text := ' SELECT A.*, '+
                                             '        B.UN_DESCRICAO, '+
                                             '        C.PESS_NOME, '+
                                             '        C.PESS_TELCONTATO, '+
                                             '        C.PESS_EMAIL '+
                                             '   FROM FORNEC_COTACAO A '+
                                             '  INNER JOIN UNIDADE B ON A.FCT_UND_MEDIDA = B.UN_CODIGO '+
                                             '  INNER JOIN PESSOAS C ON A.FCT_FORNECEDOR = C.PESS_CODIGO '+
                                             '  WHERE FCT_EMPRESA = :EMP '+
                                             '    and FCT_COTACAO = :COT ';
   dmPedCompra.FornecedorCotacao.ParamByName('EMP').AsInteger := dmPedCompra.CotacaoCOT_EMPRESA.AsInteger;
   dmPedCompra.FornecedorCotacao.ParamByName('COT').AsInteger := dmPedCompra.CotacaoCOT_CODIGO.AsInteger;
   dmPedCompra.FornecedorCotacao.Open;

   pnlBotoes.Visible  := not b_fechamento;
   sbGravar.Visible   := not b_fechamento;
   sbCancelar.Visible := not b_fechamento;
   sbFechar.Visible   := b_fechamento;
   sbSair.Visible     := b_fechamento;

   if b_fechamento then
   begin
      gbFornecedores.Caption := 'Escolha o Fornecedor vencedor da Cotação:';
   end;
end;

class procedure TPFornecedorCotacao.procChamaTela(AOwner: TComponent; b_fechamento : Boolean);
begin
   PFornecedorCotacao := TPFornecedorCotacao.Create(AOwner);
   try
      PFornecedorCotacao.b_fechamento := b_fechamento;
      PFornecedorCotacao.ShowModal;
   finally
      FreeAndNil(PFornecedorCotacao);
   end;
end;

procedure TPFornecedorCotacao.sbAlterarClick(Sender: TObject);
begin
   dmBanco.procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.FornecedorCotacao.IsEmpty then
      Exit;

   dmPedCompra.FornecedorCotacao.Edit;
   TMFornecedorCotacao.procChamaTela(Self);
end;

procedure TPFornecedorCotacao.sbCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TPFornecedorCotacao.sbFecharClick(Sender: TObject);
begin
   dmBanco.procBotaoVisivelHabilitado(Sender);
   if dmPedCompra.FornecedorCotacao.IsEmpty then
   begin
      Application.Messagebox(Pchar('Nenhum fornecedor selecionado!'),Pchar(caption),mb_iconerror+mb_ok);
      Exit;
   end;

   if Application.MessageBox(pChar('Confirma o fechamento da cotação com o fornecedor selecionado?'),
               Pchar(self.caption),mb_yesno+mb_iconquestion) = idNo then
      Exit;

   dmPedCompra.funcFecharCotacao(dmPedCompra.CotacaoCOT_EMPRESA.AsInteger,
                                 dmPedCompra.CotacaoCOT_CODIGO.AsInteger,
                                 dmPedCompra.FornecedorCotacaoFCT_FORNECEDOR.AsInteger);
   close;
end;

procedure TPFornecedorCotacao.sbGravarClick(Sender: TObject);
begin
   dmBanco.procBotaoVisivelHabilitado(Sender);

   if dmBanco.TBanco.InTransaction then
      dmBanco.TBanco.Commit;

   b_gravou := True;
   Close;
end;

procedure TPFornecedorCotacao.sbNovoClick(Sender: TObject);
begin
   dmBanco.procBotaoVisivelHabilitado(Sender);
   dmPedCompra.FornecedorCotacao.Append;
   dmPedCompra.FornecedorCotacaoFCT_EMPRESA.AsInteger := dmPedCompra.CotacaoCOT_EMPRESA.AsInteger;
   dmPedCompra.FornecedorCotacaoFCT_COTACAO.AsInteger := dmPedCompra.CotacaoCOT_CODIGO.AsInteger;

   TMFornecedorCotacao.procChamaTela(Self);
end;

procedure TPFornecedorCotacao.sbRemoverClick(Sender: TObject);
begin
   dmBanco.procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.FornecedorCotacao.IsEmpty then
      Exit;

   if Application.MessageBox('Confirma a exclusão do Fornecedor selecionado?','Aviso ao Usuário',MB_YESNO+MB_ICONQUESTION) = IDNO then
      Exit;

   dmPedCompra.FornecedorCotacao.Delete;
end;

procedure TPFornecedorCotacao.sbSairClick(Sender: TObject);
begin
   Close;
end;

end.
