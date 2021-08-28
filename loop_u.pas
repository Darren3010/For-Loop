unit loop_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, pngimage, ExtCtrls, jpeg, math;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    RichEdit1: TRichEdit;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  isum: integer;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  icount, inum: integer;
begin
  for icount := 1 to 5 do
  begin
    inum := strtoint(inputbox('Number Entry', 'Enter a number', ''));
    isum := isum + inum;
  end;
  RichEdit1.Lines.Add('The sum is :' + inttostr(isum));
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  ravg: real;
begin
  ravg := isum / 5;
  RichEdit1.Lines.Add('The average is :' + floattostr(ravg));
end;

procedure TForm2.Button3Click(Sender: TObject);
var
  sname: string;
  icount: integer;
begin
  for icount := 1 to 6 do
  begin
    sname := (inputbox('Name entry', 'Enter a name', 'Darren'));
    RichEdit1.Lines.Add(inttostr(icount) + ' The name is: ' + sname);
  end;
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  sname: string;
  icount: integer;
begin
  for icount := 6 downto 1 do
  begin
    sname := (inputbox('Name entry', 'Enter a name', 'Darren'));
    RichEdit1.Lines.Add(inttostr(icount) + ' The name is: ' + sname);
  end;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  ievencount, ioddcount, icount, inum: integer;
begin
  ievencount := 0;
  ioddcount := 0;
  for icount := 1 to 8 do
  begin
    inum := strtoint(inputbox(' Enter a number ', ' Please enter a number ',
        ' 1 '));

    RichEdit1.Lines.Add(' The number is: ' + inttostr(inum));
    if (inum mod 2 = 0) then
    begin
      inc(ievencount);
    end
    else
    begin
      inc(ioddcount);
    end;
  end;
  RichEdit1.Lines.Add(' Number of even numbers is: ' + inttostr(ievencount));
  RichEdit1.Lines.Add(' Number of odd numbers is: ' + inttostr(ioddcount));

end;

procedure TForm2.Button6Click(Sender: TObject);
var
  irnumber, iguessednum, icount: integer;
begin
  randomize; // generating a new random number
  irnumber := randomrange(0, 51);
  for icount := 1 to 5 do
  begin
    iguessednum := strtoint(inputbox(' Guess a number ', ' Input a number ',
        ' e.g 5 '));
    if (iguessednum < irnumber) then
    begin
      Showmessage(
        ' The number you have entered is smaller than the random number ');
    end;
    if (iguessednum > irnumber) then
    begin
      Showmessage(
        ' The number you have entered is greater than the random number ');
    end;
    if (iguessednum = irnumber) then
    begin
      Showmessage(' Congratulations, you have entered the correct number ' +
          inttostr(irnumber));
    end;
    if (icount=5) and (iguessednum<>irnumber) then
   begin
     Showmessage(' You have incorrectly guessed 5 times, you lose.The random number is '+inttostr(irnumber));
   end;
  end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
end;

end.
