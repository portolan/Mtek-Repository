
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
     i_bloco, i_prateleira, i_estoque, i_movimento : integer;
     function funcGeraMovimentacaoEstoqueCOMPONENTE(codEmpresa, codBloco, codPrateleira, codEstoque, i_movimento : integer; codProduto : String;
                                     qtd : double; obs : String; vlrFinanceiro : double;  categoria : integer):boolean;
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
        DBCOM_VLR_COMPONENTE.Text := FLOATTOSTR(QryVerificaProduto.FieldByName('pro_customedio').ASFLOAT);
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
        DBCOM_VLR_COMPONENTE.Text := FLOATTOSTR(DM_Estoque.ProdutosPRO_CUSTOMEDIO.AsFloat);
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
      raise Exception.Create('Campo de Quantidade Nulo, por favor informe uma quantidade valida!');

      DBCOM_QTD.SetFocus;
   end;

   if DBCOM_QTD.Text = '0' then
   begin
      raise Exception.Create('Atenção, Quantidade Invalida, por favor informe quantidade maior que zero!');


      DBCOM_QTD.SetFocus;
   end;
   ProcVerificaSaldo;

   F_Vlr_Unit := strtofloat(DBCOM_VLR_COMPONENTE.Text);
   F_qtd := strtofloat(DBCOM_QTD.Text);
   F_VlrTotal := F_Vlr_Unit * F_qtd;

   DBCOM_VLR_TOTAL.Text := FLOATTOSTR(F_VlrTotal);
end;



function TMComponente.funcGeraMovimentacaoEstoqueCOMPONENTE(codEmpresa,
  codBloco, codPrateleira, codEstoque, i_movimento: integer; codProduto: String; qtd: double;
  obs: String; vlrFinanceiro: double; categoria: integer): boolean;
var
    qryDin : TIBQuery;
    b_existeProdutoEstoque : boolean;
    customedio : double;
begin
    try
        qryDin := funcCriaQuery;
        try
            b_existeProdutoEstoque := funcExisteProdutoNoEstoque(codEmpresa, codBloco, codPrateleira, codProduto);

            if not b_existeProdutoEstoque then
            begin
                customedio := funcCalcCustoMedio(codEmpresa, codProduto, codBloco, codPrateleira, codEstoque);
                funcNovoProdutoEstoque(codEmpresa, codBloco, codPrateleira, codProduto, 'A',
                                        qtd, 0, qtd, customedio, categoria, obs, '0', 0, 0);
            end;
        Except on E:Exception do
            raise Exception.Create('Produto Não encontrado! Verifique se este produto está cadastrado!');
        end;

        qryDin.Close;
        qryDin.SQL.Text := 'insert into ESTOQ_MOVIMENTO (EM_EMPRESA, EM_PRODUTO, EM_BLOCO, EM_PRATELEIRA,'+
                           ' EM_ESTOQUE, EM_CODIGO, EM_TIPO, EM_QTD,EM_DATA,                             '+
                           ' EM_OBS, EM_VALOR_FINANCEIRO, EM_PEDIDOCOMPRAORIGEM)                         '+
                           ' values (:EM_EMPRESA, :EM_PRODUTO, :EM_BLOCO,                                 '+
                           ' :EM_PRATELEIRA, :EM_ESTOQUE, :EM_CODIGO,                                    '+
                           ' :EM_TIPO, :EM_QTD, :EM_DATA,:EM_OBS,                                        '+
                           ' :EM_VALOR_FINANCEIRO, :EM_PEDIDOCOMPRAORIGEM)                               ';
        qryDin.ParamByName('EM_EMPRESA').Value := codEmpresa;
        qryDin.ParamByName('EM_PRODUTO').Value := codProduto;
        qryDin.ParamByName('EM_BLOCO').Value := codBloco;
        qryDin.ParamByName('EM_PRATELEIRA').Value := codPrateleira;
        qryDin.ParamByName('EM_ESTOQUE').Value := codEstoque;
        qryDin.ParamByName('EM_CODIGO').Value := i_movimento;
        qryDin.ParamByName('EM_TIPO').Value := 'S';
        qryDin.ParamByName('EM_QTD').Value := qtd;
        qryDin.ParamByName('EM_DATA').Value := Now;
        qryDin.ParamByName('EM_OBS').Value := obs;
        qryDin.ParamByName('EM_VALOR_FINANCEIRO').Value := vlrFinanceiro;
        qryDin.open;

        funcBaixaEstoque(codEmpresa, codProduto, codBloco, codPrateleira, codEstoque, qtd, 'S');
    except on E: Exception do
        raise Exception.Create('Erro ao Criar a Movimentação!');
    end;
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
  i_movimento := dmBanco.funcRecuperaProximoIdGenerator('GEN_ESTOQ_MOVIMENTO');
  funcGeraMovimentacaoEstoqueCOMPONENTE(DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger,
                                     i_bloco, i_prateleira, i_estoque, i_movimento,
                                     DBCOM_CODIGO.text,
                                     strtofloat(DBCOM_QTD.text),
                                     'REFERENTE A MANUTENÇÃO DO BEN IMOBILIZADO NÚMERO DE SÉRIE: '+ DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.AsString,
                                     STRTOFLOAT(DBCOM_VLR_TOTAL.TEXT),
                                      1);
  DMControlePatrimonial.ComponenteCOM_MOV_ESTOQUE.AsInteger := i_movimento;
  inherited;


end;

end.
