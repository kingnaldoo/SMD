import turtle

t = turtle.Turtle()
t.speed(0)

def quad(x,y):
  t.pu()
  t.goto(x,y)
  t.pd()

  t.fd(100)
  t.right(90)
  t.fd(50)
  t.right(90)
  t.fd(100)
  t.right(90)
  t.fd(50)
  t.right(90)

s = t.getscreen()
s.onclick(quad)

quad(50,50)
quad(200,50)