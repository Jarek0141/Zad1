unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
 function qwerty(Ch:integer):string;
 begin
 case ch of
0:Result:='����';
1:Result:='����';
2:Result:='���';
3:Result:='���';
4:Result:='������';
5:Result:='����';
6:Result:='�����';
7:Result:='����';
8:Result:='������';
9:Result:='������';
10:Result:='������';
11:Result:='�����������';
12:Result:='����������';
13:Result:='����������';
14:Result:='������������';
15:Result:='����������';
16:Result:='�����������';
17:Result:='����������';
18:Result:='������������';
19:Result:='������������';
20:Result:='��������';
30:Result:='��������';
40:Result:='�����';
50:Result:='���������';
60:Result:='����������';
70:Result:='���������';
80:Result:='�����������';
90:Result:='���������';
21..29:Result:='�������� '+qwerty(ch mod 10);
31..39:Result:='�������� '+qwerty(ch mod 10);
41..49:Result:='����� '+qwerty(ch mod 10);
51..59:Result:='��������� '+qwerty(ch mod 10);
61..69:Result:='���������� '+qwerty(ch mod 10);
71..79:Result:='��������� '+qwerty(ch mod 10);
81..89:Result:='����������� '+qwerty(ch mod 10);
91..99:Result:='��������� '+qwerty(ch mod 10);
 end;
 end;
procedure TForm1.Button1Click(Sender: TObject);
var i,b:integer;
begin
for I := 0 to 19 do
begin
Memo1.Lines.Add(qwerty(random(100)));

end;


end;

end.
