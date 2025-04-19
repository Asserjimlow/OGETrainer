unit TestForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, CheckLst, ExtCtrls, ComObj, RegisterForm, JournalForm, Unit2;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    lblQ1: TLabel;
    TabSheet2: TTabSheet;
    lblQ2: TLabel;
    TabSheet3: TTabSheet;
    lblQ3: TLabel;
    TabSheet4: TTabSheet;
    lblQ4: TLabel;
    TabSheet5: TTabSheet;
    lblQ5: TLabel;
    TabSheet6: TTabSheet;
    lblQ6: TLabel;
    TabSheet7: TTabSheet;
    lblQ7: TLabel;
    TabSheet8: TTabSheet;
    lblQ8: TLabel;
    TabSheet9: TTabSheet;
    lblQ9: TLabel;
    TabSheet10: TTabSheet;
    lblQ10: TLabel;
    TabSheet11: TTabSheet;
    lblQ11: TLabel;
    TabSheet12: TTabSheet;
    lblQ12: TLabel;
    TabSheet13: TTabSheet;
    lblQ13: TLabel;
    TabSheet14: TTabSheet;
    lblQ14: TLabel;
    TabSheet15: TTabSheet;
    lblQ15: TLabel;
    TabSheet16: TTabSheet;
    lblQ16: TLabel;
    TabSheet17: TTabSheet;
    lblQ17: TLabel;
    TabSheet18: TTabSheet;
    lblQ18: TLabel;
    TabSheet19: TTabSheet;
    lblQ19: TLabel;
    TabSheet20: TTabSheet;
    lblQ20: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Edit1: TEdit;
    RadioGroup3: TRadioGroup;
    ListBox1: TListBox;
    Edit2: TEdit;
    RadioGroup4: TRadioGroup;
    CheckListBox1: TCheckListBox;
    RadioGroup5: TRadioGroup;
    Edit3: TEdit;
    RadioGroup6: TRadioGroup;
    CheckListBox2: TCheckListBox;
    RadioGroup7: TRadioGroup;
    Edit4: TEdit;
    ListBox2: TListBox;
    CheckListBox3: TCheckListBox;
    RadioGroup8: TRadioGroup;
    Edit5: TEdit;
    RadioGroup9: TRadioGroup;
    CheckListBox4: TCheckListBox;
    Button1: TButton;
    btnExit: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  FormJournal: TFormJournal;
  RegisterForm: TFormRegister;
  row: Integer;
  fio, kurs, group: string;
  ExcelApp, WorkBook, WorkSheet: Variant;
  i, j: Integer;

implementation

{$R *.dfm}

procedure TForm4.btnExitClick(Sender: TObject);
begin
  Form4.Hide;      // Скрыть форму тестирования
  Form2.Show;      // Показать главное меню
end;

procedure TForm4.Button1Click(Sender: TObject);
var
  score: Integer;
begin
score := 0;

  if not Assigned(FormRegister) then
  FormRegister := TFormRegister.Create(Application);

