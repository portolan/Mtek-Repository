unit UM_BensImobilizados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids, UP_EstadoConservacao, UP_Localizacao, HP_VALORDEPRECIACAO, DB,
  UM_ManutencaoBen, UP_TipoBens, dateutils;

type
  TMBensImobilizados = class(TxManuPadrao)
    BensImobilizados: TPageControl;
    C_BensImobilizados: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBBNI_EMPRESA: TDBEdit;
    Label5: TLabel;
    DBBNI_FORNECEDOR: TDBEdit;
    Label6: TLabel;
    DBBNI_DESCRICAO: TDBEdit;
    DBDESCRICAO_FORNECEDOR: TEdit;
    Label9: TLabel;
    DBBNI_ESTADO_CONSERVACAO: TDBEdit;
    DBBNI_ESTADO_CONSERVACAO_DESCRICAO: TEdit;
    Label11: TLabel;
    DBBNI_VLR_AQUISICAO: TDBEdit;
    Label12: TLabel;
    DBBNI_VLR_AGREGADO: TDBEdit;
    Label13: TLabel;
    DBBNI_VLR_ATUAL: TDBEdit;
    Label14: TLabel;
    DBBNI_DEPRECIACAO: TDBEdit;
    rdStatus: TDBRadioGroup;
    Label4: TLabel;
    DBBNI_NR_NOTA: TDBEdit;
    Label10: TLabel;
    DBBNI_DATA_AQUISICAO: TDBEdit;
    Label3: TLabel;
    DBBNI_NUM_SERIE: TDBEdit;
    Label7: TLabel;
    DBBNI_TIPO: TDBEdit;
    DBBNI_TIPO_DESCRICAO: TEdit;
    Label8: TLabel;
    DBBNI_LOCALIZACAO: TDBEdit;
    DBBNI_LOCALIZACAO_DESCRICAO: TEdit;
    Manutencão: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    p: TSpeedButton;
    Label15: TLabel;
    DBBNI_VLR_RESIDUAL: TDBEdit;
    SB_Help: TSpeedButton;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    LBPERCENTUAL: TLabel;
    SBAtualizaDepreciacao: TSpeedButton;
    Label2: TLabel;
    DBBNI_CODIGO: TDBEdit;
    DBVALORBASE: TEdit;
    Label16: TLabel;
    procedure pClick(Sender: TObject);
    procedure DBBNI_NUM_SERIEExit(Sender: TObject);
    procedure DBBNI_DEPRECIACAOExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBBNI_FORNECEDORExit(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure DBBNI_ESTADO_CONSERVACAOExit(Sender: TObject);
    procedure DBBNI_TIPOExit(Sender: TObject);
    procedure DBBNI_LOCALIZACAOExit(Sender: TObject);
    procedure DBBNI_VLR_RESIDUALExit(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure SBAtualizaDepreciacaoClick(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbRemoverClick(Sender: TObject);
  private
    { Private declarations }

    procedure ProcExitEstadoConservacao;
    procedure ProcExitLocalizacao;
    procedure ProcExitTipo;
    Procedure ProcAlimentaDescricoes;

    procedure ProcTotalizaBen;
    procedure procselect;
    Function FuncExtrairDatas: integer;
    procedure ProcAtualizaTempos;
  public

    { Public declarations }
     Procedure ProcAtualizaDepreciacao;
  end;

var
  MBensImobilizados: TMBensImobilizados;

implementation

{$R *.dfm}

uses udmControlePatrimonial, dm000, UP_empresa, UDM_contabil, UP_Pessoa,
  UDM_PedCompra, UP_NotaBemImobilizado;

procedure TMBensImobilizados.DBBNI_DEPRECIACAOExit(Sender: TObject);
var
   f_percentual : double;
begin
  inherited;
  if dbBNI_DEPRECIACAO.Text <> EmptyStr then
      f_percentual := strtofloat(dbBNI_DEPRECIACAO.Text)
  else
  begin
     raise Exception.Create('Atenção! Percentual de depreciação não informado, Por Favor informe o percentual de Depreciação!');

      if dbBNI_DEPRECIACAO.CanFocus then
         dbBNI_DEPRECIACAO.SetFocus
  end;


   if (f_percentual > 100) or (f_percentual < 0)then
   begin
     raise Exception.Create('Atenção! Percentual Invalido, Informe dados entre 0 e 100 %');

      if dbBNI_DEPRECIACAO.CanFocus then
         dbBNI_DEPRECIACAO.SetFocus
   end;

   ProcTotalizaBen;

end;

procedure TMBensImobilizados.DBBNI_ESTADO_CONSERVACAOExit(Sender: TObject);
begin
  inherited;
   ProcExitEstadoConservacao;
end;

procedure TMBensImobilizados.DBBNI_FORNECEDORExit(Sender: TObject);
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

procedure TMBensImobilizados.DBBNI_LOCALIZACAOExit(Sender: TObject);
begin
  inherited;
   ProcExitLocalizacao;
end;

procedure TMBensImobilizados.DBBNI_NUM_SERIEExit(Sender: TObject);
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

     if (QryVerificaNumeroDeSerie.FieldByName('BNI_EMPRESA').AsInteger = DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.asinteger) and
        (QryVerificaNumeroDeSerie.FieldByName('BNI_CODIGO').AsInteger = DMControlePatrimonial.BenImobilizadoBNI_CODIGO.asinteger) and
        (QryVerificaNumeroDeSerie.FieldByName('BNI_NUM_SERIE').AsInteger = DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.asinteger) and
        (QryVerificaNumeroDeSerie.FieldByName('BNI_NR_NOTA').AsInteger = DMControlePatrimonial.BenImobilizadoBNI_NR_NOTA.asinteger) then
     exit;

     raise Exception.Create('Número de série Invalido!!' + slinebreak +
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

procedure TMBensImobilizados.DBBNI_TIPOExit(Sender: TObject);
begin
  inherited;
   ProcExitTipo;
end;

procedure TMBensImobilizados.DBBNI_VLR_RESIDUALExit(Sender: TObject);
begin
  inherited;
   ProcTotalizaBen;
end;

procedure TMBensImobilizados.FormCreate(Sender: TObject);
begin
  inherited;
   BensImobilizados.ActivePage := C_BensImobilizados;
end;

procedure TMBensImobilizados.FormShow(Sender: TObject);
begin
  inherited;
  if DMControlePatrimonial.BenImobilizado.State in [dsEdit] then
      ProcAlimentaDescricoes;
   ProcTotalizaBen;
   ProcAtualizaDepreciacao;
   procselect;

end;

function TMBensImobilizados.FuncExtrairDatas: integer;
var
   D_DtaAquisicao :TDateTime;
   D_DtaAtual     :TDateTime;
   D_Meses        : integer;
begin

   D_DtaAquisicao := StrToDate(DBBNI_DATA_AQUISICAO.Text);
   D_DtaAtual     := Now;
   D_Meses        := MonthsBetween( D_DtaAquisicao, D_DtaAtual);

   result := D_Meses;
end;

procedure TMBensImobilizados.ProcAlimentaDescricoes;
var
   QryLocProduto           : TibQuery;
   QryLocFornecedor        : TibQuery;
   QryLocEstadoConservacao : TibQuery;
   QryLocTipo              : TibQuery;
   QrylocLocalizacao       : TIBQuery;

begin

   QryLocProduto  := dmBanco.funcCriaQuery;
   try
      QryLocProduto.Close;
      QryLocProduto.SQL.Clear;
      QryLocProduto.SQL.Text :=  'SELECT A.PRO_DESCRICAO               ' +
                                 '  FROM PRODUTOS A                    ' +
                                 ' WHERE A.PRO_EMPRESA = :EMPRESA AND  ' +
                                 '       A.PRO_CODIGO = :CODIGO        ' ;
      QryLocProduto.ParamByName('EMPRESA').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsInteger;
      QryLocProduto.ParamByName('CODIGO').asstring := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.asstring;
      QryLocProduto.Open;

      dbBNI_DESCRICAO.Text := QryLocProduto.FieldByName('PRO_DESCRICAO').AsString;
   finally
      FreeAndNil(QryLocProduto);
   end;

   QryLocFornecedor := dmBanco.funcCriaQuery;
   try

      QryLocFornecedor.Close;
      QryLocFornecedor.SQL.Clear;
      QryLocFornecedor.SQL.Text :=  'SELECT A.PESS_NOME             ' +
                                    '  FROM PESSOAS A               ' +
                                    ' WHERE A.PESS_CODIGO = :CODIGO ' ;
      QryLocFornecedor.ParamByName('codigo').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_FORNECEDOR.AsInteger;
      QryLocFornecedor.Open;

      dbDESCRICAO_FORNECEDOR.Text :=  QryLocFornecedor.FieldByName('PESS_NOME').AsString;

   finally
      FreeAndNil(QryLocFornecedor);
   end;

   QryLocEstadoConservacao := dmBanco.funcCriaQuery;
   try

      QryLocEstadoConservacao.Close;
      QryLocEstadoConservacao.SQL.Clear;
      QryLocEstadoConservacao.SQL.Text := 'SELECT A.EDC_DESCRICAO          ' +
                                          '  FROM ESTADO_DE_CONSERVACAO A  ' +
                                          ' WHERE A.EDC_CODIGO = :CODIGO   ' ;
      QryLocEstadoConservacao.ParamByName('codigo').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_ESTADO_CONSERVACAO.AsInteger;
      QryLocEstadoConservacao.Open;

      DBBNI_ESTADO_CONSERVACAO_DESCRICAO.Text := QryLocEstadoConservacao.FieldByName('EDC_DESCRICAO').AsString;
   finally
      FreeAndNil(QryLocEstadoConservacao);
   end;

   QryLocTipo   := dmBanco.funcCriaQuery;
   try

      QryLocTipo.Close;
      QryLocTipo.SQL.Clear;
      QryLocTipo.SQL.Text :=  'SELECT A.TPB_DESCRICAO        ' +
                              '  FROM TIPO_DE_BENS A         ' +
                              ' WHERE A.TPB_CODIGO = :CODIGO ' ;
      QryLocTipo.ParamByName('codigo').AsInteger  := DMControlePatrimonial.BenImobilizadoBNI_TIPO.AsInteger;
      QryLocTipo.Open;

      dbBNI_TIPO_DESCRICAO.Text := QryLocTipo.FieldByName('TPB_DESCRICAO').AsString;

   finally
      FreeAndNil(QryLocTipo);
   end;

   QrylocLocalizacao := dmBanco.funcCriaQuery;
   try

      QrylocLocalizacao.Close;
      QrylocLocalizacao.SQL.Clear;
      QrylocLocalizacao.SQL.Text := 'SELECT A.LOC_DESCRICAO        ' +
                                    '  FROM LOCALIZACAO A          ' +
                                    ' WHERE A.LOC_CODIGO = :CODIGO ' ;
      QrylocLocalizacao.ParamByName('codigo').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_LOCALIZACAO.AsInteger;
      QrylocLocalizacao.Open;

      dbBNI_LOCALIZACAO_DESCRICAO.Text := QrylocLocalizacao.FieldByName('LOC_DESCRICAO').AsString;
   finally
      FreeAndNil(QrylocLocalizacao);
   end;
end;

procedure TMBensImobilizados.ProcAtualizaDepreciacao;
var
   F_VlrAquisicao, F_VlrResidual, F_VlrAgregado, F_PercDepreciacao, F_DepreciacaoMensal, F_BaseDepreciar: double;
   F_VlrAnual, F_VlrMensal :double;
   I_DiferencaMeses : integer;
begin

   F_VlrAquisicao := strtofloat(DBBNI_VLR_AQUISICAO.text);
   F_VlrResidual := strtofloat(DBBNI_VLR_RESIDUAL.Text);
   F_VlrAgregado := strtofloat(DBBNI_VLR_AGREGADO.Text);
   F_PercDepreciacao := strtofloat(DBBNI_DEPRECIACAO.text);

    // recupera o valor a ser considerado na depreciação
  F_BaseDepreciar := (F_VlrAquisicao + F_VlrAgregado) - F_VlrResidual;
  // valor de perda anual do item
  F_VlrAnual := (F_BaseDepreciar * F_PercDepreciacao) / 100;
  // Valor mensal de depreciacao
  F_VlrMensal := F_VlrAnual / 12;

  I_DiferencaMeses := FuncExtrairDatas;

  DBVALORBASE.text := formatfloat( '0.00', F_BaseDepreciar);

  if I_DiferencaMeses = 0 then
     DBBNI_VLR_ATUAL.text := formatfloat('0.00' ,F_BaseDepreciar)
  else
     DBBNI_VLR_ATUAL.text := formatfloat ( '0.00' ,abs((I_DiferencaMeses * F_VlrMensal) - F_BaseDepreciar ));

end;

procedure TMBensImobilizados.ProcAtualizaTempos;
var
   F_VlrAquisicao, F_VlrResidual, F_VlrAgregado, F_PercDepreciacao, F_DepreciacaoMensal, F_BaseDepreciar: double;
   F_VlrAnual, F_VlrMensal :double;
   I_TempoDepreciacao : integer;
   i_TempoResidual    : integer;
begin

   F_VlrAquisicao := strtofloat(DBBNI_VLR_AQUISICAO.text);
   F_VlrResidual := strtofloat(DBBNI_VLR_RESIDUAL.Text);
   F_VlrAgregado := strtofloat(DBBNI_VLR_AGREGADO.Text);
   F_PercDepreciacao := strtofloat(DBBNI_DEPRECIACAO.text);

    // recupera o valor a ser considerado na depreciação
  F_BaseDepreciar := (F_VlrAquisicao + F_VlrAgregado) - F_VlrResidual;
  // valor de perda anual do item
  F_VlrAnual := (F_BaseDepreciar * F_PercDepreciacao) / 100;

  if (F_BaseDepreciar > 0) and (F_VlrAnual > 0) then
  begin
     I_TempoDepreciacao := trunc(F_BaseDepreciar / F_VlrAnual);
  end
  else
     I_TempoDepreciacao := 0;

  if (F_VlrResidual > 0) and (F_PercDepreciacao > 0) then
  begin
     I_TempoResidual    := trunc(F_VlrResidual * (F_VlrResidual / F_PercDepreciacao));
  end
  else
     I_TempoResidual := 0;

  DMControlePatrimonial.BenImobilizadoBNI_TEMPO_DEPRECIACAO.AsInteger  := I_TempoDepreciacao;
  DMControlePatrimonial.BenImobilizadoBNI_TEMPO_RESIDUAL.AsInteger     := I_TempoResidual;

end;

procedure TMBensImobilizados.ProcExitEstadoConservacao;
var
   QryVerificaEstado : TIBQuery;
   b_achou           : boolean;
begin
  b_achou := false;

  if DBBNI_ESTADO_CONSERVACAO.text <> EmptyStr  then
  begin

     QryVerificaEstado := dmBanco.funcCriaQuery;
     try
        QryVerificaEstado.Close;
        QryVerificaEstado.SQL.Clear;
        QryVerificaEstado.SQL.Text := 'SELECT *                        ' +
                                      '  FROM ESTADO_DE_CONSERVACAO A  ' +
                                      ' WHERE A.EDC_CODIGO = :CODIGO   ' ;
        QryVerificaEstado.ParamByName('CODIGO').AsInteger := STRTOINT(DBBNI_ESTADO_CONSERVACAO.Text);
        QryVerificaEstado.Open;

        if not(QryVerificaEstado.IsEmpty) then
        begin
           DBBNI_ESTADO_CONSERVACAO_DESCRICAO.Text := QryVerificaEstado.FieldByName('EDC_DESCRICAO').asstring;
           b_achou := TRUE;
        end
        else
           b_achou := false;

     finally
        FreeAndNil(QryVerificaEstado);
     end;
  end;

  if (b_achou = false) or (DBBNI_ESTADO_CONSERVACAO.text = Emptystr) then
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

procedure TMBensImobilizados.ProcExitLocalizacao;
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

procedure TMBensImobilizados.ProcExitTipo;
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
           dbBNI_TIPO_DESCRICAO.Text := QrySelecionaTipo.FieldByName('TPB_DESCRICAO').AsString;
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

procedure TMBensImobilizados.procselect;
begin
   inherited;
   DMControlePatrimonial.Manutencao.Close;
   DMControlePatrimonial.Manutencao.SQL.Text := 'SELECT *                            ' +
                                                '  FROM MANUTENCAO A                 ' +
                                                ' WHERE A.MAN_EMPRESA = :EMPRESA AND ' +
                                                '       A.MAN_BEN = :BEN             ' ;
   DMControlePatrimonial.Manutencao.ParamByName('empresa').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsInteger;
   DMControlePatrimonial.Manutencao.ParamByName('ben').AsString := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.AsString;
   DMControlePatrimonial.Manutencao.Open;

end;

procedure TMBensImobilizados.ProcTotalizaBen;
var
   QryVerificaAgregado  : TIBQuery;
   F_VLR_AGREGADO       : double;
   F_VLR_ATUAL          : double;
   F_VLR_RESIDUAL       : double;

begin
   try
      QryVerificaAgregado := dmBanco.funcCriaQuery;

      QryVerificaAgregado.Close;
      QryVerificaAgregado.SQL.Clear;
      QryVerificaAgregado.SQL.Text :=  'SELECT SUM(A.MAN_VLR_TOTAL) AS VALOR   ' +
                                       '  FROM MANUTENCAO A                    ' +
                                       ' WHERE A.MAN_EMPRESA = :EMPRESA AND    ' +
                                       '       A.MAN_BEN = :BEN AND            ' +
                                       '       A.MAN_NUM_SERIE = :NUMSERIE AND ' +
                                       '       A.MAN_AGREGA_CUSTO = ''S''      ' ;
      QryVerificaAgregado.ParamByName('EMPRESA').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsInteger;
      QryVerificaAgregado.ParamByName('BEN').asstring := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.asstring;
      QryVerificaAgregado.ParamByName('NUMSERIE').AsInteger := DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.AsInteger;
      QryVerificaAgregado.Open;

      if QryVerificaAgregado.IsEmpty then
         F_VLR_AGREGADO := 0
      else
         F_VLR_AGREGADO := QryVerificaAgregado.FieldByName('VALOR').AsFloat;

      DBBNI_VLR_AGREGADO.Text := FLOATTOSTR(F_VLR_AGREGADO);

   finally
      FreeAndNil(QryVerificaAgregado);
   end;

end;

procedure TMBensImobilizados.sbAlterarClick(Sender: TObject);
begin
 if DMControlePatrimonial.BenImobilizado.State in [dsEdit, dsInsert]  then
   begin
      DMControlePatrimonial.BenImobilizado.Post;
      DMControlePatrimonial.BenImobilizado.Edit;
   end;

   if not (DMControlePatrimonial.Manutencao.Active) then
         DMControlePatrimonial.Manutencao.Open;

   DMControlePatrimonial.Manutencao.edit;

    M_Manutencao := TM_Manutencao.Create(Self);
   try
      M_Manutencao.QryPadrao := DMControlePatrimonial.Manutencao;
      M_Manutencao.b_finalizaTransacao := false;

      M_Manutencao.ShowModal;
   finally
      FreeAndNil(M_Manutencao);
      ProcTotalizaBen;
      ProcAtualizaDepreciacao;
   end;
end;

procedure TMBensImobilizados.sbGravarClick(Sender: TObject);
begin
   ProcTotalizaBen;
   ProcAtualizaTempos;
   inherited;
end;

procedure TMBensImobilizados.sbRemoverClick(Sender: TObject);
var
   qryExcluiManutencao           : TIBQuery;
   qryVerificapossuiCOmponente   : TIBQuery;
   b_PossuiComponente            : boolean;

begin
   b_PossuiComponente := false;
   qryVerificapossuiCOmponente := dmBanco.funcCriaQuery;
   try
      qryVerificapossuiCOmponente.close;
      qryVerificapossuiCOmponente.SQL.Clear;
      qryVerificapossuiCOmponente.SQL.Text := 'SELECT *                              ' +
                                              '  FROM COMPONENTE A                   ' +
                                              ' WHERE A.COM_EMPRESA = :EMPRESA AND   ' +
                                              '       A.COM_MANUTENCAO = :MANUTENCAO ' ;
      qryVerificapossuiCOmponente.ParamByName('EMPRESA').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      qryVerificapossuiCOmponente.ParamByName('MANUTENCAO').AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      qryVerificapossuiCOmponente.Open;

      if not (qryVerificapossuiCOmponente.IsEmpty) then
         b_PossuiComponente := true;

   finally
      FreeAndNil(qryVerificapossuiCOmponente);
   end;

   if not(b_PossuiComponente) then
   begin
      try
        qryExcluiManutencao           := dmBanco.funcCriaQuery;

        qryExcluiManutencao.Close;
        qryExcluiManutencao.SQL.Text :=   'DELETE FROM MANUTENCAO A              ' +
                                          'WHERE A.MAN_EMPRESA = :EMPRESA AND    ' +
                                          '      A.MAN_BEN = :BEN AND            ' +
                                          '      A.MAN_NUM_SERIE = :NUMEROSERIE  ' ;
        qryExcluiManutencao.ParamByName('EMPRESA').asinteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
        qryExcluiManutencao.ParamByName('BEN').asstring := DMControlePatrimonial.ManutencaoMAN_BEN.asstring;
        qryExcluiManutencao.ParamByName('NUMEROSERIE').asinteger := DMControlePatrimonial.ManutencaoMAN_NUM_SERIE.AsInteger;
        qryExcluiManutencao.open;

        procSelect;

      except on E: Exception do
           raise Exception.Create('Erro ao Excluir Manutenação do Ben Imobilizado!');
      end;
   end
   else
     raise Exception.Create('Atenção! Não Será possível Excluir a manutenção, o Mesmo possui componente!');

     procSelect;

end;

procedure TMBensImobilizados.SB_HelpClick(Sender: TObject);
begin

   H_FormaCalcDep := TH_FormaCalcDep.Create(Self);
   try
      H_FormaCalcDep.ShowModal;
   finally
      FreeAndNil(H_FormaCalcDep);
   end;
end;

procedure TMBensImobilizados.SBAtualizaDepreciacaoClick(Sender: TObject);
begin
   ProcAtualizaDepreciacao;
end;

procedure TMBensImobilizados.pClick(Sender: TObject);
begin

   if DMControlePatrimonial.BenImobilizado.State in [dsEdit, dsInsert]  then
   begin
      DMControlePatrimonial.BenImobilizado.Post;
      DMControlePatrimonial.BenImobilizado.Edit;
   end;

   if not (DMControlePatrimonial.Manutencao.Active) then
           DMControlePatrimonial.Manutencao.Open;

   DMControlePatrimonial.Manutencao.append;

    M_Manutencao := TM_Manutencao.Create(Self);
   try
      M_Manutencao.QryPadrao := DMControlePatrimonial.Manutencao;
      M_Manutencao.b_finalizaTransacao := false;

      DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsString := DMControlePatrimonial.BenImobilizadoBNI_EMPRESA.AsString;
      DMControlePatrimonial.ManutencaoMAN_BEN.AsString := DMControlePatrimonial.BenImobilizadoBNI_CODIGO.AsString;
      DMControlePatrimonial.ManutencaoMAN_DESCRICAO.AsString := DMControlePatrimonial.BenImobilizadoBNI_DESCRICAO.AsString;
      DMControlePatrimonial.ManutencaoMAN_NUM_SERIE.AsString := DMControlePatrimonial.BenImobilizadoBNI_NUM_SERIE.AsString;
      DMControlePatrimonial.ManutencaoMAN_VLR_TOTAL.asfloat := 0;
      DMControlePatrimonial.ManutencaoMAN_VLR_COMPONENTE.asfloat := 0;

      M_Manutencao.ShowModal;
   finally
      FreeAndNil(M_Manutencao);
      ProcTotalizaBen;
      ProcAtualizaDepreciacao;
   end;

end;

end.
