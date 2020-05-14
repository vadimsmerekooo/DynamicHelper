unit WindowUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngextra, pngimage, ExtCtrls, ImgList, StdCtrls, ComCtrls;

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
    Shape4: TShape;
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
    Label4: TLabel;
    Panel4: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Image3: TImage;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  WindowMain: TWindowMain;

implementation

uses AuthRegWindowUnit;
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
MainPageControl.ActivePage := LecturePage;
end;

procedure TWindowMain.FormCreate(Sender: TObject);
begin
PNGButton4Click(self);
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

end;

procedure TWindowMain.PNGButton5Click(Sender: TObject);
begin
PNGButton4.Visible := false;
PNGButton3.Visible := true;
PNGButton7.Visible := false;
PNGButton8.Visible := true;
PNGButton4.Tag := 0;
PNGButton5.Tag := 1;
PNGButton7.Tag := 0;
end;

procedure TWindowMain.PNGButton7Click(Sender: TObject);
begin
PNGButton4.Visible := false;
PNGButton3.Visible := true;
PNGButton5.Visible := false;
PNGButton6.Visible := true;
PNGButton4.Tag := 0;
PNGButton5.Tag := 0;
PNGButton7.Tag := 1;
end;

end.
