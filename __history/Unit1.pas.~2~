unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2; // добавили Unit2

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnStart: TButton;
    Label2: TLabel;
    procedure FormResize(Sender: TObject);
    procedure btnStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnStartClick(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  btnStart.Left := (ClientWidth - btnStart.Width) div 2;
  btnStart.Top := (ClientHeight - btnStart.Height) div 2;
end;

end.
