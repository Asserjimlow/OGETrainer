unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2; // добавили Unit2

type
  TForm1 = class(TForm)
    btnStart: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
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

procedure TForm1.FormShow(Sender: TObject);
begin
Label1.Caption := 'МИНИСТЕРСТВО НАУКИ И ВЫСШЕГО ОБРАЗОВАНИЯ' + #13#10 +
                  'РОССИЙСКОЙ ФЕДЕРАЦИИ' + #13#10 +
                  'ФГБОУ ВО «ТУВИНСКИЙ ГОСУДАРСТВЕННЫЙ УНИВЕРСИТЕТ»' + #13#10 + #13#10 +
                  'КАФЕДРА ИНФОРМАТИКИ' + #13#10 + #13#10 +
                  'КУРСОВАЯ РАБОТА' + #13#10 +
                  'по дисциплине «Алгоритмизация и программирование» на тему:' + #13#10 + #13#10 +
                  'Подготовка к ОГЭ по информатике (10-15 задания)' + #13#10 +
                  '(обучающее-контролирующая программа)';
end;

end.
