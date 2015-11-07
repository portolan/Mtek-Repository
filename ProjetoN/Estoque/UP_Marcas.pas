unit UP_Marcas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPMarcas = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; Override;
  end;

var
  PMarcas: TPMarcas;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Marcas;

procedure TPMarcas.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(DM_Estoque.Marcas, True, False, MMarcas, TMMarcas);
   funcAtribuiFiltros;

end;

procedure TPMarcas.procSelect;
begin
  inherited;
    procMontaWhere;
    DM_Estoque.Marcas.Close;
    DM_Estoque.Marcas.SQL.Text := 'select * from Marcas where '+c_where;
    DM_Estoque.Marcas.Open;
end;

procedure TPMarcas.sbNovoClick(Sender: TObject);
var
    gen : integer;
begin
  inherited;
    
end;

end.
