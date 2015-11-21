unit UM_Localizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TMLocalizacao = class(TxManuPadrao)
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
  MLocalizacao: TMLocalizacao;

implementation

{$R *.dfm}

uses udmControlePatrimonial;

end.
