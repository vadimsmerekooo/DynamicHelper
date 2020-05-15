unit WindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, pngimage, ExtCtrls, ImgList, StdCtrls, ComCtrls, jpeg,
  Grids, DBGrids, DB, ADODB;

type
  TWindowMain = class(TForm)
    MainPageControl: TPageControl;
    HomePage: TTabSheet;
    LecturePage: TTabSheet;
    TestPage: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    PNGButton1: TPNGButton;
    PNGButton2: TPNGButton;
    PNGButton3: TPNGButton;
    PNGButton4: TPNGButton;
    PNGButton5: TPNGButton;
    PNGButton6: TPNGButton;
    PNGButton7: TPNGButton;
    PNGButton8: TPNGButton;
    Panel3: TPanel;
    PNGButton9: TPNGButton;
    HomePanel: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    LecturPanel: TPanel;
    Shape2: TShape;
    Label2: TLabel;
    TestPanel: TPanel;
    Shape3: TShape;
    Label3: TLabel;
    Image4: TImage;
    PNGButton10: TPNGButton;
    PNGButton11: TPNGButton;
    Image12: TImage;
    Memo10: TMemo;
    Memo11: TMemo;
    Panel5: TPanel;
    Panel6: TPanel;
    Memo12: TMemo;
    Panel7: TPanel;
    Memo13: TMemo;
    Image3: TImage;
    TestPageControl: TPageControl;
    MainTestPage: TTabSheet;
    Image8: TImage;
    PNGButton12: TPNGButton;
    Label21: TLabel;
    Image5: TImage;
    Memo14: TMemo;
    Panel16: TPanel;
    Level2Page: TTabSheet;
    Image13: TImage;
    PNGButton13: TPNGButton;
    Image25: TImage;
    Panel17: TPanel;
    Memo15: TMemo;
    RadioGroup2: TRadioGroup;
    Level1Page: TTabSheet;
    Image14: TImage;
    PNGButton14: TPNGButton;
    Label22: TLabel;
    Image24: TImage;
    Panel18: TPanel;
    RadioGroup1: TRadioGroup;
    Level3Page: TTabSheet;
    Image15: TImage;
    PNGButton15: TPNGButton;
    Image26: TImage;
    Panel19: TPanel;
    RadioGroup3: TRadioGroup;
    Memo16: TMemo;
    Level4Page: TTabSheet;
    Image16: TImage;
    PNGButton16: TPNGButton;
    Image27: TImage;
    Panel20: TPanel;
    Memo17: TMemo;
    RadioGroup4: TRadioGroup;
    Level5Page: TTabSheet;
    Image17: TImage;
    PNGButton17: TPNGButton;
    Image28: TImage;
    Label24: TLabel;
    Panel21: TPanel;
    RadioGroup5: TRadioGroup;
    Level6Page: TTabSheet;
    Image18: TImage;
    PNGButton18: TPNGButton;
    Image29: TImage;
    Label25: TLabel;
    Panel22: TPanel;
    RadioGroup6: TRadioGroup;
    Level7Page: TTabSheet;
    Image19: TImage;
    PNGButton19: TPNGButton;
    Image30: TImage;
    Panel23: TPanel;
    RadioGroup7: TRadioGroup;
    Memo18: TMemo;
    Level8Page: TTabSheet;
    Image20: TImage;
    PNGButton20: TPNGButton;
    Image31: TImage;
    Panel24: TPanel;
    Memo19: TMemo;
    RadioGroup8: TRadioGroup;
    Level9Page: TTabSheet;
    Image21: TImage;
    PNGButton21: TPNGButton;
    Image32: TImage;
    Panel25: TPanel;
    Memo20: TMemo;
    RadioGroup9: TRadioGroup;
    Level10Page: TTabSheet;
    Image22: TImage;
    PNGButton22: TPNGButton;
    Image33: TImage;
    Panel26: TPanel;
    Memo21: TMemo;
    RadioGroup10: TRadioGroup;
    ResultTestPage: TTabSheet;
    Image23: TImage;
    PNGButton23: TPNGButton;
    Label23: TLabel;
    Shape5: TShape;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Panel27: TPanel;
    DBGrid1: TDBGrid;
    Panel28: TPanel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel40: TPanel;
    Shape7: TShape;
    Label58: TLabel;
    Label59: TLabel;
    Panel41: TPanel;
    Label60: TLabel;
    Label61: TLabel;
    ScrollBox1: TScrollBox;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image7: TImage;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Memo5: TMemo;
    Memo6: TMemo;
    Memo7: TMemo;
    Memo8: TMemo;
    Memo9: TMemo;
    PNGButton24: TPNGButton;
    TimerTest: TTimer;
    Label62: TLabel;
    SaveResultTestADOQuery: TADOQuery;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Label65: TLabel;
    Label64: TLabel;
    Label63: TLabel;
    Label66: TLabel;
    Name: TLabel;
    Surname: TLabel;
    Group: TLabel;
    Panel4: TPanel;
    Shape4: TShape;
    tabl: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Panel48: TPanel;
    Panel49: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Panel32: TPanel;
    Shape6: TShape;
    DBGrid2: TDBGrid;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    Panel57: TPanel;
    Panel58: TPanel;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Label45: TLabel;
    Panel63: TPanel;
    Panel64: TPanel;
    procedure PNGButton4MouseExit(Sender: TObject);
    procedure PNGButton3MouseEnter(Sender: TObject);
    procedure PNGButton6MouseEnter(Sender: TObject);
    procedure PNGButton5MouseExit(Sender: TObject);
    procedure PNGButton7MouseExit(Sender: TObject);
    procedure PNGButton8MouseEnter(Sender: TObject);
    procedure PNGButton2Click(Sender: TObject);
    procedure PNGButton8MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton7MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton6MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton11MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PNGButton10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PNGButton4Click(Sender: TObject);
    procedure PNGButton5Click(Sender: TObject);
    procedure PNGButton7Click(Sender: TObject);
    procedure PNGButton11Click(Sender: TObject);
    procedure PNGButton12Click(Sender: TObject);
    procedure TimerTestTimer(Sender: TObject);
    procedure PNGButton22Click(Sender: TObject);
    procedure PNGButton14Click(Sender: TObject);
    procedure PNGButton13Click(Sender: TObject);
    procedure PNGButton15Click(Sender: TObject);
    procedure PNGButton16Click(Sender: TObject);
    procedure PNGButton17Click(Sender: TObject);
    procedure PNGButton18Click(Sender: TObject);
    procedure PNGButton19Click(Sender: TObject);
    procedure PNGButton20Click(Sender: TObject);
    procedure PNGButton21Click(Sender: TObject);
    procedure PNGButton23Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label66Click(Sender: TObject);
    procedure PNGButton1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PNGButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WindowMain: TWindowMain;

