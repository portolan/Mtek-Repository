unit UM_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.DBCtrls,
  Vcl.Mask;

type
  TM_OP = class(TxManuPadrao)
    qLiberacao: TIBQuery;
    dsLiberacao: TDataSource;
    uLiberacao: TIBUpdateSQL;
    qLiberacaoOP_VENDAS: TIntegerField;
    qLiberacaoOP_EMPRESA: TIntegerField;
    qLiberacaoOP_FICHATECNICA: TIBStringField;
    qLiberacaoOP_DESCRICAO: TIBStringField;
    qLiberacaoOP_TIPO: TIBStringField;
    qLiberacaoOP_QTD: TIntegerField;
    qLiberacaoOP_DT_PEDIDO: TDateField;
    qLiberacaoOP_DT_ENTREGA: TDateField;
    qLiberacaoOP_STATUS: TIBStringField;
    qLiberacaoOP_COD: TIntegerField;
    qproducao: TIBQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    DateField2: TDateField;
    IBStringField4: TIBStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    uproducao: TIBUpdateSQL;
    dsproducao: TDataSource;
    qcancelada: TIBQuery;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField8: TIntegerField;
    DateField3: TDateField;
    DateField4: TDateField;
    IBStringField8: TIBStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    ucancelada: TIBUpdateSQL;
    dscancelada: TDataSource;
    qfechada: TIBQuery;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField13: TIntegerField;
    DateField5: TDateField;
    DateField6: TDateField;
    IBStringField12: TIBStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    ufechada: TIBUpdateSQL;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DateTimePicker3: TDateTimePicker;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_OP: TM_OP;

implementation

{$R *.dfm}

uses UDM_PCP, dm000, UEstoque;

procedure TM_OP.FormCreate(Sender: TObject);
begin
  inherited;
  DBEdit13.Text:=DateToStr(date);
end;


end.
