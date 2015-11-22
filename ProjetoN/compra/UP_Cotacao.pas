unit UP_Cotacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPCotacao = class(TxPesqPadrao)
    sbFornecedores: TSpeedButton;
    sbFechar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sbFornecedoresClick(Sender: TObject);
    procedure sbFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure ChamaTela(AOwner: TComponent);
  end;

var
  PCotacao: TPCotacao;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UM_Cotacao, UM_FornecedorCotacao,
  UP_FornecedorCotacao;

class procedure TPCotacao.ChamaTela(AOwner: TComponent);
begin
   PCotacao := TPCotacao.Create(AOwner);
   try
      PCotacao.ShowModal;
   finally
      FreeAndNil(PCotacao);
   end;
end;

procedure TPCotacao.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dmPedCompra.Cotacao, True, False, MCotacao, TMCotacao);
end;

procedure TPCotacao.procSelect;
begin
   procMontaWhere;

   dmPedCompra.Cotacao.Close;
   dmPedCompra.Cotacao.SQL.Text := ' SELECT A.*, '+
                                   '       B.EMP_RAZAO, '+
                                   '       C.DEP_NOME, '+
                                   '       D.PRO_DESCRICAO '+
                                   '  FROM COTACAO A '+
                                   ' INNER JOIN EMPRESA B ON A.COT_EMPRESA = B.EMP_COD '+
                                   ' INNER JOIN DEPARTAMENTO C ON A.COT_DEPARTAMENTO = C.DEP_COD '+
                                   '                          AND A.COT_EMPRESA = C.DEP_EMPRESAR '+
                                   ' INNER JOIN PRODUTOS D ON A.COT_EMPRESA = D.PRO_EMPRESA '+
                                   '                      AND A.COT_PRODUTO = D.PRO_CODIGO '+
                                   ' where '+c_where;
   dmPedCompra.Cotacao.Open;
end;

procedure TPCotacao.sbFecharClick(Sender: TObject);
begin
   inherited;
   procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.Cotacao.IsEmpty then
      Exit;

   if dmPedCompra.CotacaoCOT_STATUS.AsString <> TNMStatusCotacao[tscAberto] then
      raise Exception.Create('Não é possível fechar cotação selecionada!');

   procMontarVLocate;
   try
      TPFornecedorCotacao.procChamaTela(Self, True);
   finally
      procSelect;
      procLocate;
   end;
end;

procedure TPCotacao.sbFornecedoresClick(Sender: TObject);
begin
   inherited;
   procBotaoVisivelHabilitado(Sender);

   if dmPedCompra.Cotacao.IsEmpty then
      Exit;

   if dmPedCompra.CotacaoCOT_STATUS.AsString <> TNMStatusCotacao[tscAberto] then
      raise Exception.Create('Não é possível alterar os dados dos fornecedores da cotação selecionada!');

   procMontarVLocate;
   try
      TPFornecedorCotacao.procChamaTela(Self);
   finally
      procSelect;
      procLocate;
   end;
end;

end.
