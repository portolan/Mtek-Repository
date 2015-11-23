unit UP_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, IBX.IBQuery;

type
  TPMovimentoEstoque = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
    procedure sbRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PMovimentoEstoque: TPMovimentoEstoque;

implementation

{$R *.dfm}

uses UM_MovimentoEstoque, UDM_Estoque, UEstoque, UDM_contabil;

procedure TPMovimentoEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.MovimentoEstoque,  True, False, MMovimentoEstoque, TMMovimentoEstoque);
    funcAtribuiFiltros;
end;

procedure TPMovimentoEstoque.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.MovimentoEstoque.Close;
    DM_Estoque.MovimentoEstoque.SQL.Text := 'select c.*, pro_descricao, emp_razao, bloc_descricao, prat_descricao from ESTOQ_MOVIMENTO c ' +
        'inner join produtos on em_produto = pro_codigo and em_empresa = pro_empresa                                                     ' +
        'inner join empresa on em_empresa = emp_cod                                                                                      ' +
        'inner join bloco on bloc_codigo = em_bloco and bloc_empresa = em_empresa                                                        ' +
        'inner join prateleira on prat_codigo = em_prateleira and prat_empresa = em_empresa where '+c_where;
    DM_Estoque.MovimentoEstoque.Open;
end;

procedure TPMovimentoEstoque.sbRemoverClick(Sender: TObject);
var
    qry : TIBQuery;
    qtd : Double;
begin
    DM_Estoque.MovimentoEstoque.Edit;
    qry := funcCriaQuery;
    qry.Close;
    qry.SQL.Text := 'select estoq_qtd qtd from estoque where '+
                    ' estoq_empresa = ' + DM_Estoque.MovimentoEstoqueEM_EMPRESA.AsString +
                    ' and estoq_bloco = ' + DM_Estoque.MovimentoEstoqueEM_BLOCO.AsString +
                    ' and estoq_prateleira = ' + DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.AsString +
                    ' and estoq_produto = ' + DM_Estoque.MovimentoEstoqueEM_PRODUTO.AsString;
    qry.Open;
    qtd := qry.FieldByName('qtd').AsFloat;

    if DM_Estoque.MovimentoEstoqueEM_TIPO.Value = 'E' then
    begin
        qry.Close;
        qry.SQL.Text := 'update estoque set '+
            ' estoq_qtd = estoq_qtd - '+DM_Estoque.MovimentoEstoqueEM_QTD.asString+
            ' where '+
            ' estoq_empresa = '+DM_Estoque.MovimentoEstoqueEM_EMPRESA.asString+
            ' and estoq_produto = '+DM_Estoque.MovimentoEstoqueEM_PRODUTO.asString+
            ' and estoq_bloco = '+DM_Estoque.MovimentoEstoqueEM_BLOCO.asString+
            ' and estoq_prateleira = '+DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.asString+
            ' and estoq_codigo = '+DM_Estoque.MovimentoEstoqueEM_ESTOQUE.asString;
        qry.ExecSQL;
        DM_Estoque.MovimentoEstoqueEM_OBS.Value := 'ESTORNADA';
        DM_Estoque.MovimentoEstoqueEM_TIPO.Value := 'S';
    end
    else if DM_Estoque.MovimentoEstoqueEM_TIPO.Value = 'S' then
    begin
        qry.Close;
        qry.SQL.Text := 'update estoque set '+
            ' estoq_qtd = estoq_qtd + '+DM_Estoque.MovimentoEstoqueEM_QTD.asString+
            ' where '+
            ' estoq_empresa = '+DM_Estoque.MovimentoEstoqueEM_EMPRESA.asString+
            ' and estoq_produto = '+DM_Estoque.MovimentoEstoqueEM_PRODUTO.asString+
            ' and estoq_bloco = '+DM_Estoque.MovimentoEstoqueEM_BLOCO.asString+
            ' and estoq_prateleira = '+DM_Estoque.MovimentoEstoqueEM_PRATELEIRA.asString+
            ' and estoq_codigo = '+DM_Estoque.MovimentoEstoqueEM_ESTOQUE.asString;
        qry.ExecSQL;
        DM_Estoque.MovimentoEstoqueEM_OBS.Value := 'ESTORNADA';
        DM_Estoque.MovimentoEstoqueEM_TIPO.Value := 'E';
    end;
    DM_Estoque.MovimentoEstoque.Post;
    DM_Estoque.MovimentoEstoque.Transaction.Commit;
    showMessage('Movimentação estornada!');
    procSelect;
end;

end.
