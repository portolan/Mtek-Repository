unit UP_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB;

type
  TPEstoque = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PEstoque: TPEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Estoque, UEstoque;

procedure TPEstoque.FormActivate(Sender: TObject);
begin
  inherited;
    cBoxFiltro.ItemIndex := 14;
end;

procedure TPEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Estoque, True, False, MEstoque, TMEstoque);

end;

procedure TPEstoque.procSelect;
begin
  inherited;

    procMontaWhere;
    DM_Estoque.Estoque.Close;
    DM_Estoque.Estoque.SQL.Text := 'select a.*, pro_descricao, emp_razao, bloc_descricao, prat_descricao, cat_descricao from estoque a '+
                             'left join produtos on estoq_empresa = pro_empresa and estoq_produto = pro_codigo         '+
                             'inner join empresa on emp_cod = pro_empresa                                               '+
                             'inner join bloco on estoq_bloco = bloc_codigo and estoq_empresa = bloc_empresa            '+
                             'inner join prateleira on estoq_prateleira = prat_codigo and estoq_empresa = prat_empresa  '+
                             'inner join categoria on estoq_categoria = cat_codigo and estoq_empresa = cat_empresa      '+
                             ' where '+c_where;
    DM_Estoque.Estoque.Open;
end;

end.
