unit UF_RelatorioContabil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;

type
  TF_RelatorioContabil = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    editDtInicial: TMaskEdit;
    editDtFinal: TMaskEdit;
    Label1: TLabel;
    LANC_DIAS: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Rsoma: TEdit;
    SALDO_EMPRESA: TButton;
    procedure LANC_DIASClick(Sender: TObject);
    procedure SALDO_EMPRESAClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelatorioContabil: TF_RelatorioContabil;

implementation

{$R *.dfm}

uses UR_RelatorioContabil, dm000, UDM_contabil;

procedure TF_RelatorioContabil.LANC_DIASClick(Sender: TObject);
begin
  R_RelatorioContabil.frxLANC_DIAS.Variables['dtInicial'] := strToDate(editDtInicial.Text);
  R_RelatorioContabil.frxLANC_DIAS.Variables['dtFinal'] := strToDate(editDtFinal.Text);

  R_RelatorioContabil.IB_LANC_DIAS.Close;
  R_RelatorioContabil.IB_LANC_DIAS.SQL.Text := ' select a.lanc_nr_lote,'+
                                               ' a.lanc_nr_lancamento,  '+
                                               ' a.lanc_dt_lancamento,  '+
                                               ' a.lanc_debito,         '+
                                               ' a.lanc_credito,       '+
                                               ' a.lanc_historico,    '+
                                               ' a.lanc_valor,        '+
                                               ' a.lanc_tipo from lancamentos a '+
       'where a.lanc_dt_lancamento between :dtinicial and :dtfinal';
  R_RelatorioContabil.IB_LANC_DIAS.ParamByName('dtInicial').Value := strToDate(editDtInicial.Text);
  R_RelatorioContabil.IB_LANC_DIAS.ParamByName('dtFinal').Value   := strToDate(editDtFinal.Text);
  R_RelatorioContabil.IB_LANC_DIAS.Open;

  R_RelatorioContabil.frxLANC_DIAS.ShowReport();

end;

procedure TF_RelatorioContabil.SALDO_EMPRESAClick(Sender: TObject);
begin
   R_RelatorioContabil.frxRazaoS.Variables['CODEMPRESA'] := StrToInt(Rsoma.Text);
   R_RelatorioContabil.IB_RazaoS.Close;
   R_RelatorioContabil.IB_RazaoS.SQL.Text := ' select sum(a.LANC_VALOR), '+
                                             ' b.emp_cnpj, '+
                                             ' b.emp_razao '+
                                             ' from lancamentos a '+
' inner join empresa b on a.lanc_emp  = b.emp_cod '+
' where a.lanc_emp = :CODEMPRESA '+
' group by 2,3';
R_RelatorioContabil.IB_RazaoS.ParamByName('CODEMPRESA').Value := StrToInt(Rsoma.Text);
R_RelatorioContabil.IB_RazaoS.Open;
R_RelatorioContabil.frxRazaoS.ShowReport();

end;

end.
