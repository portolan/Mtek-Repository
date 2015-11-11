unit UP_fecharcx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TUP_fecharcaixa = class(TForm)
    lb_dataabriu: TLabel;
    dt_abriu: TDateTimePicker;
    Label1: TLabel;
    dt_fechou: TDateTimePicker;
    Label2: TLabel;
    Edit_saldototal: TEdit;
    btn_cancelacx: TButton;
    btn_fecharcx: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_fecharcaixa: TUP_fecharcaixa;

implementation

{$R *.dfm}

end.
