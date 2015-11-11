unit UR_prevtitulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TREL_prevtitulos = class(TForm)
    btn_relfechamcaixa: TButton;
    DateTimePicker2: TDateTimePicker;
    lb_finalcx: TLabel;
    DateTimePicker1: TDateTimePicker;
    lb_inicialcx: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_prevtitulos: TREL_prevtitulos;

implementation

{$R *.dfm}

procedure TREL_prevtitulos.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