implementation

uses AuthRegWindowUnit, MainDataModuleUnit;
var
  i, testResult:integer;
{$R *.dfm}

procedure TWindowMain.PNGButton4MouseExit(Sender: TObject);
begin
if(PNGButton4.Tag <> 1) then
begin
PNGButton4.Visible := false;
PNGButton3.Visible := true;
end;
HomePanel.Visible := false;
end;

procedure TWindowMain.PNGButton3MouseEnter(Sender: TObject);
begin
HomePanel.Visible := true;
PNGButton3.Visible := false;
PNGButton4.Visible := true;
end;

procedure TWindowMain.PNGButton6MouseEnter(Sender: TObject);
begin
PNGButton6.Visible := false;
PNGButton5.Visible := true;
TestPanel.Visible := true;
end;

procedure TWindowMain.PNGButton5MouseExit(Sender: TObject);
begin
if(PNGButton5.Tag <> 1) then
begin    
PNGButton6.Visible := true;
PNGButton5.Visible := false;
end;             
TestPanel.Visible := false;
end;

procedure TWindowMain.PNGButton7MouseExit(Sender: TObject);
begin
if(PNGButton7.Tag <> 1 ) Then
begin           
PNGButton7.Visible := false;
PNGButton8.Visible := true;
end;
LecturPanel.Visible := false;
end;



procedure TWindowMain.PNGButton8MouseEnter(Sender: TObject);
begin
PNGButton7.Visible := true;
PNGButton8.Visible := false;
LecturPanel.Visible := true;
end;

procedure TWindowMain.PNGButton2Click(Sender: TObject);
begin
AuthRegWindow.Show();
WindowMain.Close();
end;

procedure TWindowMain.PNGButton8MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := LecturePage;
end;

procedure TWindowMain.PNGButton7MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := LecturePage;
end;

procedure TWindowMain.PNGButton6MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := TestPage;
end;

procedure TWindowMain.PNGButton5MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := TestPage;
end;

procedure TWindowMain.PNGButton4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := HomePage;
end;

procedure TWindowMain.PNGButton3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := HomePage;
end;

