unit UM_novacontabancaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tm_novacontabancaria = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  m_novacontabancaria: Tm_novacontabancaria;

implementation

{$R *.dfm}

uses UDM_financeiro, UDM_contabil;

procedure Tm_novacontabancaria.FormCreate(Sender: TObject);
begin
  inherited;
    DM_financeiro.banco.Close;
     DM_financeiro.banco.SQL.Text := 'select * from banco';
      DM_financeiro.banco.open;
      DM_financeiro.banco.FetchAll;


     DM_contabil.empresa.Close;
     DM_contabil.empresa.SQL.Text := 'select * from empresa';
     DM_contabil.empresa.open;
     DM_contabil.empresa.FetchAll;
end;

end.
