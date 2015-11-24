unit UM_BensImobilizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids, UP_EstadoConservacao, UP_Localizacao, HP_VALORDEPRECIACAO,
  UM_ManutencaoBen, UP_TipoBens;

type
  TMBensImobilizados = class(TxManuPadrao)
    BensImobilizados: TPageControl;
    C_BensImobilizados: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dbBNI_EMPRESA: TDBEdit;
    Label2: TLabel;
    dbBNI_CODIGO: TDBEdit;
    Label5: TLabel;
    dbBNI_FORNECEDOR: TDBEdit;
    Label6: TLabel;
    dbBNI_DESCRICAO: TDBEdit;
    dbDESCRICAO_FORNECEDOR: TEdit;
    Label9: TLabel;
    DBBNI_ESTADO_CONSERVACAO: TDBEdit;
    DBBNI_ESTADO_CONSERVACAO_DESCRICAO: TEdit;
    Label11: TLabel;
    dbBNI_VLR_AQUISICAO: TDBEdit;
    Label12: TLabel;
    dbBNI_VLR_AGREGADO: TDBEdit;
    Label13: TLabel;
    dbBNI_VLR_ATUAL: TDBEdit;
    Label14: TLabel;
    dbBNI_DEPRECIACAO: TDBEdit;
    rdStatus: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    dbBNI_NR_NOTA: TDBEdit;
    Label10: TLabel;
    dbBNI_DATA_AQUISICAO: TDBEdit;
    Label3: TLabel;
    dbBNI_NUM_SERIE: TDBEdit;
    Label7: TLabel;
    dbBNI_TIPO: TDBEdit;
    dbBNI_TIPO_DESCRICAO: TEdit;
    Label8: TLabel;
    dbBNI_LOCALIZACAO: TDBEdit;
    dbBNI_LOCALIZACAO_DESCRICAO: TEdit;
    Manutencão: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
    Label15: TLabel;
    dbBNI_VLR_RESIDUAL: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure sbNovoClick(Sender: TObject);
    procedure DBBNI_ESTADO_CONSERVACAOExit(Sender: TObject);
    procedure dbBNI_LOCALIZACAOExit(Sender: TObject);
    procedure dbBNI_NUM_SERIEExit(Sender: TObject);
    procedure dbBNI_DEPRECIACAOExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbBNI_TIPOExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure SelecionaProdutosNota;
    function ProcVerificaDados :boolean;
    procedure ProcTotalizaAgregado;
    procedure ProcTotalizaBen;
  public
    { Public declarations }
  end;

var
  MBensImobilizados: TMBensImobilizados;

implementation

{$R *.dfm}

uses udmControlePatrimonial, dm000, UP_empresa, UDM_contabil, UP_Pessoa,
  UDM_PedCompra, UP_NotaBemImobilizado;

procedure TMBensImobilizados.dbBNI_DEPRECIACAOExit(Sender: TObject);
var
   f_percentual : double;
begin
  inherited;
  if dbBNI_DEPRECIACAO.Text <> EmptyStr then
      f_percentual := strtofloat(dbBNI_DEPRECIACAO.Text)
  else
  begin
     showmessage('Por Favor informe o percentual de Depreciação!');

      if dbBNI_DEPRECIACAO.CanFocus then
         dbBNI_DEPRECIACAO.SetFocus
  end;


   if (f_percentual > 100) or (f_percentual < 0)then
   begin
      showmessage('Atenção, Percentual Invalido, Informe dados entre 0 e 100 %');

      if dbBNI_DEPRECIACAO.CanFocus then
         dbBNI_DEPRECIACAO.SetFocus
   end;

end;

procedure TMBensImobilizados.DBBNI_ESTADO_CONSERVACAOExit(Sender: TObject);
var
   QrySelecionaEstado : TIBQuery;
   b_achou            : boolean;
begin
  inherited;
   b_achou := false;

  if DBBNI_ESTADO_CONSERVACAO.Text <> EmptyStr then
  begin

     QrySelecionaEstado := dmBanco.funcCriaQuery;
     try
        QrySelecionaEstado.Close;
        QrySelecionaEstado.SQL.Clear;
        QrySelecionaEstado.SQL.Text := 'SELECT * FROM ESTADO_DE_CONSERVACAO A WHERE A.EDC_CODIGO = :CODIGO';
        QrySelecionaEstado.ParamByName('codigo').AsInteger := strtoint(DBBNI_ESTADO_CONSERVACAO.Text);
        QrySelecionaEstado.Open;

        if not (QrySelecionaEstado.IsEmpty) then
        begin
           DBBNI_ESTADO_CONSERVACAO_DESCRICAO.Text := QrySelecionaEstado.FieldByName('EDC_DESCRICAO').AsString;
           b_achou := true;
        end;

     finally
        FreeAndNil(QrySelecionaEstado);
     end;
  end;



  if (b_achou = false) or (DBBNI_ESTADO_CONSERVACAO.text = emptystr) then
  begin
     P_EstadoConservacao := TP_EstadoConservacao.Create(Self);
     try
       P_EstadoConservacao.ShowModal;
     finally
        DBBNI_ESTADO_CONSERVACAO.Text := DMControlePatrimonial.EstadoConservacaoEDC_CODIGO.AsString;
        DBBNI_ESTADO_CONSERVACAO_DESCRICAO.Text := DMControlePatrimonial.EstadoConservacaoEDC_DESCRICAO.AsString;
        FreeAndNil(P_EstadoConservacao);
     end;
  end;
