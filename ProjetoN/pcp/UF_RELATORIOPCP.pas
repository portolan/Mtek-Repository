unit UF_RELATORIOPCP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask;

type
  TFRELATORIOPCP = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    SpeedButton3: TSpeedButton;
    GroupBox4: TGroupBox;
    SpeedButton4: TSpeedButton;
    GroupBox5: TGroupBox;
    editDtInicial: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    editDtFinal: TMaskEdit;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRELATORIOPCP: TFRELATORIOPCP;

implementation

{$R *.dfm}

uses UR_RELATORIOPCP, dm000, UDM_PCP;

procedure TFRELATORIOPCP.SpeedButton1Click(Sender: TObject);
begin
      pcprelatorio.q_ordemproducao.Close;
      pcprelatorio.q_ordemproducao.SQL.Text := 'select * from ordem_producao';
      pcprelatorio.q_ordemproducao.Open;
      pcprelatorio.frxOrdemproducao.ShowReport();

end;

procedure TFRELATORIOPCP.SpeedButton5Click(Sender: TObject);
begin
    pcprelatorio.frxOrdempordata.Variables['dtinicial'] := strToDate(editDtInicial.Text);
    pcprelatorio.frxOrdempordata.Variables['dtfinal'] := strToDate(editDtFinal.Text);

    pcprelatorio.q_ordemproducao.Close;
    pcprelatorio.q_ordemproducao.SQL.Text := ' SELECT O.*, '+
                                            ' f.ft_cod,'+
                                            ' f.ft_empresa'+
                                            ' FROM ordem_producao O '+
             ' INNER join ficha_tecnica F ON o.op_fichatecnica =  f.ft_cod'+
             ' and o.op_empresa=f.ft_empresa  '+
             ' INNER JOIN DEPARTAMENTO D ON o.op_departamento = D.DEP_COD '+
             ' where o.op_dt_pedido between :dtinicial and :dtfinal';
    pcprelatorio.q_ordemproducao.ParamByName('dtinicial').Value := strToDate(editDtInicial.Text);
    pcprelatorio.q_ordemproducao.ParamByName('dtfinal').Value   := strToDate(editDtFinal.Text);
    pcprelatorio.q_ordemproducao.Open;

    pcprelatorio.frxOrdempordata.ShowReport();
end;

end.
