unit Um_Emissão_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, dm000, UDM_Venda, Vcl.Mask, Vcl.DBCtrls, ufrm_Relacionamento;

type
  TMEmissao_NFE = class(TxManuPadrao)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEmissao_NFE: TMEmissao_NFE;

implementation

{$R *.dfm}


end.
