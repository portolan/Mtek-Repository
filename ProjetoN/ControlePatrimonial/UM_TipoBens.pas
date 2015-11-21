unit UM_TipoBens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TMTipoBens = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    rdAtivo: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MTipoBens: TMTipoBens;

implementation

{$R *.dfm}

uses udmControlePatrimonial;

end.
