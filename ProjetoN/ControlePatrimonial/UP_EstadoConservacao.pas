unit UP_EstadoConservacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TP_EstadoConservacao = class(TxPesqPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     procedure procSelect; override;
  end;

var
  P_EstadoConservacao: TP_EstadoConservacao;

implementation

{$R *.dfm}

uses udmControlePatrimonial, UM_EstadoConservacao;

{ TP_EstadoConservacao }

procedure TP_EstadoConservacao.FormCreate(Sender: TObject);
begin
  inherited;
   procInicializar(DMControlePatrimonial.EstadoConservacao, True, False, MEstadoConservacao, TMEstadoConservacao);
end;

procedure TP_EstadoConservacao.procSelect;
begin
  inherited;
   procMontaWhere;

   DMControlePatrimonial.EstadoConservacao.Close;
   DMControlePatrimonial.EstadoConservacao.SQL.Text := ' SELECT * FROM ESTADO_DE_CONSERVACAO A WHERE '+c_where;
   DMControlePatrimonial.EstadoConservacao.Open;

end;

end.
