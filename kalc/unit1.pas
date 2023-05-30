unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    Button26: TButton;
    Button27: TButton;
    Button28: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Label1: TLabel;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    Panel1: TPanel;
    procedure Uniqznaki(Sender: TObject);
    procedure ClearAll(Sender: TObject);
    procedure SymbClear(Sender: TObject);
    procedure Clear(Sender: TObject);
    procedure Ravno(Sender: TObject);
    procedure ZnakiClick(Sender: TObject);
    procedure numclick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }

  end;

var
  Form1: TForm1;
     var i,z,povt,zn2,zapya:integer;
         Sum:real;
         y,x1:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ZnakiClick(Sender: TObject);
var stroka,x:string;

begin
  zapya:=0;
  if povt=1 then
   begin
        stroka:=Label1.Caption;
        Delete (stroka, Length(stroka),1);
        Label1.Caption:=stroka + TButton(Sender).Caption;
        case TButton(Sender).caption of
        '/': z:=1;
        '*': z:=2;
        '-': z:=3;
        '+': z:=4;
        end;
   end
  else
  begin
       i:=i+1;
       if i=1 then
          begin
            Label1.Caption:=Label2.Caption + TButton(Sender).Caption;
            case TButton(Sender).caption of
            '/': z:=1;
            '*': z:=2;
            '-': z:=3;
            '+': z:=4;
            end;
            x1:=Label2.Caption;
            Label2.Caption:=FloatToStr(0);
          end;
       if i=2 then
          begin
            y:=Label2.Caption;
            if zn2=1 then
            begin
             if z=1 then
                begin
                if y='0' then label2.caption:='Нельзя'
                   else
                Sum:=StrToFloat(x1)/StrToFloat(y);
                end;
             if z=2 then
                Sum:=StrToFloat(x1)*StrToFloat(y);
             if z=3 then
                Sum:=StrToFloat(x1)-StrToFloat(y);
             if z=4 then
                Sum:=StrToFloat(x1)+StrToFloat(y);
             x1:=FloatToStr(Sum);
            end;
           if TButton(Sender).Caption='/' then
            z:=1;
           if TButton(Sender).Caption='*' then
            z:=2;
           if TButton(Sender).Caption='-' then
            z:=3;
           if TButton(Sender).Caption='+' then
            z:=4;
           Label1.Caption:=Label1.Caption + Label2.Caption +TButton(Sender).Caption;
           Label2.Caption:=FloatToStr(Sum);
       end;
       if i>2 then
        begin
             y:=Label2.Caption;
             if zn2=1 then
            begin
             if z=1 then
                Sum:=StrToFloat(x1)/StrToFloat(y);
             if z=2 then
                Sum:=StrToFloat(x1)*StrToFloat(y);
             if z=3 then
                Sum:=StrToFloat(x1)-StrToFloat(y);
             if z=4 then
                Sum:=StrToFloat(x1)+StrToFloat(y);
             x1:=FloatToStr(Sum);
            end;
             if TButton(Sender).Caption='/' then
                z:=1;
             if TButton(Sender).Caption='*' then
                z:=2;
             if TButton(Sender).Caption='-' then
                z:=3;
             if TButton(Sender).Caption='+' then
                z:=4;
             Label1.Caption:=Label1.Caption+Label2.Caption + TButton(Sender).Caption;
             Label2.Caption:=FloatToStr(Sum);
        end;
       //x:=Label2.Caption;
       povt:=1;
       zn2:=1;
  end;

end;

procedure TForm1.Ravno(Sender: TObject);
begin
     zapya:=0;
      y:=Label2.Caption;
     if z=1 then
      Sum:=StrToFloat(x1)/StrToFloat(y);
     if z=2 then
      Sum:=StrToFloat(x1)*StrToFloat(y);
     if z=3 then
      Sum:=StrToFloat(x1)-StrToFloat(y);
     if z=4 then
      Sum:=StrToFloat(x1)+StrToFloat(y);
     x1:=FloatToStr(Sum);
   Label1.Caption:='';
   Label2.Caption:=FloatToStr(Sum);
   y:='0';
   i:=0;
   zn2:=0;
   //proc:=0;
end;

procedure TForm1.SymbClear(Sender: TObject);
 var Str:string;
begin
  Str:=Label2.Caption;
  Delete(Str, Length(Str), 1);
  if Str='' then Str:='0';
  Label2.Caption:=Str;
end;

procedure TForm1.ClearALL(Sender: TObject);
begin
 zapya:=0;
 Label2.Caption:='0';
 Label1.Caption:='' ;
 y:='0';
 i:=0;
 Sum:=0;
 x1:='0';

end;

procedure TForm1.Uniqznaki(Sender: TObject);
 var P:integer;
     str1,str2:string;
begin
zapya:=0;
if TButton(Sender).Caption='±' then
 begin
 Str1:=Label2.caption;
 Str2:='-';
 P:=Pos(Str2, Str1);
 if P=0 then
    Label2.caption:='-' + Label2.caption;
 if P=1 then
  begin
    Delete (Str1,1,1);
    Label2.caption:=Str1;
  end
 end;
if TButton(Sender).Caption='√' then
   begin
    Label1.Caption:=Label1.Caption +'√('+Label2.caption+')';
    Label2.caption:=FloatToStr(sqrt(StrToFloat(Label2.caption)));
   end;
if TButton(Sender).Caption='1/x' then
   begin
    Label1.Caption:=Label1.Caption +'1/('+Label2.caption+')';
    Label2.caption:=FloatToStr(1/(StrToFloat(Label2.caption)));
   end;
if TButton(Sender).Caption='%' then
   begin
        y:=Label2.Caption;
        y:=FloatToStr(StrToFloat(x1)*(StrToFloat(y)*0.01));
        Label2.Caption:=y;
   end;
//x1:=FloatToStr(Sum);
end;

procedure TForm1.Clear(Sender: TObject);
begin
  Label2.Caption:='0';
end;

procedure TForm1.numclick(Sender: TObject);
begin
  if Label2.Caption=FloatToStr(Sum) then Label2.Caption:='0';
  if TButton(Sender).Caption=',' then
     begin
     zapya:=1;
     Label2.Caption:=Label2.Caption+TButton(Sender).Caption;
     end
  else
  if zapya=1 then Label2.Caption:=Label2.Caption+TButton(Sender).Caption
  else
  Label2.Caption:=FloatToStr(StrToFloat(Label2.Caption)*10+StrToFloat(TButton(Sender).Caption));
  povt:=0;
end;

end.

