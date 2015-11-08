unit UP_Produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPProduto = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PProduto: TPProduto;

implementation

{$R *.dfm}

uses UDM_Estoque, dm000, dm001, UM_Produto;

procedure TPProduto.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Produtos, True, False, MProduto, TMProduto);
    funcAtribuiFiltros;
end;

procedure TPProduto.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.Produtos.Close;
    DM_Estoque.Produtos.SQL.Text := 'select b.*, emp_razao, cat_descricao from produtos b  ' +
                                    'inner join empresa on emp_cod = pro_empresa           ' +
                                    'left join categoria on cat_empresa = pro_empresa and ' +
                                    'cat_codigo = pro_categoria where '+c_where;
    DM_Estoque.Produtos.Open;
end;

end.
