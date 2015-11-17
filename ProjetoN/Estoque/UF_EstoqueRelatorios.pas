unit UF_EstoqueRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Mask;

type
  TFEstoqueRelatorios = class(TForm)
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    editDtInicial: TMaskEdit;
    editDtFinal: TMaskEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function criaForm(width, height : integer):TForm;
    function criaButton(form : TForm):TButton;
  end;

var
  FEstoqueRelatorios: TFEstoqueRelatorios;

implementation

{$R *.dfm}

uses UR_EstoqueRelatorios;

procedure TFEstoqueRelatorios.SpeedButton1Click(Sender: TObject);
 var
    formMCD : TForm;
    button : TButton;
begin
    EstoqueRelatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'EstoqueRelatorios\MovimentoPorData.fr3');
    EstoqueRelatorios.frxReport.Variables['dtInicial'] := strToDate(editDtInicial.Text);
    EstoqueRelatorios.frxReport.Variables['dtFinal'] := strToDate(editDtFinal.Text);


    EstoqueRelatorios.frxReport.ShowReport();
end;

function TFEstoqueRelatorios.criaButton(form: TForm): TButton;
begin
    Result := TButton.Create(form);
    Result.Parent := form;
    Result.Visible := true;
end;

function TFEstoqueRelatorios.criaForm(width, height : integer):TForm;
var
    form : TForm;
begin
    form            := TForm.Create(nil);
    form.Position   := poMainFormCenter;
    form.Width      := width;
    form.Height     := height;
    Result          := form;
end;

end.
