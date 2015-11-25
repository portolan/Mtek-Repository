unit UP_TipoBens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_TipoBens = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure procSelect; override;
  end;

var
  P_TipoBens: TP_TipoBens;

implementation

{$R *.dfm}

uses udmControlePatrimonial, UM_TipoBens;

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

procedure TP_TipoBens.sbNovoClick(Sender: TObject);
begin
   inherited;

//   MTipoBens := TMTipoBens.Create(Self);
//   try
//      if not (DMControlePatrimonial.TipoBens.Active) then
//      DMControlePatrimonial.TipoBens.Open;
//
//      DMControlePatrimonial.TipoBens.Insert;
//      MTipoBens.QryPadrao := DMControlePatrimonial.TipoBens;
//      MTipoBens.b_finalizaTransacao := true;
//
//      MTipoBens.ShowModal;
//   finally
//      FreeAndNil(MTipoBens);
//   end;
end;

end.

