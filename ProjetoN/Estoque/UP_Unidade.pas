unit UP_Unidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TPUnidade = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PUnidade: TPUnidade;

implementation

{$R *.dfm}

uses UDM_Estoque, dm000, UM_Unidade;

{ TxPesqPadrao1 }

procedure TPUnidade.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Unidade, True, False, MUnidade, TMUnidade);
    funcAtribuiFiltros;
end;

procedure TPUnidade.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.Unidade.Close;
    DM_Estoque.Unidade.SQL.Text := 'select * from unidade where '+c_where;
    DM_Estoque.Unidade.Open;
end;

end.
