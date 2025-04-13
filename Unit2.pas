unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TheoryForm, ExtCtrls;

type
  TForm2 = class(TForm)
    pnlMenu: TPanel;
    btnTheory: TButton;
    btnTest: TButton;
    btnJournal: TButton;
    btnAuthor: TButton;
    btnHelp: TButton;
    btnExit: TButton;
    procedure btnTestClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnTheoryClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses RegisterForm;

{$R *.dfm}

procedure TForm2.btnExitClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.btnTestClick(Sender: TObject);
begin
  FormRegister.Show;
  Form2.Hide;
end;

procedure TForm2.btnTheoryClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  pnlMenu.Left := (ClientWidth - pnlMenu.Width) div 2;
  pnlMenu.Top := (ClientHeight - pnlMenu.Height) div 2;
end;

end.

