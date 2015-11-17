unit UM_PCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Menus, Vcl.ToolWin, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, IBX.IBCustomDataSet, IBX.IBUpdateSQL, IBX.IBQuery, Vcl.DBCtrls,
  Vcl.Mask, ufrm_Relacionamento;

type
  TM_OP = class(TxManuPadrao)
    Label9: TLabel;
    DBEdit11: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    frm_empresa: TfrmRelacionamento;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  M_OP: TM_OP;

implementation

{$R *.dfm}

uses UDM_PCP, dm000, UEstoque, UP_empresa;

procedure TM_OP.FormCreate(Sender: TObject);
begin
  inherited;
  DBEdit13.Text:=DateToStr(date);
end;


procedure TM_OP.FormShow(Sender: TObject);
begin
  inherited;
          frm_empresa.procInicializar(DM_PCP.OrdemProducaoOP_EMPRESA,
                              DM_PCP.OrdemProducaoEMP_RAZAO,
                              DM_PCP.DS_OrdemProducao,
                              ' SELECT A.EMP_COD, '+
                              '        A.EMP_RAZAO '+
                              '   FROM EMPRESA A '+
                              '  WHERE A.EMP_COD = :EMP ',
                               P_empresa, TP_empresa, ['EMP'], ['OP_EMPRESA'],
                               ['EMP_COD','EMP_RAZAO']);


end;

end.
