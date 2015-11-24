unit UM_BaixaPedidoCompra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  IBX.IBCustomDataSet, IBX.IBQuery;

type
  TMBaixaPedidoCompra = class(TForm)
    pnRodape: TPanel;
    sbBaixar: TSpeedButton;
    sbSair: TSpeedButton;
    gbCabeca: TGroupBox;
    pnlCorpo: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cdsPedidos: TClientDataSet;
    cdsPedidosSelecionados: TClientDataSet;
    dsPedidos: TDataSource;
    dsPedidosSelecionados: TDataSource;
    edFornecedor: TEdit;
    lbNomeFornecedor: TLabel;
    cdsPedidosCDS_EMPRESA: TIntegerField;
    cdsPedidosCDS_PEDIDO: TIntegerField;
    cdsPedidosCDS_PRODUTO: TStringField;
    cdsPedidosCDS_DESCPRODUTO: TStringField;
    cdsPedidosCDS_QTD: TFloatField;
    cdsPedidosCDS_VLR_TOTAL: TFloatField;
    cdsPedidosSelecionadosCDS_EMPRESA: TIntegerField;
    cdsPedidosSelecionadosCDS_PEDIDO: TIntegerField;
    cdsPedidosSelecionadosCDS_PRODUTO: TStringField;
    cdsPedidosSelecionadosCDS_DESCPRODUTO: TStringField;
    cdsPedidosSelecionadosCDS_QTD: TFloatField;
    cdsPedidosSelecionadosCDS_VLR_TOTAL: TFloatField;
    cdsPedidosBO_SELECIONADO: TBooleanField;
    Panel1: TPanel;
    Label1: TLabel;
    edVlrNota: TEdit;
    Label2: TLabel;
    edQtdTotal: TEdit;
    edNrNota: TEdit;
    Label3: TLabel;
    procedure cdsPedidosAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure sbBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbSairClick(Sender: TObject);
    procedure dsPedidosSelecionadosDataChange(Sender: TObject;
      Field: TField);
    procedure edNrNotaKeyPress(Sender: TObject; var Key: Char);
  private
    i_fornecedor : Integer;
    FValorNota: Double;
    FQtdNota: Double;

    procedure procPopularCDS;
    procedure SetValorNota(const Value: Double);
    procedure SetQtdNota(const Value: Double);

    property ValorNota: Double read FValorNota write SetValorNota;
    property QtdNota: Double read FQtdNota write SetQtdNota;
  public
    class procedure ChamaTela(AOwner: TComponent; i_fornecedor : Integer);
  end;

var
  MBaixaPedidoCompra: TMBaixaPedidoCompra;

implementation

{$R *.dfm}

uses dm000, UDM_PedCompra, UEstoque;

{ TForm1 }

procedure TMBaixaPedidoCompra.cdsPedidosAfterInsert(DataSet: TDataSet);
begin
   cdsPedidosBO_SELECIONADO.AsBoolean := False;
end;

class procedure TMBaixaPedidoCompra.ChamaTela(AOwner: TComponent; i_fornecedor: Integer);
begin
   MBaixaPedidoCompra := TMBaixaPedidoCompra.Create(AOwner);
   try
      MBaixaPedidoCompra.i_fornecedor := i_fornecedor;
      MBaixaPedidoCompra.ShowModal;
   finally
      FreeAndNil(MBaixaPedidoCompra);
   end;
end;

procedure TMBaixaPedidoCompra.DBGrid1DblClick(Sender: TObject);
begin
   if cdsPedidos.IsEmpty then
      Exit;

   cdsPedidosSelecionados.Append;
   cdsPedidosSelecionadosCDS_EMPRESA.AsInteger     := cdsPedidosCDS_EMPRESA.AsInteger;
   cdsPedidosSelecionadosCDS_PEDIDO.AsInteger      := cdsPedidosCDS_PEDIDO.AsInteger;
   cdsPedidosSelecionadosCDS_PRODUTO.AsString      := cdsPedidosCDS_PRODUTO.AsString;
   cdsPedidosSelecionadosCDS_DESCPRODUTO.AsString  := cdsPedidosCDS_DESCPRODUTO.AsString;
   cdsPedidosSelecionadosCDS_QTD.AsFloat           := cdsPedidosCDS_QTD.AsFloat;
   cdsPedidosSelecionadosCDS_VLR_TOTAL.AsFloat     := cdsPedidosCDS_VLR_TOTAL.AsFloat;
   cdsPedidosSelecionados.Post;

   ValorNota := ValorNota + cdsPedidosSelecionadosCDS_VLR_TOTAL.AsFloat;
   QtdNota   := QtdNota   + cdsPedidosSelecionadosCDS_QTD.AsFloat;

   cdsPedidos.Edit;
   cdsPedidosBO_SELECIONADO.AsBoolean := True;
   cdsPedidos.Post;
