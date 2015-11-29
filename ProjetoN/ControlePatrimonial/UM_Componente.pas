
unit UM_Componente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmControlePatrimonial, UManuPadrao,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, db, IBX.IBQuery,
  dm000, UP_Produto, UDM_Estoque, UEstoque;

type
  TMComponente = class(TxManuPadrao)
    Label1: TLabel;
    DBCOM_EMPRESA: TDBEdit;
    Label2: TLabel;
    DBCOM_MANUTENCAO: TDBEdit;
    Label3: TLabel;
    DBCOM_CODIGO: TDBEdit;
    DBCOMDESCRICAO: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBCOM_VLR_COMPONENTE: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Label6: TLabel;
    DBCOM_QTD: TDBEdit;
    Label7: TLabel;
    DBCOM_VLR_TOTAL: TDBEdit;
    procedure DBCOM_CODIGOExit(Sender: TObject);
    procedure DBCOM_QTDExit(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
  private
    { Private declarations }
     i_bloco, i_prateleira, i_estoque : integer;

  public
    { Public declarations }
     procedure ProcVerificaSaldo;

  end;

var
  MComponente: TMComponente;

implementation

{$R *.dfm}

procedure TMComponente.DBCOM_CODIGOExit(Sender: TObject);
var
   QryVerificaProduto : TIBQuery;
   B_ACHOU            : BOOLEAN;
begin
  inherited;

  B_ACHOU := false;

  if DBCOM_CODIGO.Text <> EmptyStr then
  begin
  try
     QryVerificaProduto := dmBanco.funcCriaQuery;

     QryVerificaProduto.Close;
     QryVerificaProduto.SQL.Clear;
     QryVerificaProduto.SQL.Text := 'SELECT * FROM PRODUTOS A WHERE A.PRO_EMPRESA = :EMPRESA AND A.PRO_CODIGO = :PRODUTO';
     QryVerificaProduto.ParamByName('empresa').AsInteger := DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger;
     QryVerificaProduto.ParamByName('PRODUTO').AsString := DBCOM_CODIGO.Text;
     QryVerificaProduto.Open;

     if NOT(QryVerificaProduto.IsEmpty) then
     BEGIN
        DBCOMDESCRICAO.Text := QryVerificaProduto.FieldByName('pro_descricao').AsString;
        DMControlePatrimonial.ComponenteCOM_VLR_COMPONENTE.AsFloat := QryVerificaProduto.FieldByName('pro_customedio').ASFLOAT;
        B_ACHOU := true;
     END;
  finally
     FreeAndNil(QryVerificaProduto);
  end;

  end;

  if (B_ACHOU = false) then
  begin
     PProduto := TPProduto.Create(Self);
     try
        PProduto.ShowModal;
     finally
        DMControlePatrimonial.ComponenteCOM_CODIGO.AsInteger := DM_Estoque.ProdutosPRO_CODIGO.AsInteger;
        DMControlePatrimonial.ComponenteCOM_VLR_COMPONENTE.AsFloat := DM_Estoque.ProdutosPRO_CUSTOMEDIO.AsFloat;
        DBCOMDESCRICAO.Text := DM_Estoque.ProdutosPRO_DESCRICAO.asstring;
        FreeAndNil(PProduto);
     end;
  end;
end;



procedure TMComponente.DBCOM_QTDExit(Sender: TObject);
var
   F_Vlr_Unit : double;
   F_qtd      : double;
   F_VlrTotal : double;
begin
  inherited;
   if DBCOM_QTD.Text = EmptyStr then
   begin
      ShowMessage('Campo de Quantidade Nulo, por favor informe uma quantidade valida!');

      if DBCOM_QTD.CanUndo then
         DBCOM_QTD.SetFocus;
   end;

   if DBCOM_QTD.Text = '0' then
   begin
      showmessage ('Atenção, Quantidade Invalida, por favor informe quantidade maior que zero!');
      if DBCOM_QTD.CanUndo then
         DBCOM_QTD.SetFocus;
   end;
   ProcVerificaSaldo;

   F_Vlr_Unit := strtofloat(DBCOM_VLR_COMPONENTE.Text);
   F_qtd := strtofloat(DBCOM_QTD.Text);
   F_VlrTotal := F_Vlr_Unit * F_qtd;

   DBCOM_VLR_TOTAL.Text := FLOATTOSTR(F_VlrTotal);
end;



procedure TMComponente.ProcVerificaSaldo;
begin

   UEstoque.funcVerificaEstoque(DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger,
                          DBCOM_CODIGO.Text,
                          STRTOFLOAT(DBCOM_QTD.Text),
                          i_bloco, i_prateleira, i_estoque);


end;

procedure TMComponente.sbGravarClick(Sender: TObject);
begin
  ProcVerificaSaldo;
  UEstoque.funcGeraMovimentacaoEstoque(DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger,
                                     i_bloco, i_prateleira, i_estoque,
                                     DBCOM_CODIGO.text,
                                     strtofloat(DBCOM_QTD.text),
                                     'REFERENTE A MANUTENÇÃO DO BEN IMOBILIZADO NÚMERO DE SÉRIE: '+ DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.AsString,
                                     STRTOFLOAT(DBCOM_VLR_TOTAL.TEXT),
                                     NULL, 1);
  inherited;


end;

end.
