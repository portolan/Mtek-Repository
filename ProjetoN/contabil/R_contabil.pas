unit R_contabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.StdCtrls;

type
  TREL_contabil = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    IBQuery1: TIBQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure chamaTela(xPai: TComponent);
  end;

var
  REL_contabil: TREL_contabil;

implementation

{$R *.dfm}

uses UDM_contabil, dm000;

{ TForm1 }

class procedure TREL_contabil.chamaTela(xPai: TComponent);
begin
REL_contabil := TREL_contabil.Create(xPai);
try
   REL_contabil.ShowModal;
finally
  Freeandnil(REL_contabil);
end;
end;

end.
