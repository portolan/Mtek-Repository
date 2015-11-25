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
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    sbRemover: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbNovo: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure sbNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure procTotalizaManutencao;
    procedure procTotaliza;
    procedure procSelect;
  end;

var
  M_Manutencao: TM_Manutencao;

implementation

{$R *.dfm}

procedure TM_Manutencao.FormCreate(Sender: TObject);
begin
  inherited;
   procTotalizaManutencao;
end;

procedure TM_Manutencao.FormShow(Sender: TObject);
begin
  procTotalizaManutencao;
  procTotaliza;
  procSelect;
  DBEdit5.Enabled := true;
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

procedure TM_Manutencao.procTotaliza;
var
   QrySelecionaValores : TIBQuery;
   QryAtualizaValor    : TIBQuery;
begin
   try
      QrySelecionaValores := dmBanco.funcCriaQuery;
      QryAtualizaValor    := dmBanco.funcCriaQuery;

      QrySelecionaValores.Close;
      QrySelecionaValores.SQL.Clear;
      QrySelecionaValores.SQL.text :=  'SELECT A.MAN_VLR_COMPONENTE,                                           ' +
                                       '       A.MAN_VLR_MANUTENCAO,                                           ' +
                                       '       (A.MAN_VLR_COMPONENTE + A.MAN_VLR_MANUTENCAO) AS MAN_VLR_TOTAL  ' +
                                       '  FROM MANUTENCAO A                                                    ' +
                                       ' WHERE A.MAN_EMPRESA = :EMPRESA AND                                    ' +
                                       '       A.MAN_CODIGO = :CODIGO                                          ' ;
      QrySelecionaValores.ParamByName('empresa').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      QrySelecionaValores.ParamByName('codigo').AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      QrySelecionaValores.Open;

      QryAtualizaValor.Close;
      QryAtualizaValor.SQL.Clear;
      QryAtualizaValor.sql.Text :=  'UPDATE MANUTENCAO A SET             '+
                                    '    A.MAN_VLR_TOTAL = :VALOR        '+
                                    'WHERE A.MAN_EMPRESA = :EMPRESA AND  '+
                                    '      A.MAN_CODIGO = :CODIGO        ';
      QryAtualizaValor.ParamByName('valor').AsFloat := QrySelecionaValores.FieldByName('MAN_VLR_TOTAL').AsFloat;
      QryAtualizaValor.ParamByName('empresa').AsInteger := DMControlePatrimonial.ManutencaoMAN_EMPRESA.AsInteger;
      QryAtualizaValor.ParamByName('CODIGO').AsInteger := DMControlePatrimonial.ManutencaoMAN_CODIGO.AsInteger;
      QryAtualizaValor.ExecSQL;

   finally
      FreeAndNil(QrySelecionaValores);
      FreeAndNil(QryAtualizaValor);
   end;
end;

procedure TM_Manutencao.procTotalizaManutencao;
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
   end;
end;

procedure TM_Manutencao.sbGravarClick(Sender: TObject);
begin
  procTotalizaManutencao;
  procTotaliza;
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

   DMControlePatrimonial.Componente.Edit;

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
   end;
end;

end.
