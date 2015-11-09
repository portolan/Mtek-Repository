unit UM_FichaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TM_FichaTecnica = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_FichaTecnica: TM_FichaTecnica;

implementation

{$R *.dfm}

uses dm000, UDM_PCP;

end.
