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
    pc_ordem: TPageControl;
    TabSheet1: TTabSheet;
    ts_aguardandoliberacao: TTabSheet;
    ts_producao: TTabSheet;
    ts_cancelada: TTabSheet;
    ts_concluida: TTabSheet;
    Button1: TButton;
    gridLibercao: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
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
    qLiberacaoOP_COMPRAS: TIntegerField;
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
    GroupBox1: TGroupBox;
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
    dsfechada: TDataSource;
    sb_abrirOP: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    db_producao: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid7: TDBGrid;
    TabSheet6: TTabSheet;
    DBGrid8: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    TabSheet8: TTabSheet;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    Label8: TLabel;
    DBMemo2: TDBMemo;
    Label16: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit1: TDBEdit;
    Label14: TLabel;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker3: TDateTimePicker;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit11: TDBEdit;
    DBMemo1: TDBMemo;
    DBGrid5: TDBGrid;
    procedure bt_abriropClick(Sender: TObject);
    procedure sb_abrirOPClick(Sender: TObject);
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

procedure TM_OP.bt_abriropClick(Sender: TObject);
var
    codLib, empLib : integer;
    qryDin : TIBQuery;
begin
  inherited;
     codLib := qLiberacaoOP_COD.AsInteger;
     empLib := qLiberacaoOP_EMPRESA.AsInteger;

     qryDin := funcCriaQuery;
     qryDin.Close;
     qryDin.SQL.Text := 'UPDATE ORDEM_PRODUCAO SET op_status = ''E'' where op_empresa = ' +
                        IntToStr(empLib) + ' and op_codigo = ' + IntToStr(codLib);
     qryDin.ExecSQL;


end;

procedure TM_OP.FormCreate(Sender: TObject);
begin
  inherited;
DBEdit7.Text:=DateToStr(date);
end;

procedure TM_OP.sb_abrirOPClick(Sender: TObject);
var
    codLib, empLib : integer;
    qryDin : TIBQuery;
begin
  inherited;
     codLib := qLiberacaoOP_COD.AsInteger;
     empLib := qLiberacaoOP_EMPRESA.AsInteger;

     qryDin := funcCriaQuery;
     qryDin.Close;
     qryDin.SQL.Text := 'UPDATE ORDEM_PRODUCAO SET op_status = ''E'' where op_empresa = ' +
                     IntToStr(empLib) + 'and op_codigo =' + IntToStr(codLib);
     qryDin.ExecSQL;
end;

end.
