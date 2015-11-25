
unit UM_Componente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmControlePatrimonial, UManuPadrao,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, db, IBX.IBQuery,
  dm000, UP_Produto, UDM_Estoque;

type
  TMComponente = class(TxManuPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    eddescricao: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure DBEdit3Exit(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure procTotalizaManutencao;
  end;

var
  MComponente: TMComponente;

implementation

{$R *.dfm}

procedure TMComponente.DBEdit3Exit(Sender: TObject);
var
   QryVerificaProduto : TIBQuery;
   B_ACHOU            : BOOLEAN;
begin
  inherited;

  B_ACHOU := false;

  if DBEdit3.Text <> EmptyStr then
  begin
  try
     QryVerificaProduto := dmBanco.funcCriaQuery;

     QryVerificaProduto.Close;
     QryVerificaProduto.SQL.Clear;
     QryVerificaProduto.SQL.Text := 'SELECT * FROM PRODUTOS A WHERE A.PRO_EMPRESA = :EMPRESA AND A.PRO_CODIGO = :PRODUTO';
     QryVerificaProduto.ParamByName('empresa').AsInteger := DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger;
     QryVerificaProduto.ParamByName('PRODUTO').AsString := DBEdit3.Text;
     QryVerificaProduto.Open;

     if NOT(QryVerificaProduto.IsEmpty) then
     BEGIN
        eddescricao.Text := QryVerificaProduto.FieldByName('pro_descricao').AsString;
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
        eddescricao.Text := DM_Estoque.ProdutosPRO_DESCRICAO.asstring;
        FreeAndNil(PProduto);
     end;
  end;

end;



procedure TMComponente.procTotalizaManutencao;
var
   QryLocalizaComponentes     : tibquery;
   QryAtualizaValorComponente : tibquery;
   f_valor                    : double;
begin
   try
      QryLocalizaComponentes := dmBanco.funcCriaQuery;
      QryAtualizaValorComponente := dmBanco.funcCriaQuery;

      QryLocalizaComponentes.Close;
      QryLocalizaComponentes.SQL.Clear;
      QryLocalizaComponentes.SQL.Text :=  'SELECT SUM(A.COM_VLR_COMPONENTE) as valor  ' +
                                          '  FROM COMPONENTE A                        ' +
                                          ' WHERE A.COM_EMPRESA = :EMPRESA AND        ' +
                                          '       A.COM_MANUTENCAO = :MANUTENCAO      ' ;
      QryLocalizaComponentes.ParamByName('empresa').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      QryLocalizaComponentes.ParamByName('manutencao').AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      QryLocalizaComponentes.Open;

      if QryLocalizaComponentes.IsEmpty then
         f_valor := 0
      else
         f_valor := QryLocalizaComponentes.FieldByName('valor').AsFloat;


      QryAtualizaValorComponente.Close;
      QryAtualizaValorComponente.SQL.Clear;
      QryAtualizaValorComponente.SQL.Text := 'UPDATE MANUTENCAO A SET             ' +
                                             '    A.MAN_VLR_COMPONENTE = :VALOR   ' +
                                             'WHERE A.MAN_EMPRESA = :EMPRESA AND  ' +
                                             '      A.MAN_CODIGO = :CODIGO        ' ;
      QryAtualizaValorComponente.ParamByName('valor').AsFloat := f_valor;
      QryAtualizaValorComponente.ExecSQL;


   finally
      FreeAndNil(QryLocalizaComponentes);
      FreeAndNil(QryAtualizaValorComponente);
   end;
end;

procedure TMComponente.sbGravarClick(Sender: TObject);
begin
  inherited;
   procTotalizaManutencao;
end;

end.