end;

procedure TMBensImobilizados.dbBNI_LOCALIZACAOExit(Sender: TObject);
var
   QrySelecionaLocalizacao : TIBQuery;
   b_achou                : boolean;
begin
  inherited;
  b_achou:= false;

  if dbBNI_LOCALIZACAO.Text <> EmptyStr then
  begin

     QrySelecionaLocalizacao := dmBanco.funcCriaQuery;
     try
        QrySelecionaLocalizacao.Close;
        QrySelecionaLocalizacao.SQL.Clear;
        QrySelecionaLocalizacao.SQL.Text := 'SELECT * FROM LOCALIZACAO A WHERE A.LOC_CODIGO = :CODIGO';
        QrySelecionaLocalizacao.ParamByName('codigo').AsInteger := strtoint(dbBNI_LOCALIZACAO.Text);
        QrySelecionaLocalizacao.Open;

        if not (QrySelecionaLocalizacao.IsEmpty) then
        begin
           dbBNI_LOCALIZACAO_DESCRICAO.Text := QrySelecionaLocalizacao.FieldByName('LOC_DESCRICAO').AsString;
           b_achou := true;
        end;

     finally
        FreeAndNil(QrySelecionaLocalizacao);
     end;
  end;

  if (b_achou = false) or (dbBNI_LOCALIZACAO.text = emptystr) then
  begin
     PLocalizacao := TPLocalizacao.Create(Self);
     try
       PLocalizacao.ShowModal;
     finally
        dbBNI_LOCALIZACAO.Text := DMControlePatrimonial.LocalizacaoLOC_CODIGO.AsString;
        dbBNI_LOCALIZACAO_DESCRICAO.Text := DMControlePatrimonial.LocalizacaoLOC_DESCRICAO.AsString;
        FreeAndNil(PLocalizacao);
     end;
  end;
end;

procedure TMBensImobilizados.dbBNI_NUM_SERIEExit(Sender: TObject);
var
   QryVerificaNumeroDeSerie : TIBQuery;
begin
  inherited;
  try
     QryVerificaNumeroDeSerie :=  dmBanco.funcCriaQuery;

     QryVerificaNumeroDeSerie.Close;
     QryVerificaNumeroDeSerie.SQL.Clear;
     QryVerificaNumeroDeSerie.SQL.Text := 'SELECT A.BNI_EMPRESA,                 ' +
                                          '       A.BNI_CODIGO,                  ' +
                                          '       A.BNI_NUM_SERIE,               ' +
                                          '       A.BNI_NR_NOTA                  ' +
                                          '  FROM BENS_IMOBILIZADOS A            ' +
                                          ' WHERE A.BNI_EMPRESA = :EMPRESA AND   ' +
                                          '       A.BNI_NUM_SERIE = :NUMERO      ' ;
     QryVerificaNumeroDeSerie.ParamByName('empresa').asstring   := dbBNI_EMPRESA.text;
     QryVerificaNumeroDeSerie.ParamByName('NUMERO').asstring    := dbBNI_NUM_SERIE.Text;
     QryVerificaNumeroDeSerie.Open;

     if not (QryVerificaNumeroDeSerie.IsEmpty) then
     begin
        showmessage('Número de série Invalido!!' + slinebreak +
                    'Número de série já se encontra informado no ben imobilizado, Empresa: '
                     + QryVerificaNumeroDeSerie.FieldByName('BNI_EMPRESA').asstring + ' Produto: ' +
                     QryVerificaNumeroDeSerie.FieldByName('BNI_CODIGO').asstring + ' Nr. Nota: ' +
                     QryVerificaNumeroDeSerie.FieldByName('BNI_NR_NOTA').asstring);

        if dbBNI_NUM_SERIE.CanFocus then
           dbBNI_NUM_SERIE.SetFocus;

        exit;
     end;

  finally
     FreeAndNil(QryVerificaNumeroDeSerie);
  end;

end;

procedure TMBensImobilizados.dbBNI_TIPOExit(Sender: TObject);
var
   QrySelecionaTipo : TIBQuery;
   b_achou            : boolean;
