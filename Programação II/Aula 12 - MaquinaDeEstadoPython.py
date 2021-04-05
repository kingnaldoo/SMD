import turtle
import math

t = turtle.Turtle()
s = t.getscreen()
t.speed(0)
t.ht()
t.tracer(0)

class Vetor:
  def __init__(self,x,y):
    self.x = x
    self.y = y

  def soma(v1,v2):
    #v1.x = v1.x + v2.x
    #v1.y = v1.y + v2.y
    v = Vetor(v1.x+v2.x,v1.y+v2.y)
    return v

  def menos(v1,v2):
    #v1.x = v1.x - v2.x
    #v1.y = v1.y - v2.y
    v = Vetor(v1.x-v2.x,v1.y-v2.y)
    return v

  def mostra(v,start):
      t.pu()
      t.goto(start.x,start.y)
      t.pd()
      start = start.soma(v)
      t.goto(start.x,start.y)
      #t.circle(2)
      #t.write(v)

  def tamanho(v):
    t = v.x*v.x + v.y*v.y
    t = pow(t,0.5)
    return t

  def multi(v,m):
    v.x = v.x*m
    v.y = v.y*m

  def roda(v,angulo):
    angulo = angulo*math.pi/180
    nx = v.x*math.cos(angulo) - v.y*math.sin(angulo)
    ny = v.x*math.sin(angulo) + v.y*math.cos(angulo)
    v.x = nx
    v.y = ny

class Player:
  def __init__(self,x,y):
    self.pos = Vetor(x,y)
    self.vel = Vetor(0.1,0)
    self.target = Vetor(100,0)
    self.estado = "start"

  def atualiza(c):
    #desenha
    t.pu()
    t.goto(c.pos.x,c.pos.y)
    t.pd()
    t.dot(5)

    c.vel.multi(100)
    c.vel.mostra(c.pos)
    c.vel.multi(0.01)

    distancia = c.target.menos(c.pos)
    tDistancia = distancia.tamanho()
    tVelocide = c.vel.tamanho()

    lVel = 2
    lDistClose = 20
    lDistEnd = 1

    #verificar maquina de estados
    #print(c.estado)
    if c.estado == "start":
      if tDistancia < lDistClose:
        c.estado = "close"
      elif tVelocide > lVel:
        c.estado = "stable"
      else:
        tVelocide = tVelocide + 0.1
    elif c.estado == "stable":
      if tDistancia < lDistClose:
        c.estado = "close"

    elif c.estado == "close":
      if tDistancia < lDistEnd:
        c.estado = "end"
      else:
        tVelocide = tVelocide - 0.1
        if tVelocide < 0.1:
          tVelocide = 0.1
    elif c.estado == "end":
      if tDistancia > lDistEnd:
        c.estado = "start"
      else:
        tVelocide = 0

    
    distancia.multi(tVelocide/distancia.tamanho())
    c.vel = distancia
    
    c.pos = c.pos.soma(c.vel)
    
    #c.x = c.x + c.vel.x
    #c.y = c.y + c.vel.y
    
p = Player(0,0)

def up():
  p.vel.multi(1.1)

def down():
  p.vel.multi(0.9)  

def right():
  p.vel.roda(-5)
  #p.dy = 0

def left():
  p.vel.roda(5)
  #p.dy = 0

def click(x,y):
  p.target.x = x
  p.target.y = y
  print("({},{})".format(x,y))
  #print(y)


# eventos de teclado
s.onkey(up, "Up")
s.onkey(down, "Down")
s.onkey(right, "Right")
s.onkey(left, "Left")
s.listen()

s.onclick(click)

def f():
  t.clear()

  p.atualiza()

  t.update()
  s.ontimer(f, 100)
f()