if not Assigned(FormJournal) then
  FormJournal := TFormJournal.Create(Application);

  // Вопрос 1: один правильный ответ — 2 (RadioGroup1)
  if RadioGroup1.ItemIndex = 1 then Inc(score);

  // Вопрос 2: один правильный ответ — 10 (RadioGroup2)
  if RadioGroup2.ItemIndex = 2 then Inc(score);

  // Вопрос 3: ввод текста — "1111" (Edit1)
  if Trim(LowerCase(Edit1.Text)) = '1111' then Inc(score);

  // Вопрос 4: один правильный ответ — "Римская" (RadioGroup3)
  if RadioGroup3.ItemIndex = 2 then Inc(score);

  // Вопрос 5: список — "Двоичная" (ListBox1)
  if ListBox1.ItemIndex = 2 then Inc(score);

  // Вопрос 6: ввод текста — "1024" (Edit2)
  if Trim(Edit2.Text) = '1024' then Inc(score);

  // Вопрос 7: один правильный ответ — Word (RadioGroup4)
  if RadioGroup4.ItemIndex = 1 then Inc(score);

  // Вопрос 8: несколько правильных ответов — клавиатура и мышь (CheckListBox1: индексы 0 и 2)
  if CheckListBox1.Checked[0] and CheckListBox1.Checked[2]
     and not CheckListBox1.Checked[1] and not CheckListBox1.Checked[3] then Inc(score);

  // Вопрос 9: один правильный ответ — RAM (RadioGroup5)
  if RadioGroup5.ItemIndex = 1 then Inc(score);

  // Вопрос 10: ввод текста — ".exe" (Edit3)
  if Trim(LowerCase(Edit3.Text)) = '.exe' then Inc(score);

  // Вопрос 11: один правильный ответ — Excel (RadioGroup6)
  if RadioGroup6.ItemIndex = 1 then Inc(score);

  // Вопрос 12: несколько правильных ответов — CD, книга, флешка (CheckListBox2: 0,1,2)
  if CheckListBox2.Checked[0] and CheckListBox2.Checked[1] and CheckListBox2.Checked[2]
     and not CheckListBox2.Checked[3] then Inc(score);

  // Вопрос 13: один правильный ответ — Растровая (RadioGroup7)
  if RadioGroup7.ItemIndex = 1 then Inc(score);

  // Вопрос 14: ввод текста — Никлаус Вирт (Edit4)
  if Trim(LowerCase(Edit4.Text)) = 'никлаус вирт' then Inc(score);

  // Вопрос 15: список — Pascal (ListBox2)
  if ListBox2.ItemIndex = 2 then Inc(score);

  // Вопрос 16: несколько правильных — Python, C++ (CheckListBox3: 0 и 1)
  if CheckListBox3.Checked[0] and CheckListBox3.Checked[1]
     and not CheckListBox3.Checked[2] and not CheckListBox3.Checked[3] then Inc(score);

  // Вопрос 17: один правильный ответ — Windows (RadioGroup8)
  if RadioGroup8.ItemIndex = 1 then Inc(score);

  // Вопрос 18: ввод текста — "11100000" (Edit5)
  if Trim(Edit5.Text) = '11100000' then Inc(score);

  // Вопрос 19: один правильный ответ — PowerPoint (RadioGroup9)
  if RadioGroup9.ItemIndex = 2 then Inc(score);

  // Вопрос 20: несколько правильных — Paint, Photoshop (CheckListBox4: 0 и 1)
  if CheckListBox4.Checked[0] and CheckListBox4.Checked[1]
     and not CheckListBox4.Checked[2] and not CheckListBox4.Checked[3] then Inc(score);

  row := FormJournal.StringGrid1.RowCount;
  FormJournal.StringGrid1.RowCount := row + 1;

  with FormJournal.StringGrid1 do
  begin
    Cells[0, row] := FormRegister.edtFIO.Text;
    Cells[1, row] := FormRegister.cbCourse.Text;
    Cells[2, row] := FormRegister.edtGroup.Text;
    Cells[3, row] := IntToStr(score);
  end;

begin
  // Создание или подключение к Excel
  ExcelApp := CreateOleObject('Excel.Application');
  ExcelApp.Visible := False;

  try
    WorkBook := ExcelApp.Workbooks.Open(ExtractFilePath(Application.ExeName) + 'journal.xlsx');
  except
    WorkBook := ExcelApp.Workbooks.Add;
  end;

  WorkSheet := WorkBook.Worksheets[1];

  // Поиск первой пустой строки
  i := 2;
  while WorkSheet.Cells[i, 1].Value <> '' do
    Inc(i);

  WorkSheet.Cells[i, 1].Value := FormRegister.edtFIO.Text;
  WorkSheet.Cells[i, 2].Value := FormRegister.cbCourse.Text;
  WorkSheet.Cells[i, 3].Value := FormRegister.edtGroup.Text;
  WorkSheet.Cells[i, 4].Value := score;

  WorkBook.SaveAs(ExtractFilePath(Application.ExeName) + 'journal.xlsx');
  WorkBook.Close(False);
  ExcelApp.Quit;
end;


  // Показать результат
  ShowMessage('Вы набрали ' + IntToStr(score) + ' из 20 баллов.');
//FormJournal.Show;
end;


end.
