unit UR_fechamentocx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TREL_fechamentocx = class(TForm)
    lb_inicialcx: TLabel;
    lb_finalcx: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    btn_relfechamcaixa: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_fechamentocx: TREL_fechamentocx;

implementation

{$R *.dfm}

procedure TREL_fechamentocx.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
