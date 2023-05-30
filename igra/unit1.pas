unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

TForm1 = class(TForm)
    B11: TButton;
    B24: TButton;
    B25: TButton;
    B26: TButton;
    B31: TButton;
    B32: TButton;
    B33: TButton;
    B34: TButton;
    B35: TButton;
    B36: TButton;
    B41: TButton;
    B12: TButton;
    B42: TButton;
    B43: TButton;
    B44: TButton;
    B45: TButton;
    B46: TButton;
    B51: TButton;
    B52: TButton;
    B53: TButton;
    B54: TButton;
    B55: TButton;
    B13: TButton;
    B56: TButton;
    B61: TButton;
    B62: TButton;
    B63: TButton;
    B64: TButton;
    B65: TButton;
    B66: TButton;
    B14: TButton;
    B15: TButton;
    B16: TButton;
    B21: TButton;
    B22: TButton;
    B23: TButton;
    Button37: TButton;
    Button38: TButton;
    procedure reshit(Sender: TObject);
    procedure StrStlb(Sender: TObject);
    procedure razmeshat(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  {memix:array of string;}
  i,j:integer;
  mem,memix:string;
  ch:integer;

implementation

{ TForm1 }

procedure TForm1.razmeshat(Sender: TObject);
begin
 for i:=1 to 6 do
 for j:=1 to 6 do begin
     if random(2)=1 then
     begin
     //TButton(FindComponent('B'+inttostr(i)+inttostr(j))).Caption:='|';
     //( as TButton).Caption:= '---';
     (FindComponent('B'+inttostr(i)+inttostr(j)) as TButton).Caption:='---';
     end
     else
     (FindComponent('B'+inttostr(i)+inttostr(j)) as TButton).Caption:='|';
end;
 end;

procedure TForm1.StrStlb(Sender: TObject);
 var str:string;
 ii,jj:integer;
begin
  Str:= TButton(Sender).name;
  ii:=StrToInt(str[2]);
  jj:=StrToInt(str[3]);
   for j:=1 to 6 do begin
       if (FindComponent('B'+inttostr(ii)+inttostr(j)) as TButton).Caption='---' then
        (FindComponent('B'+inttostr(ii)+inttostr(j)) as TButton).Caption:='|'
     else
         (FindComponent('B'+inttostr(ii)+inttostr(j)) as TButton).Caption:='---';
     end;
  for i:=1 to 6 do begin
       if (FindComponent('B'+inttostr(i)+inttostr(jj)) as TButton).Caption='---' then
        (FindComponent('B'+inttostr(i)+inttostr(jj)) as TButton).Caption:='|'
     else
         (FindComponent('B'+inttostr(i)+inttostr(jj)) as TButton).Caption:='---';
     end;
     if (FindComponent('B'+inttostr(ii)+inttostr(jj)) as TButton).Caption='---' then
        (FindComponent('B'+inttostr(ii)+inttostr(jj)) as TButton).Caption:='|'
     else
         (FindComponent('B'+inttostr(ii)+inttostr(jj)) as TButton).Caption:='---';
end;

procedure TForm1.reshit(Sender: TObject);
var x,y:string;
    k:integer;
begin
 for i:=1 to 6 do begin
      for j:=1 to 6 do begin
          if (FindComponent('B'+inttostr(i)+inttostr(j)) as TButton).Caption='---' then
             begin
             mem:= mem+IntToStr(i)+IntToStr(j);
             ch:=1;
             end;
        end;
      end;
while ch <> 0 do
  begin
  ch:=0;
  for i:=1 to 6 do begin
      for j:=1 to 6 do begin
          if (FindComponent('B'+inttostr(i)+inttostr(j)) as TButton).Caption='---' then
             begin
             mem:= mem+IntToStr(i)+IntToStr(j);
             ch:=1;
             end;
        end;
      end;
  if ch = 1 then
     begin
     for k:=1 to trunc(length(mem)/2) do begin
         x:=mem[k*2-1];
         y:=mem[k*2];
         StrStlb(FindComponent('B'+x+y) as TButton);
         ch:=2;
         end;
     end;
  mem:='';
  if ch = 0 then break;
  end;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin

end;


initialization
  {$I unit1.lrs}

end.

