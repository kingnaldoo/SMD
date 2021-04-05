import turtle

up = False;

t = turtle.Turtle()
s = t.getscreen()
t.speed(1)

'''
t.pu()
t.goto(50,50)
t.write("testamos tudo",False,"center",("Arial", 14, "bold"))
t.goto(-50,-50)
t.write("testamos nada",False,"center",("Arial", 14, "bold"))
t.pd()
'''

print("texto {} foi".format(22))

#x = input()
#print(x)

def f():
  t.fd(1)

def r():
  t.rt(1)

def l():
  t.lt(1)

def muda():
  global up
  #print(up)
  if(up):
    t.pd()
    up = False
  else:
    t.pu()
    up = True

s.onkey(f, "Up")
s.onkey(r, "Right")
s.onkey(l, "Left")
s.onkey(muda,"space")
s.listen()




