unit UR_balancocx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TREL_balancocx = class(TForm)
    lb_inicialcx2: TLabel;
    dt_balancoini: TDateTimePicker;
    lb_finalcx2: TLabel;
    dt_balancofini: TDateTimePicker;
    btn_relbalancaixa: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_balancocx: TREL_balancocx;

implementation

{$R *.dfm}

procedure TREL_balancocx.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
