unit UP_NotaEntrada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTelaPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.DB;

type
  TPNotaEntrada = class(TxPesqPadrao)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    dsNota: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure dsNotaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    procedure procSelect; override;
    class procedure procChamaTela(AOwner: TComponent);
  end;

var
  PNotaEntrada: TPNotaEntrada;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra;

{ TPNotaEntrada }

procedure TPNotaEntrada.dsNotaDataChange(Sender: TObject; Field: TField);
begin
   inherited;
   dmPedCompra.ItemNotaEntrada.Close;
   dmPedCompra.ItemNotaEntrada.SQL.Text := ' SELECT A.*, '+
                                           '        B.PRO_DESCRICAO '+
                                           '   FROM ITEM_NOTA_ENTRADA A '+
                                           '  INNER JOIN PRODUTOS B ON A.INE_EMPRESA = B.PRO_EMPRESA '+
                                           '                         AND A.INE_PRODUTO = B.PRO_CODIGO '+
                                           '  WHERE INE_EMPRESA = :INE_EMPRESA '+
                                           '    AND INE_NR_NOTA = :INE_NR_NOTA '+
                                           '    AND INE_PESSOA = :INE_PESSOA ';
   dmPedCompra.ItemNotaEntrada.ParamByName('INE_EMPRESA').AsInteger := dmPedCompra.NotaEntradaNTE_EMPRESA.AsInteger;
   dmPedCompra.ItemNotaEntrada.ParamByName('INE_NR_NOTA').AsInteger := dmPedCompra.NotaEntradaNTE_NR_NOTA.AsInteger;
   dmPedCompra.ItemNotaEntrada.ParamByName('INE_PESSOA').AsInteger  := dmPedCompra.NotaEntradaNTE_PESSOA.AsInteger;
   dmPedCompra.ItemNotaEntrada.Open;
end;

procedure TPNotaEntrada.FormCreate(Sender: TObject);
begin
   inherited;
   procInicializar(dmPedCompra.NotaEntrada, True, True, nil, nil);
end;

class procedure TPNotaEntrada.procChamaTela(AOwner: TComponent);
begin
   PNotaEntrada := TPNotaEntrada.Create(AOwner);
   try
      PNotaEntrada.ShowModal;
   finally
      FreeAndNil(PNotaEntrada);
   end;
end;

procedure TPNotaEntrada.procSelect;
begin
   inherited;

   procMontaWhere;

   dmPedCompra.NotaEntrada.Close;
   dmPedCompra.NotaEntrada.SQL.Text := ' SELECT A.*, '+
                                       '        B.EMP_RAZAO, '+
                                       '        C.PESS_NOME '+
                                       '   FROM NOTA_ENTRADA A '+
                                       '  INNER JOIN EMPRESA B ON A.NTE_EMPRESA = B.EMP_COD '+
                                       '  INNER JOIN PESSOAS C ON A.NTE_PESSOA = C.PESS_CODIGO '+
                                       '  WHERE '+c_where;
   dmPedCompra.NotaEntrada.Open;
end;

end.