end;

procedure TMBaixaPedidoCompra.DBGrid2DblClick(Sender: TObject);
begin
   if cdsPedidosSelecionados.IsEmpty then
      Exit;

   try
      cdsPedidos.DisableControls;

      cdsPedidos.Filtered := False;
      if cdsPedidos.Locate('CDS_EMPRESA;CDS_PEDIDO',
                        VarArrayOf([cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                    cdsPedidosSelecionadosCDS_PEDIDO.AsInteger]),[locaseinsensitive]) then
      begin
         cdsPedidos.Edit;
         cdsPedidosBO_SELECIONADO.AsBoolean := False;
         cdsPedidos.Post;
      end;

      ValorNota := ValorNota - cdsPedidosSelecionadosCDS_VLR_TOTAL.AsFloat;
      QtdNota   := QtdNota   - cdsPedidosSelecionadosCDS_QTD.AsFloat;

      cdsPedidosSelecionados.Delete;
   finally
      cdsPedidos.Filtered := True;
      cdsPedidos.EnableControls;
   end;
end;

procedure TMBaixaPedidoCompra.dsPedidosSelecionadosDataChange(Sender: TObject; Field: TField);
begin
   sbBaixar.Enabled := not cdsPedidosSelecionados.IsEmpty;
end;

procedure TMBaixaPedidoCompra.edNrNotaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in ['0'..'9',#08,#13,#27]) then
      key := #0;
end;

procedure TMBaixaPedidoCompra.FormCreate(Sender: TObject);
begin
   ValorNota := 0.00;
   QtdNota   := 0.00;
end;

procedure TMBaixaPedidoCompra.FormShow(Sender: TObject);
begin
   cdsPedidos.CreateDataSet;
   cdsPedidos.EmptyDataSet;

   cdsPedidosSelecionados.CreateDataSet;
   cdsPedidosSelecionados.EmptyDataSet;

   procPopularCDS;
end;

procedure TMBaixaPedidoCompra.procPopularCDS;
var AuxQry : TIBQuery;
begin
   AuxQry := dmBanco.funcCriaQuery;
   try
      AuxQry.Close;
      AuxQry.SQL.Text := ' SELECT A.PDC_EMPRESA, '+
                         '        A.PDC_CODIGO, '+
                         '        A.PDC_PRODUTO, '+
                         '        A.PDC_QTD_TOTAL, '+
                         '        A.PDC_VLR_TOTAL, '+
                         '        B.PRO_DESCRICAO, '+
                         '        C.PESS_NOME '+
                         '   FROM PEDIDO_COMPRA A '+
                         '  INNER JOIN PRODUTOS B ON A.PDC_EMPRESA = B.PRO_EMPRESA '+
                         '                       AND A.PDC_PRODUTO = B.PRO_CODIGO '+
                         '  INNER JOIN PESSOAS C ON A.PDC_FORNECEDOR = C.PESS_CODIGO '+
                         '  WHERE A.PDC_FORNECEDOR = :PESSOA '+
                         '    AND A.PDC_STATUS = :STATUS ';
      AuxQry.ParamByName('PESSOA').AsInteger := i_fornecedor;
      AuxQry.ParamByName('STATUS').AsString  := TNMStatusPedCompra[tspAberto];
      AuxQry.Open;

      edFornecedor.Text := IntToStr(i_fornecedor);
      lbNomeFornecedor.Caption := AuxQry.FieldByName('PESS_NOME').AsString;

      AuxQry.First;
      while not AuxQry.Eof do
      begin
         cdsPedidos.Append;
         cdsPedidosCDS_EMPRESA.AsInteger     := AuxQry.FieldByName('PDC_EMPRESA').AsInteger;
         cdsPedidosCDS_PEDIDO.AsInteger      := AuxQry.FieldByName('PDC_CODIGO').AsInteger;
         cdsPedidosCDS_PRODUTO.AsString      := AuxQry.FieldByName('PDC_PRODUTO').AsString;
         cdsPedidosCDS_DESCPRODUTO.AsString  := AuxQry.FieldByName('PRO_DESCRICAO').AsString;
         cdsPedidosCDS_QTD.AsFloat           := AuxQry.FieldByName('PDC_QTD_TOTAL').AsFloat;
         cdsPedidosCDS_VLR_TOTAL.AsFloat     := AuxQry.FieldByName('PDC_VLR_TOTAL').AsFloat;
         cdsPedidos.Post;

         AuxQry.Next;
      end;
   finally
      FreeAndNil(AuxQry);
   end;
end;

procedure TMBaixaPedidoCompra.sbBaixarClick(Sender: TObject);
var i_bloco, i_prateleira, i_estoque : Integer;
begin
   if cdsPedidosSelecionados.IsEmpty then
   begin
      Application.Messagebox(Pchar('Nenhum pedido selecionado para ser Baixado!'),Pchar(caption),mb_iconerror+mb_ok);
      Exit;
   end;

   if trim(edNrNota.Text) = EmptyStr then
   begin
      Application.Messagebox(Pchar('Número da Nota não informado!'),Pchar(caption),mb_iconerror+mb_ok);
      Exit;
   end;

   try
      try
         cdsPedidosSelecionados.DisableControls;


         dmPedCompra.procGerarCabecaNota(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                         StrToInt(edFornecedor.Text),
                                         StrToInt(edNrNota.Text),
                                         ValorNota);

         cdsPedidosSelecionados.First;
         while not cdsPedidosSelecionados.Eof do
         begin
            UEstoque.funcVerificaEstoque(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                         cdsPedidosSelecionadosCDS_PRODUTO.AsString,
                                         cdsPedidosSelecionadosCDS_QTD.AsFloat,
                                         i_bloco, i_prateleira, i_estoque);

            UEstoque.funcGeraMovimentacaoEstoque(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                                 i_bloco, i_prateleira, i_estoque,
                                                 cdsPedidosSelecionadosCDS_PRODUTO.AsString,
                                                 cdsPedidosSelecionadosCDS_QTD.AsFloat,
                                                 'REFERENTE PEDIDO DE COMPRA CÓDIGO: '+ cdsPedidosSelecionadosCDS_PEDIDO.AsString,
                                                 cdsPedidosCDS_VLR_TOTAL.AsFloat,
                                                 cdsPedidosSelecionadosCDS_PEDIDO.AsInteger, 1);

            dmPedCompra.procGerarTitulos(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                         cdsPedidosSelecionadosCDS_PEDIDO.AsInteger);

            dmPedCompra.procGerarItemNota(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                          cdsPedidosSelecionadosCDS_PEDIDO.AsInteger,
                                          StrToInt(edNrNota.Text));

            dmPedCompra.procAlterarStatusPedCompra(cdsPedidosSelecionadosCDS_EMPRESA.AsInteger,
                                                   cdsPedidosSelecionadosCDS_PEDIDO.AsInteger,
                                                   tspBaixado, False);

            cdsPedidosSelecionados.Next;
         end;

         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Commit;

         Application.MessageBox(pChar('Operação realizada com sucesso!'),Pchar(caption), mb_ok+mb_iconinformation);
         Close;
      finally
         cdsPedidosSelecionados.EnableControls;
      end;
   except
      on E: Exception do
      begin
         if dmBanco.TBanco.InTransaction then
            dmBanco.TBanco.Rollback;

         Application.Messagebox(Pchar('Erro ao Baixar Pedidos de Compra!' + sLineBreak +  sLineBreak +
                             'Descrição do Erro: "'+ e.message + '"'),Pchar(caption),mb_iconerror+mb_ok);
      end;
   end;
end;

procedure TMBaixaPedidoCompra.sbSairClick(Sender: TObject);
begin
   close;
end;

procedure TMBaixaPedidoCompra.SetQtdNota(const Value: Double);
begin
   FQtdNota        := Value;
   edQtdTotal.Text := FormatFloat('###,###,##0.00', Value);
end;

procedure TMBaixaPedidoCompra.SetValorNota(const Value: Double);
begin
   FValorNota     := Value;
   edVlrNota.Text := FormatFloat('###,###,##0.00', Value);
end;

end.
