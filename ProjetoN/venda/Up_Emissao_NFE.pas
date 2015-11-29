unit Up_Emissao_NFE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, UDM_Venda, dm000,
  Vcl.Mask, Vcl.DBCtrls, Data.DB;

type
  TUp_NFE = class(TxPesqPadrao)
    Button1: TButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit21: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9Change(Sender: TObject);
//  procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
  procedure procSelect; override;
    { Public declarations }
  end;

var
  Up_NFE: TUp_NFE;

implementation

{$R *.dfm}

procedure TUp_NFE.DBEdit9Change(Sender: TObject);
begin
  inherited;
  DBEdit9.Text:=DateToStr(date);
end;

procedure TUp_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  procInicializar(DM_VENDA.IB_Venda,TRUE,FALSE,Up_NFE, TUp_NFE);
end;

procedure TUp_NFE.procSelect;
begin
   inherited;
   procMontaWhere;
   DM_VENDA.IB_Venda.Close;
   DM_VENDA.IB_Venda.SQL.Text := ' SELECT A.*, '+
                                 '        B.emp_razao, '+
                                 '        C.dep_nome,  '+
                                 '        D.pro_descricao '+
                                 '  FROM PEDIDOVENDA A '+
                                 ' INNER join EMPRESA B ON A.ped_empresa =  b.emp_cod '+
                                 ' INNER JOIN DEPARTAMENTO C ON A.PED_DEPOSITO = C.DEP_COD'+
                                 '       AND A.PED_EMPRESA = C.DEP_EMPRESAR '+
                                 ' INNER JOIN PRODUTOS D ON A.PED_EMPRESA = D.PRO_EMPRESA '+
                                 ' AND A.PED_NUMERO = D.PRO_CODIGO '+
                                 ' WHERE '+c_where;
   DM_VENDA.IB_Venda.Open;
end;

end.
