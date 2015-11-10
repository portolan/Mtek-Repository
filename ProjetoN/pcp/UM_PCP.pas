unit UM_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls;

type
  TM_OP = class(TxManuPadrao)
    pc_ordem: TPageControl;
    TabSheet1: TTabSheet;
    ts_aguardandoliberacao: TTabSheet;
    ts_producao: TTabSheet;
    ts_cancelada: TTabSheet;
    ts_concluida: TTabSheet;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_OP: TM_OP;

implementation

{$R *.dfm}

uses UDM_PCP;

end.
