unit AuthRegWindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, Buttons, pngextra, DB, ADODB;

type
  TAuthRegWindow = class(TForm)
    PanelAuth: TPanel;
    Image1: TImage;
    PNGButton1: TPNGButton;
    Image3: TImage;
    LoginAuthEdit: TEdit;
    PassAuthEdit: TEdit;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    BitBtn1: TBitBtn;
    PanelReg: TPanel;
    Image2: TImage;
    PNGButton4: TPNGButton;
    Image4: TImage;
    PNGButton5: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton6: TPNGButton;
    NameRegEdit: TEdit;
    PNGButton8: TPNGButton;
    PNGButton9: TPNGButton;
    SurnameRegEdit: TEdit;
    GroupRegEdit: TEdit;
    PNGButton10: TPNGButton;
    PassRegEdit: TEdit;
    PNGButton11: TPNGButton;
    PNGButton12: TPNGButton;
    RegADOQuery: TADOQuery;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure PNGButton11Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AuthRegWindow: TAuthRegWindow;

implementation
uses MainDataModuleUnit, MainWindowUnit, ChangePasswordWindowUnit;
{$R *.dfm}

procedure TAuthRegWindow.FormCreate(Sender: TObject);
var
tmpReg: HRGN;
begin
DoubleBuffered := true;
AuthRegWindow.Borderstyle := bsNone;
   tmpReg := CreateRoundRectRgn(0,
    0,
    ClientWidth,
    ClientHeight,
    40,
    40);
  SetWindowRgn(Handle, tmpReg, True);
end;

procedure TAuthRegWindow.PNGButton2Click(Sender: TObject);
begin
LoginAuthEdit.Clear;
PassAuthEdit.Clear;
PanelReg.Visible := true;
end;

procedure TAuthRegWindow.PNGButton5Click(Sender: TObject);
begin
NameRegEdit.Clear;
SurnameRegEdit.Clear;
GroupRegEdit.Clear;
PassRegEdit.Clear;
PanelReg.Visible := false;
end;

procedure TAuthRegWindow.PNGButton11Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TAuthRegWindow.BitBtn1Click(Sender: TObject);
begin
if(PassAuthEdit.PasswordChar = '*')then
 PassAuthEdit.PasswordChar := #0
 else
 PassAuthEdit.PasswordChar := '*';
end;

procedure TAuthRegWindow.PNGButton4Click(Sender: TObject);
begin
if(NameRegEdit.Text <> '') and (SurnameRegEdit.Text <> '') and (GroupRegEdit.Text <> '') and (PassRegEdit.Text <> '') then
  begin
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT SurnameUser FROM Users WHERE SurnameUser='+#39+SurnameRegEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    if(MainDataModule.MainADOQuery.IsEmpty) then
     begin                                                            
      RegADOQuery.Parameters.ParamByName('Tname').Value := NameRegEdit.Text;
      RegADOQuery.Parameters.ParamByName('Tsurname').Value := SurnameRegEdit.Text;
      RegADOQuery.Parameters.ParamByName('Tgroup').Value := GroupRegEdit.Text;
      RegADOQuery.Parameters.ParamByName('Tpass').Value := PassRegEdit.Text;
      RegADOQuery.ExecSQL;
      ShowMessage('Вы успешно зарегистрированны!');
      PNGButton5Click(self);
     end
     else
      ShowMessage('Пользователь с такой фамилией, зарегистрирован!');
  end
  else
   ShowMessage('Не все поля, заполнены!');
end;

procedure TAuthRegWindow.BitBtn2Click(Sender: TObject);
begin
if(PassRegEdit.PasswordChar = '*')then
 PassRegEdit.PasswordChar := #0
 else
 PassRegEdit.PasswordChar := '*';
end;

procedure TAuthRegWindow.PNGButton1Click(Sender: TObject);
begin
if(LoginAuthEdit.Text <> '') and (PassAuthEdit.Text <> '')then
  begin
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT PasswordUser FROM Users WHERE SurnameUser='+#39+LoginAuthEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    if(MainDataModule.MainADOQuery.FieldByName('PasswordUser').Value = PassAuthEdit.Text)then
     begin
        MainDataModule.MainADOQuery.SQL.Clear;
        MainDataModule.MainADOQuery.SQL.Add('SELECT NameUser FROM Users WHERE SurnameUser='+#39+LoginAuthEdit.Text+#39);
        MainDataModule.MainADOQuery.Open;
        ShowMessage('Добро пожаловать, '+LoginAuthEdit.Text +' '+ MainDataModule.MainADOQuery.FieldByName('NameUser').Value+'!!!');
        MainWindow.PNGButton2.Caption := LoginAuthEdit.Text+' '+ MainDataModule.MainADOQuery.FieldByName('NameUser').Value;
        MainWindow.Label21.Caption := MainDataModule.MainADOQuery.FieldByName('NameUser').Value;
        MainWindow.Label20.Caption := LoginAuthEdit.Text;
        MainDataModule.MainADOQuery.SQL.Clear;
        MainDataModule.MainADOQuery.SQL.Add('SELECT GroupUser FROM Users WHERE SurnameUser='+#39+LoginAuthEdit.Text+#39);
        MainDataModule.MainADOQuery.Open;
        MainWindow.Label19.Caption := MainDataModule.MainADOQuery.FieldByName('GroupUser').Value;
        LoginAuthEdit.Clear;
        PassAuthEdit.Clear;
        MainWindow.MainPageControl.ActivePage := MainWindow.HomePage;
        MainWindow.Show();
        Hide;
     end
     else
        ShowMessage('Не верный логин, или пароль!');
  end
else
  ShowMessage('Не все поля, заполнены!');
end;

procedure TAuthRegWindow.PNGButton3Click(Sender: TObject);
begin
ChangePasswordWindow.ShowModal();
end;

end.
