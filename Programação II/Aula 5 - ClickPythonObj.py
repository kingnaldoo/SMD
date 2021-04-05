import turtle

t = turtle.Turtle()
t.speed(0)
t.ht()
t.tracer(1000)

def quad(x,y):
  t.pu()
  t.goto(x,y)
  t.pd()
  t.fd(10)
  t.rt(90)
  t.fd(10)
  t.rt(90)
  t.fd(10)
  t.rt(90)
  t.fd(10)
  t.rt(90)

class Box:
  def __init__(self,x,y):
    self.x = x
    self.y = y

  def des(c):
    quad(c.x,c.y)
    c.x = c.x + 1

def aperta(x,y):
  w = Box(x,y)
  vec.append(w)


s = t.getscreen()
s.onclick(aperta)

vec = []


while True:
  t.clear()

  for e in vec:
    m = e;
    m.des()

  t.update()
