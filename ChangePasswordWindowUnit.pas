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
                   
{Эта функция отвечает за сгругление углов у формы}
procedure TChangePasswordWindow.FormCreate(Sender: TObject);
var
tmpReg: HRGN;
begin          
{Двойная буферизация для нормального показа деталей}
DoubleBuffered := true;                 
{Убираем бордер}
ChangePasswordWindow.Borderstyle := bsNone; 
{Тут изменяем контур}
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
{Закрытие окна}
LoginEdit.Clear;
Passedit.Clear;
ChangePasswordWindow.Close;
end;

procedure TChangePasswordWindow.PNGButton4Click(Sender: TObject);
begin
{Изменение пароля}
if(LoginEdit.Text <> '') and (PassEdit.Text <> '') then
  begin
  {Ищем юзера}
    MainDataModule.MainADOQuery.SQL.Clear;
    MainDataModule.MainADOQuery.SQL.Add('SELECT SurnameUser FROM Users WHERE SurnameUser='+#39+LoginEdit.Text+#39);
    MainDataModule.MainADOQuery.Open;
    {Если запрос вернул false, тогда пользователь существует}
    if(MainDataModule.MainADOQuery.IsEmpty = false) then
      begin
      {Заполняем параметры}
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('userlogin').Value := LoginEdit.Text;
        MainDataModule.ChangePasswordADOQuery.Parameters.ParamByName('newpass').Value := PassEdit.Text;
        MainDataModule.ChangePasswordADOQuery.ExecSQL;
        {обновляем подключение к БД
        На всякий пожарный}
        MainDataModule.MainADOConnection.Connected := false;
        MainDataModule.MainADOConnection.Connected := true;
        LoginEdit.Clear;
        Passedit.Clear;
        ShowMessage('Пароль успешно изменен!');
        ChangePasswordWindow.Close;
      end
      else
      ShowMessage('Пользователь '+LoginEdit.Text +', не найден!');
  end
  else
   ShowMessage('Не все поля, заполнены!');
end;

procedure TChangePasswordWindow.BitBtn2Click(Sender: TObject);
begin    
{Оброботчик на кнопку показа пароля}
{По дефолту стоит #0(это обычный char символ), * тут понятно}
if(PassEdit.PasswordChar = '*')then
 PassEdit.PasswordChar := #0
 else
 PassEdit.PasswordChar := '*';
end;

end.
