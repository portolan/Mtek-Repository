unit UM_ManutencaoBen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UManuPadrao, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, udmControlePatrimonial, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, DB, UM_Componente, IBX.IBQuery, dm000;

type
  TM_Manutencao = class(TxManuPadrao)
    Label1: TLabel;
    DBMAN_EMPRESA: TDBEdit;
    Label2: TLabel;
    DBCODIGO: TDBEdit;
    Label3: TLabel;
    DBMAN_BEN: TDBEdit;
    Label4: TLabel;
    DBMAN_DESCRICAO: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label5: TLabel;
    DBMAN_VLR_COMPONENTE: TDBEdit;
    Label6: TLabel;
    DBMAN_VLR_MANUTENCAO: TDBEdit;
    Label7: TLabel;
    DBMAN_VLR_TOTAL: TDBEdit;
    Label8: TLabel;
    DBMAN_NUM_SERIE: TDBEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    DBMemo1: TDBMemo;
    procedure sbNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure DBMAN_VLR_MANUTENCAOExit(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure sbRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procTotalizaManutencao;
    procedure procSelect;
  end;

var
  M_Manutencao: TM_Manutencao;

implementation

{$R *.dfm}

procedure TM_Manutencao.DBMAN_VLR_MANUTENCAOExit(Sender: TObject);
begin
  inherited;
   procTotalizaManutencao;
end;

procedure TM_Manutencao.FormShow(Sender: TObject);
begin
  procTotalizaManutencao;
  procSelect;
  inherited;
end;

procedure TM_Manutencao.procSelect;
begin
   inherited;
   DMControlePatrimonial.Componente.Close;
   DMControlePatrimonial.Componente.SQL.Text := 'SELECT *                              ' +
                                                '  FROM COMPONENTE A                   ' +
                                                ' WHERE A.COM_EMPRESA = :EMPRESA AND   ' +
                                                '       A.COM_MANUTENCAO = :MANUTENCAO ' ;
   DMControlePatrimonial.Componente.ParamByName('empresa').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
   DMControlePatrimonial.Componente.ParamByName('MANUTENCAO').asinteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.asinteger;
   DMControlePatrimonial.Componente.Open;

end;

procedure TM_Manutencao.procTotalizaManutencao;
var
   QryLocalizaComponentes     : tibquery;
   QryAtualizaValorComponente : tibquery;
   F_VLR_MANUTENCAO           : double;
   F_VLR_COMPONENTE           : double;
   F_MAN_VLR_TOTAL            : double;
begin
   try
      QryLocalizaComponentes := dmBanco.funcCriaQuery;
      QryAtualizaValorComponente := dmBanco.funcCriaQuery;

      QryLocalizaComponentes.Close;
      QryLocalizaComponentes.SQL.Clear;
      QryLocalizaComponentes.SQL.Text :=  'SELECT SUM(A.COM_VLR_TOTAL) AS VALOR      ' +
                                          '  FROM COMPONENTE A                       ' +
                                          ' WHERE A.COM_EMPRESA = :EMPRESA AND       ' +
                                          '       A.COM_MANUTENCAO = :MANUTENCAO     ' ;
      QryLocalizaComponentes.ParamByName('empresa').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      QryLocalizaComponentes.ParamByName('manutencao').AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      QryLocalizaComponentes.Open;

      if QryLocalizaComponentes.IsEmpty then
         F_VLR_COMPONENTE := 0
      else
         F_VLR_COMPONENTE := QryLocalizaComponentes.FieldByName('VALOR').asfloat;


      if DBMAN_VLR_MANUTENCAO.Text = EmptyStr then
         F_VLR_MANUTENCAO := 0
      else
         F_VLR_MANUTENCAO := strtofloat(DBMAN_VLR_MANUTENCAO.Text);

      F_MAN_VLR_TOTAL := F_VLR_MANUTENCAO + F_VLR_COMPONENTE;

      DBMAN_VLR_COMPONENTE.Text := floattostr(F_VLR_COMPONENTE);
      DBMAN_VLR_TOTAL.Text := floattostr(F_MAN_VLR_TOTAL);

   finally
      FreeAndNil(QryLocalizaComponentes);
   end;
end;

procedure TM_Manutencao.sbAlterarClick(Sender: TObject);
begin
 if DMControlePatrimonial.Manutencao.State in [dsEdit, dsInsert]  then
   begin
      DMControlePatrimonial.Manutencao.Post;
      DMControlePatrimonial.BenImobilizado.Edit;
   end;

   if not (DMControlePatrimonial.Componente.Active) then
         DMControlePatrimonial.Componente.Open;

   DMControlePatrimonial.Componente.edit;

   MComponente := TMComponente.Create(Self);
   try
      MComponente.QryPadrao := DMControlePatrimonial.Componente;
      MComponente.b_finalizaTransacao := false;
      MComponente.ShowModal;
   finally
      FreeAndNil(MComponente);
      procTotalizaManutencao;
   end;
end;

procedure TM_Manutencao.sbGravarClick(Sender: TObject);
begin
   procTotalizaManutencao;
   inherited;
end;

procedure TM_Manutencao.sbNovoClick(Sender: TObject);
begin

   DMControlePatrimonial.VerificaCamposRequisidos(DMControlePatrimonial.Manutencao);
   if DMControlePatrimonial.Manutencao.State in [dsEdit, dsInsert]  then
   begin
      DMControlePatrimonial.Manutencao.Post;
      DMControlePatrimonial.Manutencao.Edit;
   end;

   if not (DMControlePatrimonial.Componente.Active) then
         DMControlePatrimonial.Componente.Open;

   DMControlePatrimonial.Componente.INSERT;

   MComponente := TMComponente.Create(Self);
   try
      MComponente.QryPadrao := DMControlePatrimonial.Componente;
      MComponente.b_finalizaTransacao := false;

      DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      DMControlePatrimonial.ComponenteCOM_MANUTENCAO.AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      DMControlePatrimonial.ComponenteCOM_VLR_COMPONENTE.AsFloat := 0;
      MComponente.ShowModal;
   finally
      FreeAndNil(MComponente);
      procTotalizaManutencao;
   end;
end;

procedure TM_Manutencao.sbRemoverClick(Sender: TObject);
var
   qryDin         : TIBQuery;
   QryDeletaIten  : TIBQuery;

begin
   qryDin           := dmBanco.funcCriaQuery;
   QryDeletaIten    := dmBanco.funcCriaQuery;
   try

     qryDin.Close;
     qryDin.SQL.Text := 'DELETE FROM ESTOQ_MOVIMENTO A     ' +
                        'WHERE A.EM_EMPRESA = :EMPRESA AND ' +
                        '      A.EM_CODIGO = :CODIGO       ' ;
     qryDin.ParamByName('Empresa').asinteger := DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger;
     qryDin.ParamByName('CODIGO').asinteger := DMControlePatrimonial.ComponenteCOM_MOV_ESTOQUE.asinteger;
     qryDin.open;

     QryDeletaIten.Close;
     QryDeletaIten.SQL.Clear;
     QryDeletaIten.SQL.text := 'DELETE FROM COMPONENTE A                  ' +
                               'WHERE A.COM_EMPRESA = :EMPRESA AND        ' +
                               '      A.COM_MANUTENCAO = :MANUTENCAO AND  ' +
                               '      A.COM_CODIGO = :COMPONENTE          ' ;
     QryDeletaIten.ParamByName('EMPRESA').AsInteger := DMControlePatrimonial.ComponenteCOM_EMPRESA.AsInteger;
     QryDeletaIten.ParamByName('MANUTENCAO').AsInteger := DMControlePatrimonial.ComponenteCOM_MANUTENCAO.AsInteger;
     QryDeletaIten.ParamByName('COMPONENTE').asstring := DMControlePatrimonial.ComponenteCOM_CODIGO.asstring;
     QryDeletaIten.open;

     procSelect;

   except on E: Exception do
        raise Exception.Create('Erro ao Excluir Movimentação do Componente!');
   end;
end;

end.
