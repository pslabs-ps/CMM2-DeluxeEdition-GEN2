mode 3
gui cursor on
controller mouse open 2,leftclick,rightclick
settick 20, myint
do:loop
'
sub myint
  gui cursor mouse(x,2),mouse(y,2)
end sub
'
sub leftclick
  static integer n
  local integer x=mouse(x,2),y=mouse(y,2)
  gui cursor off
  gui cursor on 1,x,y,rgb(red)
  n=n+1
  print @(100,100)"left",n
  end sub
'
sub rightclick
  static integer n=0
  local integer x=mouse(x,2),y=mouse(y,2)
  gui cursor off
  gui cursor on 0,x,y
  n=n+1
  print @(200,100)"Right",n
end sub
