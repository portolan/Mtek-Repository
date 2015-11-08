unit UP_MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPMovimentoEstoque = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PMovimentoEstoque: TPMovimentoEstoque;

implementation

{$R *.dfm}

uses UM_MovimentoEstoque, UDM_Estoque;

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

end.
