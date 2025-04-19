unit HelpForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormHelp = class(TForm)
    lblHelp: TLabel;
    btnClose: TButton;
    procedure btnCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelp: TFormHelp;

implementation

{$R *.dfm}

procedure TFormHelp.btnCloseClick(Sender: TObject);
begin
FormHelp.Hide;
end;

procedure TFormHelp.FormShow(Sender: TObject);
begin
lblHelp.Caption :='Инструкция:' + #13#10 +
                  '1. Введите ФИО, курс и группу.' + #13#10 +
                  '2. Ответьте на 20 вопросов.' + #13#10 +
                  '3. Нажмите "Завершить тест", чтобы увидеть баллы.' + #13#10 +
                  '4. Все результаты сохраняются в журнал.'+ #13#10 +
                  '5. Вы можете выйти в главное меню или начать новый тест.' + #13#10 + #13#10 +
                  'Если возникнут вопросы, обратитесь к преподавателю.'+ #13#10 +
                  'Удачи!';

end;

end.