begin
  inherited;
   b_achou := false;

  if dbBNI_TIPO.Text <> EmptyStr then
  begin

     QrySelecionaTipo := dmBanco.funcCriaQuery;
     try
        QrySelecionaTipo.Close;
        QrySelecionaTipo.SQL.Clear;
        QrySelecionaTipo.SQL.Text := 'SELECT * FROM TIPO_DE_BENS A WHERE A.TPB_CODIGO = :CODIGO';
        QrySelecionaTipo.ParamByName('codigo').AsInteger := strtoint(dbBNI_TIPO.Text);
        QrySelecionaTipo.Open;

        if not (QrySelecionaTipo.IsEmpty) then
        begin
           dbBNI_TIPO.Text           := QrySelecionaTipo.FieldByName('TPB_CODIGO').AsString;
           dbBNI_TIPO_DESCRICAO.Text := QrySelecionaTipo.FieldByName('EDC_DESCRICAO').AsString;
           b_achou := true;
        end;

     finally
        FreeAndNil(QrySelecionaTipo);
     end;
  end;

  if (b_achou = false) or (dbBNI_TIPO.text = emptystr) then
  begin
     P_TipoBens := TP_TipoBens.Create(Self);
     try
       P_TipoBens.ShowModal;
     finally
        dbBNI_TIPO.Text := DMControlePatrimonial.TipoBensTPB_CODIGO.AsString;
        dbBNI_TIPO_DESCRICAO.Text := DMControlePatrimonial.TipoBensTPB_DESCRICAO.AsString;
        FreeAndNil(P_TipoBens);
     end;
  end;
end;

procedure TMBensImobilizados.FormShow(Sender: TObject);
begin
  inherited;
   ProcTotalizaAgregado;
   ProcTotalizaBen;

end;

procedure TMBensImobilizados.ProcTotalizaAgregado;
var
   QryTotalizaAgregado : TIBQuery;
   f_valor             : double;
begin
   try
      QryTotalizaAgregado := dmBanco.funcCriaQuery;

      QryTotalizaAgregado.Close;
      QryTotalizaAgregado.SQL.Clear;
      QryTotalizaAgregado.SQL.Text :=  'SELECT SUM(A.MAN_VLR_TOTAL) as valor  ' +
                                       '  FROM MANUTENCAO A                   ' +
                                       ' WHERE A.MAN_EMPRESA = :EMPRESA AND   ' +
                                       '       A.MAN_BEN = :BENS AND          ' +
                                       '       A.MAN_AGREGA_CUSTO = ''S''     ' ;
      QryTotalizaAgregado.ParamByName('empresa').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsInteger;
      QryTotalizaAgregado.ParamByName('BENS').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.AsInteger;
      QryTotalizaAgregado.open;

      if QryTotalizaAgregado.IsEmpty then
         f_valor := 0
      else
         f_valor := QryTotalizaAgregado.FieldByName('valor').AsFloat;

      DMControlePatrimonial.BenImobilizadoBNI_VLR_AGREGADO.AsFloat := f_valor;

   finally
    FreeAndNil(QryTotalizaAgregado);
   end;

end;

procedure TMBensImobilizados.ProcTotalizaBen;
var
   f_valor : double;
begin
   f_valor := DMControlePatrimonial.BenImobilizadoBNI_VLR_AQUISICAO.AsFloat - DMControlePatrimonial.BenImobilizadoBNI_VLR_RESIDUAL.asfloat + DMControlePatrimonial.BenImobilizadoBNI_VLR_AGREGADO.asfloat;

   DMControlePatrimonial.BenImobilizadoBNI_VLR_ATUAL.AsFloat := f_valor;
end;

function TMBensImobilizados.ProcVerificaDados: boolean;
var
   sl_Campos : TStringList;

begin
   try
      sl_Campos := TStringList.Create();



   finally
      FreeAndNil(sl_Campos);

   end;
end;

procedure TMBensImobilizados.sbGravarClick(Sender: TObject);
begin
  ProcTotalizaAgregado;
  ProcTotalizaBen;
  inherited;
end;

procedure TMBensImobilizados.sbNovoClick(Sender: TObject);
begin
  inherited;

   DMControlePatrimonial.VerificaCamposRequisidos(DMControlePatrimonial.BenImobilizado);
   if DMControlePatrimonial.BenImobilizado.State in [dsEdit, dsInsert]  then
   begin
      DMControlePatrimonial.BenImobilizado.Post;
      DMControlePatrimonial.BenImobilizado.Edit;
   end;


    M_Manutencao := TM_Manutencao.Create(Self);
   try
      M_Manutencao.ShowModal;
      DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsString := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsString;
      DMControlePatrimonial.ManutencaoMAN_BEN.AsString := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.AsString;
      DMControlePatrimonial.ManutencaoMAN_DESCRICAO.AsString := DMControlePatrimonial.BenImobilizadoBNI_DESCRICAO.AsString;
      DMControlePatrimonial.ManutencaoMAN_NUM_SERIE.AsString := DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.AsString;
   finally
      FreeAndNil(M_Manutencao);
   end;

end;

procedure TMBensImobilizados.SelecionaProdutosNota;
begin

end;

procedure TMBensImobilizados.SpeedButton1Click(Sender: TObject);
begin
  inherited;
   H_FormaCalcDep := TH_FormaCalcDep.Create(Self);
   try
     H_FormaCalcDep.ShowModal;
   finally
      FreeAndNil(H_FormaCalcDep);
   end;
end;

end.
