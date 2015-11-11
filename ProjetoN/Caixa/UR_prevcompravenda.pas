unit UR_prevcompravenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TREL_prevcompravenda = class(TForm)
    dt_finalprev: TDateTimePicker;
    lb_finalprev: TLabel;
    dt_inicialprev: TDateTimePicker;
    lb_inicialprev: TLabel;
    btn_relprev: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  REL_prevcompravenda: TREL_prevcompravenda;

implementation

{$R *.dfm}

procedure TREL_prevcompravenda.FormCreate(Sender: TObject);
begin
   Left := (GetSystemMetrics(SM_CXSCREEN) - Width) div 2;
   Top := (GetSystemMetrics(SM_CYSCREEN) - Height) div 2;
end;

end.
