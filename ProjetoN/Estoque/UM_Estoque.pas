unit UM_Estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TMEstoque = class(TxManuPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MEstoque: TMEstoque;

implementation

{$R *.dfm}

uses UDM_Estoque;

end.
