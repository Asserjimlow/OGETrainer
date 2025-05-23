unit RegisterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormRegister = class(TForm)
    lblFIO: TLabel;
    edtFIO: TEdit;
    lblCourse: TLabel;
    cbCourse: TComboBox;
    lblGroup: TLabel;
    edtGroup: TEdit;
    btnOK: TButton;
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
  StudentFIO, StudentGroup: string;
  StudentCourse: Integer;
  end;

var
  FormRegister: TFormRegister;
  StudentFIO, StudentCourse, StudentGroup: string;

implementation

uses Unit2, TestForm;

{$R *.dfm}

procedure TFormRegister.btnOKClick(Sender: TObject);
begin
  if (Trim(edtFIO.Text) = '') or
     (Trim(cbCourse.Text) = '') or
     (Trim(edtGroup.Text) = '') then
  begin
    ShowMessage('����������, ��������� ��� ����: ���, ���� � ������.');
    Exit;
  end;


  StudentFIO := edtFIO.Text;
  StudentGroup := edtGroup.Text;
  StudentCourse := cbCourse.ItemIndex + 1;

  FormRegister.Hide;
  Form4.Show;
end;

end.
