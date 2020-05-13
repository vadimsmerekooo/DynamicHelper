unit MainWindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, ComCtrls, pngextra, StdCtrls, jpeg, Grids,
  DBGrids, DB, ADODB;

type
  TMainWindow = class(TForm)
    MainPageControl: TPageControl;
    Panel1: TPanel;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    PNGButton2: TPNGButton;
    PNGButton4: TPNGButton;
    Panel3: TPanel;
    Panel4: TPanel;
    PNGButton1: TPNGButton;
    HomePage: TTabSheet;
    Lesson1Page: TTabSheet;
    TestPage: TTabSheet;
    Image4: TImage;
    Image6: TImage;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    ScrollBox1: TScrollBox;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Image9: TImage;
    Memo4: TMemo;
    Memo5: TMemo;
    Image10: TImage;
    Memo6: TMemo;
    Memo7: TMemo;
    Image11: TImage;
    Memo8: TMemo;
    Memo9: TMemo;
    Memo10: TMemo;
    Memo11: TMemo;
    PNGButton8: TPNGButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Memo12: TMemo;
    Panel7: TPanel;
    PNGButton9: TPNGButton;
    Memo13: TMemo;
    Image12: TImage;
    TestPageControl: TPageControl;
    MainTestPage: TTabSheet;
    Memo14: TMemo;
    Image8: TImage;
    Panel8: TPanel;
    PNGButton3: TPNGButton;
    Label2: TLabel;
    Image5: TImage;
    Panel9: TPanel;
    Panel10: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Level1Page: TTabSheet;
    Level2Page: TTabSheet;
    Level3Page: TTabSheet;
    Level4Page: TTabSheet;
    Level5Page: TTabSheet;
    Level6Page: TTabSheet;
    Level7Page: TTabSheet;
    Level8Page: TTabSheet;
    Level9Page: TTabSheet;
    Level10Page: TTabSheet;
    ResultTestPage: TTabSheet;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    TimerTest: TTimer;
    Panel11: TPanel;
    PNGButton10: TPNGButton;
    Panel12: TPanel;
    PNGButton11: TPNGButton;
    Panel13: TPanel;
    PNGButton12: TPNGButton;
    Panel14: TPanel;
    PNGButton13: TPNGButton;
    Panel15: TPanel;
    PNGButton14: TPNGButton;
    Panel16: TPanel;
    PNGButton15: TPNGButton;
    Panel17: TPanel;
    PNGButton16: TPNGButton;
    Panel18: TPanel;
    PNGButton17: TPNGButton;
    Panel19: TPanel;
    PNGButton18: TPNGButton;
    Panel20: TPanel;
    PNGButton19: TPNGButton;
    Label7: TLabel;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    PNGButton20: TPNGButton;
    Panel21: TPanel;
    DBGrid1: TDBGrid;
    Panel22: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel23: TPanel;
    Panel24: TPanel;
    Shape1: TShape;
    Label13: TLabel;
    Panel25: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    SaveResultTestADOQuery: TADOQuery;
    RadioGroup1: TRadioGroup;
    Memo15: TMemo;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Memo16: TMemo;
    Memo17: TMemo;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    Label24: TLabel;
    Label25: TLabel;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    Memo18: TMemo;
    Memo19: TMemo;
    RadioGroup8: TRadioGroup;
    Memo20: TMemo;
    RadioGroup9: TRadioGroup;
    Memo21: TMemo;
    RadioGroup10: TRadioGroup;
    Image7: TImage;
    procedure Image3Click(Sender: TObject);
    procedure PNGButton6Click(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure PNGButton7Click(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
    procedure PNGButton3Click(Sender: TObject);
    procedure TimerTestTimer(Sender: TObject);
    procedure PNGButton10Click(Sender: TObject);
    procedure PNGButton11Click(Sender: TObject);
    procedure PNGButton12Click(Sender: TObject);
    procedure PNGButton13Click(Sender: TObject);
    procedure PNGButton14Click(Sender: TObject);
    procedure PNGButton15Click(Sender: TObject);
    procedure PNGButton16Click(Sender: TObject);
    procedure PNGButton17Click(Sender: TObject);
    procedure PNGButton18Click(Sender: TObject);
    procedure PNGButton19Click(Sender: TObject);
    procedure PNGButton20Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainWindow: TMainWindow;
  i, testResult, iClose:integer;

implementation

uses AuthRegWindowUnit, MainDataModuleUnit;

{$R *.dfm}

procedure TMainWindow.Image3Click(Sender: TObject);
begin
{Закрываем приложение}
Application.Terminate;
end;

procedure TMainWindow.PNGButton6Click(Sender: TObject);
begin
{Таймер теста, его стопим вдруг во время теста, юзер захочет заказать себе сьебасса}
TimerTest.Enabled := False;   
Panel9.Visible := false;
PNGButton1.Caption := 'Лекция по теме "Динамические структуры данных"';
{Тут юзается PageControl, для отображения страниц, очень удобно, никаких панелей, лишних окно
Тут у каждого Page есть свое имя, тут мы активируем нужный нам Page}
MainPageControl.ActivePage := Lesson1Page;
end;

procedure TMainWindow.PNGButton5Click(Sender: TObject);
begin
{Таймер}
TimerTest.Enabled := False;  
Panel9.Visible := false;
PNGButton1.Caption := 'Главная';
{Page}
MainPageControl.ActivePage := HomePage;
end;

procedure TMainWindow.PNGButton7Click(Sender: TObject);
begin
{Timer}
TimerTest.Enabled := False;
Panel9.Visible := false;
PNGButton1.Caption := 'Тест по теме "Динамические структуры данных"';
{Page}
MainPageControl.ActivePage := TestPage;
TestPageControl.ActivePage := MainTestPage;
end;

procedure TMainWindow.PNGButton4Click(Sender: TObject);
begin
{оброботчик смены пользователя}
TimerTest.Enabled := False;
Panel9.Visible := false;
AuthRegWindow.Show();
MainWindow.Close();
end;

procedure TMainWindow.PNGButton3Click(Sender: TObject);
begin
{Переменная глобальная, для таймера теста(900 секнуд == 15 минут)}
i := 900;
{переменная счетчик правильных ответов}
testResult := 0;
ShowMessage('При отмене теста, набраный результат, НЕ СОХРАНИТЬСЯ!');
{Page}
TestPageControl.ActivePage := Level1Page;
Label3.Caption := '00:15:00';
Label6.Caption := '1/10';
TimerTest.Enabled := true;
Panel9.Visible := true;
end;

procedure TMainWindow.TimerTestTimer(Sender: TObject);
var
  H, M, S: Integer;
begin
{Это код таймера, который будет выводить выремя теста в label}
{отнимаем секунду}
  i := i - 1;
  {Дефолт математика}
  H := I div 3600;
  M := (I mod 3600) div 60;
  S := (I mod 3600) mod 60;
  {Тут выводим}
  Label3.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

  {Если осталось время для выпонения теста, больше 10 минут, тогда зеленое
  если меньше 10 больше 5 то оранжевое
  если меньше 5 то все херово, красный}
  if(M > 10) then
    Label3.Font.Color := clGreen;
  if(M < 10) and (M > 5) then
    Label3.Font.Color := clOlive;
  if(M < 5) then
    Label3.Font.Color := clRed;
    {Если время истекло, тогда все останавливаем}
  if i = 0 then
  begin
    PNGButton19Click(Self);
    ShowMessage('Время истекло!');
  end;
end;

procedure TMainWindow.PNGButton10Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup1.ItemIndex = 0) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup1.ItemIndex := -1;
Label6.Caption := '2/10';
TestPageControl.ActivePage := Level2Page;
end;

procedure TMainWindow.PNGButton11Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup2.ItemIndex = 0) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup2.ItemIndex := -1;
Label6.Caption := '3/10';
TestPageControl.ActivePage := Level3Page;
end;

