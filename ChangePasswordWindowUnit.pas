unit ChangePasswordWindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngextra, pngimage, ExtCtrls, Buttons;

type
  TChangePasswordWindow = class(TForm)
    Image1: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    LoginEdit: TEdit;
    PNGButton3: TPNGButton;
    Passedit: TEdit;
    PNGButton4: TPNGButton;
    PNGButton5: TPNGButton;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePasswordWindow: TChangePasswordWindow;

implementation

uses MainDataModuleUnit;

{$R *.dfm}
                   
{��� ������� �������� �� ���������� ����� � �����}
procedure TChangePasswordWindow.FormCreate(Sender: TObject);
var
tmpReg: HRGN;
begin          
{������� ����������� ��� ����������� ������ �������}
DoubleBuffered := true;                 
{������� ������}
ChangePasswordWindow.Borderstyle := bsNone; 
{��� �������� ������}
   tmpReg := CreateRoundRectRgn(0,
    0,
    ClientWidth,
    ClientHeight,
    40,
    40);
  SetWindowRgn(Handle, tmpReg, True);
end;

procedure TChangePasswordWindow.PNGButton5Click(Sender: TObject);
begin
{�������� ����}
LoginEdit.Clear;
Passedit.Clear;
ChangePasswordWindow.Close;
end;

procedure TChangePasswordWindow.PNGButton4Click(Sender: TObject);
begin
{��������� ������}
if(LoginEdit.Text <> '') and (PassEdit.Text <> '') then
  begin
  {���� �����}
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT SurnameUser FROM Users WHERE SurnameUser='+#39+LoginEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    {���� ������ ������ false, ����� ������������ ����������}
    if(MainDataModule.MainADOQuery.IsEmpty = false) then
      begin
      {��������� ���������}
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('userlogin').Value := LoginEdit.Text;
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('newpass').Value := PassEdit.Text;
        MainDataModule.ChangePasswordADOQuery.ExecSQL;
        {��������� ����������� � ��
        �� ������ ��������}
        MainDataModule.MainADOConnection.Connected := false;
        MainDataModule.MainADOConnection.Connected := true;
        LoginEdit.Clear;
        Passedit.Clear;
        ShowMessage('������ ������� �������!');
        ChangePasswordWindow.Close;
      end
      else
      ShowMessage('������������ '+LoginEdit.Text +', �� ������!');
  end
  else
   ShowMessage('�� ��� ����, ���������!');
end;

procedure TChangePasswordWindow.BitBtn2Click(Sender: TObject);
begin    
{���������� �� ������ ������ ������}
{�� ������� ����� #0(��� ������� char ������), * ��� �������}
if(PassEdit.PasswordChar = '*')then
 PassEdit.PasswordChar := #0
 else
 PassEdit.PasswordChar := '*';
end;

end.
