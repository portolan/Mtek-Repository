unit UP_Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus;

type
  TP_Caixa = class(TxPesqPadrao)
    MainMenu1: TMainMenu;
    Movimentao1: TMenuItem;
    Relatrios1: TMenuItem;
    Movimentao2: TMenuItem;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  P_Caixa: TP_Caixa;

implementation

{$R *.dfm}

uses UDM_Caixa, UM_Marcas, UM_MCaixa;

procedure TP_Caixa.FormCreate(Sender: TObject);
begin
  inherited;
     procInicializar(DM_Caixa.Caixa,TRUE,FALSE,M_MCaixa,TM_MCaixa);
end;

end.
