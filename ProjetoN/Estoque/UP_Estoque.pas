unit UP_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

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

uses UDM_Estoque, UM_Estoque;

procedure TPEstoque.FormActivate(Sender: TObject);
begin
  inherited;
    cBoxFiltro.ItemIndex := 14;
end;

procedure TPEstoque.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Estoque, True, False, MEstoque, TMEstoque);
    funcAtribuiFiltros;
end;

procedure TPEstoque.procSelect;
begin
  inherited;

    procMontaWhere;
    DM_Estoque.Estoque.Close;
    DM_Estoque.Estoque.SQL.Text := 'select a.*, pro_descricao, bloc_descricao, prat_descricao from ESTOQUE a         ' +
                        'inner join produtos on pro_codigo = estoq_produto and pro_empresa = estoq_empresa           ' +
                        'inner join bloco on bloc_codigo = estoq_bloco and bloc_empresa = estoq_empresa              ' +
                        'inner join prateleira on prat_codigo = estoq_prateleira and prat_empresa = estoq_prateleira ' +
                        'where '+c_where;
    DM_Estoque.Estoque.Open;
end;

end.
