import turtle

t = turtle.Turtle()
s = t.getscreen()
t.speed(0)
t.ht()
t.tracer(0)

class Player:
  def __init__(self,x,y):
    self.x = x
    self.y = y
    self.dx = 0
    self.dy = -1

  def des(c,pla,p2):
    t.pu()
    t.goto(c.x,c.y)
    t.pd()
    t.dot(10)

    if c.y > 20:
      c.dy = -1
    
    c.x = c.x + c.dx
    if not pla.bate(c):
      if not p2.bate(c):
        c.y = c.y + c.dy

class Plataforma:
  def __init__(self,x,y):
    self.x = x
    self.y = y
    self.tam = 50

  def desenha(c):
    t.pu()
    t.goto(c.x,c.y)
    t.pd()
    t.setheading(0)
    t.fd(c.tam)
    t.rt(90)
    t.fd(10)
    t.rt(90)
    t.fd(c.tam)
    t.rt(90)
    t.fd(10)

  def bate(c,pl):
    if pl.x > c.x and pl.x < c.x + c.tam:
      if pl.y + pl.dy < c.y and pl.y > c.y-10:
        return True
    return False
    
p = Player(0,0)

pla = Plataforma(-25,0)
pla2 = Plataforma(35,0)

def up():
  #p.dx = 0
  p.dy = 1

def right():
  p.dx = 1
  #p.dy = 0

def left():
  p.dx = -1
  #p.dy = 0

# eventos de teclado
s.onkey(up, "Up")
#s.onkey(down, "Down")
s.onkey(right, "Right")
s.onkey(left, "Left")
s.listen()

while True:
  t.clear()


  p.des(pla,pla2)
  pla.desenha()
  pla2.desenha()

  t.update()