procedure TWindowMain.PNGButton11MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
MainPageControl.ActivePage := LecturePage;
end;

procedure TWindowMain.PNGButton10Click(Sender: TObject);
begin
PNGButton7Click(self);
MainPageControl.ActivePage := LecturePage;
end;

procedure TWindowMain.FormCreate(Sender: TObject);
var
  c, r: integer;

  m: integer;
  buf: array[0..2] of string;
  i: integer;
begin
PNGButton4Click(self);
MainPageControl.ActivePage := HomePage;
end;

procedure TWindowMain.PNGButton4Click(Sender: TObject);
begin
PNGButton5.Visible := false;
PNGButton6.Visible := true;
PNGButton7.Visible := false;
PNGButton8.Visible := true;
PNGButton4.Visible := true;
PNGButton3.Visible := false;
PNGButton4.Tag := 1;
PNGButton5.Tag := 0;
PNGButton7.Tag := 0;
TimerTest.Enabled := false;
Panel40.Visible := false;

PNGButton9.Caption := 'Главная';
end;

procedure TWindowMain.PNGButton5Click(Sender: TObject);
begin
PNGButton4.Visible := false;
PNGButton3.Visible := true;
PNGButton7.Visible := false;
PNGButton8.Visible := true;

PNGButton5.Visible := true;
PNGButton6.Visible := false;
PNGButton4.Tag := 0;
PNGButton5.Tag := 1;
PNGButton7.Tag := 0; 
MainPageControl.ActivePage := TestPage;
TestPageControl.ActivePage := MainTestPage; 
TimerTest.Enabled := false;
Panel40.Visible := false; 
PNGButton9.Caption := 'Тест по теме "Динамические структуры данных"';
end;

procedure TWindowMain.PNGButton7Click(Sender: TObject);
begin
PNGButton4.Visible := false;
PNGButton3.Visible := true;
PNGButton5.Visible := false;
PNGButton6.Visible := true;

PNGButton8.Visible := false;
PNGButton7.Visible := true;
PNGButton4.Tag := 0;
PNGButton5.Tag := 0;
PNGButton7.Tag := 1;     
MainPageControl.ActivePage := LecturePage; 
TimerTest.Enabled := false;
Panel40.Visible := false;

PNGButton9.Caption := 'Лекция по теме "Динамические структуры данных"';
end;

procedure TWindowMain.PNGButton11Click(Sender: TObject);
begin
PNGButton5Click(self);
end;

procedure TWindowMain.PNGButton12Click(Sender: TObject);
begin
{Переменная глобальная, для таймера теста(900 секнуд == 15 минут)}
i := 900;
{переменная счетчик правильных ответов}
testResult := 0;
ShowMessage('При отмене теста, набраный результат, НЕ СОХРАНИТЬСЯ!');
{Page}
TestPageControl.ActivePage := Level1Page;
Panel40.Visible := true;
Label60.Caption := '00:15:00';
Label61.Caption := '1/10';
TimerTest.Enabled := true;
Panel9.Visible := true;
end;

procedure TWindowMain.TimerTestTimer(Sender: TObject);
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
  Label60.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

  {Если осталось время для выпонения теста, больше 10 минут, тогда зеленое
  если меньше 10 больше 5 то оранжевое
  если меньше 5 то все херово, красный}
  if(M > 10) then
    Label60.Font.Color := clGreen;
  if(M < 10) and (M > 5) then
    Label60.Font.Color := clOlive;
  if(M < 5) then
    Label60.Font.Color := clRed;
    {Если время истекло, тогда все останавливаем}
  if i = 0 then
  begin
    PNGButton22Click(Self);
    ShowMessage('Время истекло!');
  end;
end;

procedure TWindowMain.PNGButton22Click(Sender: TObject);
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
Panel40.Visible := false;
{Эта функция нужна для вывода время, потраченного на тест}
si := 900 - i;
H := si div 3600;
M := (si mod 3600) div 60;
S := (si mod 3600) mod 60;
{и выводим}
Label36.Caption := Format('%.2d:',[H]) + Format('%.2d:',[M]) + Format('%.2d',[S]);

{Тут мы заносим результаты теста в БД
Уже все настроенно, в SaveResultTestASOQuery SQL запрос написан
и параметры составлены
можешь посмотреть для примера}
SaveResultTestADOQuery.Parameters.ParamByName('Tname').Value := Name.Caption;
SaveResultTestADOQuery.Parameters.ParamByName('Tsurname').Value := Surname.Caption;
SaveResultTestADOQuery.Parameters.ParamByName('Tgroup').Value := Group.Caption;
SaveResultTestADOQuery.Parameters.ParamByName('Tresult').Value := testResult;
SaveResultTestADOQuery.ExecSQL;
{Сэйвим в БД все результаты}
{Тут обновим таблицу, которая находиться в конце теста}

