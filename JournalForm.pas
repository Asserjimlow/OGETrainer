unit JournalForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ComObj, Unit2;

type
  TFormJournal = class(TForm)
    StringGrid1: TStringGrid;
    btnExit: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJournal: TFormJournal;

implementation

{$R *.dfm}

procedure TFormJournal.btnExitClick(Sender: TObject);
begin
  FormJournal.Hide;      // Скрыть форму тестирования
  Form2.Show;      // Показать главное меню
end;

procedure TFormJournal.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0, 0] := 'ФИО';
  StringGrid1.Cells[1, 0] := 'Курс';
  StringGrid1.Cells[2, 0] := 'Группа';
  StringGrid1.Cells[3, 0] := 'Баллы';



end;

procedure TFormJournal.FormShow(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: Variant;
  i: Integer;
  l, colCount, totalWidth: Integer;
begin
    // Выставляем ширину всех столбцов равномерно
  colCount := StringGrid1.ColCount;
  totalWidth := StringGrid1.ClientWidth;

  for l := 0 to colCount - 1 do
    StringGrid1.ColWidths[l] := totalWidth div colCount - 2; // -2 для учета границ

  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := False;

  try
    WorkBook := ExcelApp.Workbooks.Open(ExtractFilePath(Application.ExeName) + 'journal.xlsx');
    WorkSheet := WorkBook.Worksheets[1];

    StringGrid1.RowCount := 2; // первая строка — заголовки
    i := 2;

    while WorkSheet.Cells[i, 1].Value <> '' do
    begin
      StringGrid1.Cells[0, i-1] := WorkSheet.Cells[i, 1].Value;
      StringGrid1.Cells[1, i-1] := WorkSheet.Cells[i, 2].Value;
      StringGrid1.Cells[2, i-1] := WorkSheet.Cells[i, 3].Value;
      StringGrid1.Cells[3, i-1] := WorkSheet.Cells[i, 4].Value;
      Inc(i);
      StringGrid1.RowCount := i;
    end;

    WorkBook.Close(False);
  finally
    ExcelApp.Quit;
  end;
end;

end.
