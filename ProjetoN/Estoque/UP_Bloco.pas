unit UP_Bloco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TPBloco = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procSelect; Override;
  end;

var
  PBloco: TPBloco;

implementation

{$R *.dfm}

uses UDM_Estoque, UM_Bloco;

procedure TPBloco.FormCreate(Sender: TObject);
begin
  inherited;
    procInicializar(DM_Estoque.Bloco, False, False, MBloco, TMBloco);
end;

procedure TPBloco.procSelect;
begin
  inherited;
    DM_Estoque.Bloco.Close;
    DM_Estoque.Bloco.SQL.Text := 'select * from bloco';
    DM_Estoque.Bloco.Open;
end;

end.
