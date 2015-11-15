unit UF_EstoqueRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.CategoryButtons, Vcl.ActnMan,
  Vcl.ActnColorMaps, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFEstoqueRelatorios = class(TForm)
    SpeedButton1: TSpeedButton;
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

procedure TFEstoqueRelatorios.SpeedButton1Click(Sender: TObject);
 var
    formMCD : TForm;
    button : TButton;
begin
    formMCD := criaForm(200,200);

    button := criaButton(formMCD);
    with button do
    begin
        Height := 100;
        Width := 100;
        Caption := 'www';
        Left := 100;
    end;


    try
        formMCD.ShowModal;
    finally
        FreeAndNil(formMCD);
    end;
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
