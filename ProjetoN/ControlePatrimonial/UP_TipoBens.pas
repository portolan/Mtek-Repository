unit UP_TipoBens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_TipoBens = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
  end;

var
  P_TipoBens: TP_TipoBens;

implementation

{$R *.dfm}

uses udmControlePatrimonial, UM_TipoBens, UP_NotaBemImobilizado;

procedure TP_TipoBens.FormCreate(Sender: TObject);
begin
  inherited;
   procInicializar(DMControlePatrimonial.TipoBens, True, False, MTipoBens, TMTipoBens);
end;

procedure TP_TipoBens.procSelect;
begin
   inherited;
   procMontaWhere;

   DMControlePatrimonial.TipoBens.Close;
   DMControlePatrimonial.TipoBens.SQL.Text := ' SELECT * FROM TIPO_DE_BENS A WHERE '+c_where;
   DMControlePatrimonial.TipoBens.Open;
end;

end.

