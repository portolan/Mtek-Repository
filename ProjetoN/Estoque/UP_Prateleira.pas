unit UP_Prateleira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPPrateleira = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PPrateleira: TPPrateleira;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Prateleira;

procedure TPPrateleira.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Prateleira, True, False, MPrateleira, TMPrateleira);
    funcAtribuiFiltros;
end;

procedure TPPrateleira.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.Prateleira.Close;
    DM_Estoque.Prateleira.SQL.Text := 'select * from prateleira where ' + c_where;
    DM_Estoque.Prateleira.Open;
end;

end.