procedure TMainWindow.PNGButton12Click(Sender: TObject);
begin                                           
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup3.ItemIndex = 2) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup3.ItemIndex := -1;
Label6.Caption := '4/10';
TestPageControl.ActivePage := Level4Page;
end;

procedure TMainWindow.PNGButton13Click(Sender: TObject);
begin                                
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup4.ItemIndex = 2) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup4.ItemIndex := -1;
Label6.Caption := '5/10';
TestPageControl.ActivePage := Level5Page;
end;

procedure TMainWindow.PNGButton14Click(Sender: TObject);
begin                               
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup5.ItemIndex = 0) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup5.ItemIndex := -1;
Label6.Caption := '6/10';
TestPageControl.ActivePage := Level6Page;
end;

procedure TMainWindow.PNGButton15Click(Sender: TObject);
begin                         
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup6.ItemIndex = 2) then testResult := testResult + 1;   
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup6.ItemIndex := -1;
Label6.Caption := '7/10';
TestPageControl.ActivePage := Level7Page;
end;

procedure TMainWindow.PNGButton16Click(Sender: TObject);
begin                   
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup7.ItemIndex = 1) then testResult := testResult + 1; 
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup7.ItemIndex := -1;
Label6.Caption := '8/10';
TestPageControl.ActivePage := Level8Page;
end;

