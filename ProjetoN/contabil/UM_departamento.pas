unit UM_departamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TM_departamento = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_departamento: TM_departamento;

implementation

{$R *.dfm}

uses UDM_contabil;

procedure TM_departamento.FormShow(Sender: TObject);
begin
  inherited;
  DM_contabil.empresa.Close;
  DM_contabil.empresa.SQL.Text := 'select * from empresa' ;
  DM_contabil.empresa.Open;
  DM_contabil.empresa.FetchAll;
end;

end.