MainDataModule.ResultUsersADOTable.Active := false;
MainDataModule.BestResultADOTabel.Active := false;
MainDataModule.ResultUsersADOTable.Active := true;
MainDataModule.BestResultADOTabel.Active := true;
MainDataModule.BestResultADOTabel.Sort := tabl.Columns[2].FieldName + ' DESC';

{Page}
TestPageControl.ActivePage := ResultTestPage;
{Если результат теста больше 7 то зеленый
меньше 7 и больше 4 то оранжевый
если меньше 4 то все херово}
if(testResult > 7) then Label31.Font.Color := clLime;
if(testResult < 7) and (testResult > 4) then  Label31.Font.Color := clOlive;
if(testResult < 4) then Label31.Font.Color := clRed;
{Выводим результат}
Label31.Caption := IntToStr(testResult);
Label32.Caption := Group.Caption;
Label33.Caption := Surname.Caption;
Label34.Caption := Name.Caption;

end;

procedure TWindowMain.PNGButton14Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup1.ItemIndex = 0) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup1.ItemIndex := -1;
Label61.Caption := '2/10';
TestPageControl.ActivePage := Level2Page;
end;

procedure TWindowMain.PNGButton13Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup2.ItemIndex = 0) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup2.ItemIndex := -1;
Label61.Caption := '3/10';
TestPageControl.ActivePage := Level3Page;
end;

procedure TWindowMain.PNGButton15Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup3.ItemIndex = 2) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup3.ItemIndex := -1;
Label61.Caption := '4/10';
TestPageControl.ActivePage := Level4Page;
end;

procedure TWindowMain.PNGButton16Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup4.ItemIndex = 2) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup4.ItemIndex := -1;
Label61.Caption := '5/10';
TestPageControl.ActivePage := Level5Page;
end;

procedure TWindowMain.PNGButton17Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup5.ItemIndex = 0) then testResult := testResult + 1;  
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup5.ItemIndex := -1;
Label61.Caption := '6/10';
TestPageControl.ActivePage := Level6Page;
end;

procedure TWindowMain.PNGButton18Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup6.ItemIndex = 2) then testResult := testResult + 1;   
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup6.ItemIndex := -1;
Label61.Caption := '7/10';
TestPageControl.ActivePage := Level7Page;
end;

procedure TWindowMain.PNGButton19Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup7.ItemIndex = 1) then testResult := testResult + 1; 
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup7.ItemIndex := -1;
Label61.Caption := '8/10';
TestPageControl.ActivePage := Level8Page;
end;

procedure TWindowMain.PNGButton20Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup8.ItemIndex = 2) then testResult := testResult + 1; 
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup8.ItemIndex := -1;
Label61.Caption := '9/10';
TestPageControl.ActivePage := Level9Page;
end;

procedure TWindowMain.PNGButton21Click(Sender: TObject);
begin
{Тут для теста
Проверка на правильность выбора варианта ответа, при нажатии на кнопку "Далее"}
if(RadioGroup9.ItemIndex = 1) then testResult := testResult + 1;
{Убираем выбранный ответ, чтобы все осталось чистеньким}
RadioGroup9.ItemIndex := -1;
Label61.Caption := '10/10';
TestPageControl.ActivePage := Level10Page;
end;

procedure TWindowMain.PNGButton23Click(Sender: TObject);
begin
PNGButton12Click(self);
end;

procedure TWindowMain.Image2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TWindowMain.Label66Click(Sender: TObject);
begin
PNGButton2Click(self);
end;

procedure TWindowMain.PNGButton1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if(Panel42.Visible = false) then
Panel42.Visible := true
else
Panel42.Visible := false;
end;

procedure TWindowMain.Button1Click(Sender: TObject);
begin

end;
{MainDataModule.BestResultADOTabel.Sort := tabl.Columns[3].FieldName + ' DESC';}
procedure TWindowMain.FormActivate(Sender: TObject);
begin
MainDataModule.BestResultADOTabel.Sort := tabl.Columns[2].FieldName + ' DESC';
end;

procedure TWindowMain.PNGButton1Click(Sender: TObject);
begin
TimerTest.Enabled := false;
Panel40.Visible := false;
end;

end.
