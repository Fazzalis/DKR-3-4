uses GraphABC;
begin
  var x, y: integer;
  MoveTo(10,850); //Ox
  LineTo(1090,850);
  MoveTo(1080,845);
  LineTo(1090,850);
  MoveTo(1080,855);
  LineTo(1090,850);
  
  MoveTo(540,10); //Oy
  lineTo(540,980);
  MoveTo(535,15); //начало координат - (540,850)
  LineTo(540,10);
  MoveTo(545,15);
  LineTo(540,10);
  
  MoveTo(1100,860); //x
  LineTo(1110,850);
  MoveTo(1100,850);
  LineTo(1110,860);
  
  MoveTo(550,10); //y
  LineTo(555,15);
  MoveTo(550,20);
  LineTo(560,10);
  circle(540,850,2);
  x:=-100;
  while (x<=110) do
  begin
    y := 2 * x * x * x + (-2 * x * x) + (5 * x) + 10;
    LineTo(540+x*15,850+y*15);
    Moveto(540+x*15,850+y*15);
    x+=1;
  end;
end.