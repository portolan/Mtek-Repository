unit UP_BensImobilizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_BensImobilizados = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     procedure procSelect; override;
  end;

var
  P_BensImobilizados: TP_BensImobilizados;

implementation

{$R *.dfm}

uses dm000, udmControlePatrimonial, UM_BensImobilizados, UP_NotaBemImobilizado;

{ TP_BensImobilizados }

procedure TP_BensImobilizados.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DMControlePatrimonial.BenImobilizado, True, False, P_PesquisaNotaBemImobilizado, TP_PesquisaNotaBemImobilizado);
end;

procedure TP_BensImobilizados.procSelect;
begin
  inherited;
   procMontaWhere;

   DMControlePatrimonial.BenImobilizado.Close;
   DMControlePatrimonial.BenImobilizado.SQL.Text := ' SELECT * FROM BENS_IMOBILIZADOS A WHERE '+c_where;
   DMControlePatrimonial.BenImobilizado.Open;
end;

end.
