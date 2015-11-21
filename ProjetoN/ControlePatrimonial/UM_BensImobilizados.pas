unit UM_BensImobilizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids;

type
  TMBensImobilizados = class(TxManuPadrao)
    BensImobilizados: TPageControl;
    C_BensImobilizados: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Edit1: TEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Edit4: TEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Edit2: TEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Edit3: TEdit;
    Manutencão: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
  private
    { Private declarations }
    procedure SelecionaProdutosNota;
  public
    { Public declarations }
  end;

var
  MBensImobilizados: TMBensImobilizados;

implementation

{$R *.dfm}

uses udmControlePatrimonial, dm000, UP_empresa, UDM_contabil, UP_Pessoa,
  UDM_PedCompra, UP_NotaBemImobilizado;

procedure TMBensImobilizados.SelecionaProdutosNota;
begin

end;

end.