procedure TMainWindow.PNGButton17Click(Sender: TObject);
begin                
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup8.ItemIndex = 2) then testResult := testResult + 1; 
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup8.ItemIndex := -1;
Label6.Caption := '9/10';
TestPageControl.ActivePage := Level9Page;
end;

procedure TMainWindow.PNGButton18Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup9.ItemIndex = 1) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup9.ItemIndex := -1;
Label6.Caption := '10/10';
TestPageControl.ActivePage := Level10Page;
end;

procedure TMainWindow.PNGButton19Click(Sender: TObject);
var
H, M, S, si:integer;
begin                                                     
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup10.ItemIndex = 2) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup10.ItemIndex := -1;
{Останавливаем Таймер}
TimerTest.Enabled := false;
Panel9.Visible := false;
{Эта функция нужна для вывода время, потраченного на тест}
si := 900 - i;
H := si div 3600;
M := (si mod 3600) div 60;
S := (si mod 3600) mod 60;
{и выводим}
Label23.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

{Тут мы заносим результаты теста в БД
Уже все настроенно, в SaveResultTestASOQuery SQL запрос написан
и параметры составлены
можешь посмотреть для примера}
SaveResultTestADOQuery.Parameters.ParamByName('Tname').Value := Label21.Caption;
SaveResultTestADOQuery.Parameters.ParamByName('Tsurname').Value := Label20.Caption;
SaveResultTestADOQuery.Parameters.ParamByName('Tgroup').Value := Label19.Caption;    
SaveResultTestADOQuery.Parameters.ParamByName('Tresult').Value := testResult;
SaveResultTestADOQuery.ExecSQL;
{Сэйвим в БД все результаты}
{Тут обновим таблицу, которая находиться в конце теста}
MainDataModule.ResultUsersADOTable.Active := false;
MainDataModule.ResultUsersADOTable.Active := true;


{Page}
TestPageControl.ActivePage := ResultTestPage;
{Если результат теста больше 7 то зеленый
меньше 7 и больше 4 то оранжевый
если меньше 4 то все херово}
if(testResult > 7) then Label18.Font.Color := clLime;
if(testResult < 7) and (testResult > 4) then  Label18.Font.Color := clOlive;
if(testResult < 4) then Label18.Font.Color := clRed;
{Выводим результат}
Label18.Caption := IntToStr(testResult);
end;

procedure TMainWindow.PNGButton20Click(Sender: TObject);
begin
PNGButton3Click(Self);
end;



end.
