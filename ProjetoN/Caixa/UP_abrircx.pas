unit UP_abrircx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TUP_abrircaixa = class(TForm)
    lb_dtutimofechacx: TLabel;
    dt_dataultfechamento: TDateTimePicker;
    lb_saldoant: TLabel;
    Edit_saldoant: TEdit;
    dt_abertura: TDateTimePicker;
    lb_datainicial: TLabel;
    btn_abrircx: TButton;
    btn_cancelarcx: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UP_abrircaixa: TUP_abrircaixa;

implementation

{$R *.dfm}

end.
