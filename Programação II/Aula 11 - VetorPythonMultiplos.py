import turtle
import math
import random

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
    v1.x = v1.x + v2.x
    v1.y = v1.y + v2.y
    v = Vetor(v1.x,v1.y)
    return v

  def menos(v1,v2):
    v1.x = v1.x - v2.x
    v1.y = v1.y - v2.y

  def mostra(v,start):
      t.pu()
      t.goto(start.x,start.y)
      t.pd()
      start.soma(v)
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

class Movel:
  def __init__(self,x,y):
    self.pos = Vetor(x,y)
    self.vel = Vetor(0.1,0)
    self.target = Vetor(100,0)

  def des(c):
    t.pu()
    t.goto(c.pos.x,c.pos.y)
    t.pd()
    t.dot(5)
    st = Vetor(c.pos.x,c.pos.y)

    c.vel.multi(100)
    c.vel.mostra(st)
    c.vel.multi(0.01)

    v = Vetor(c.target.x,c.target.y)
    v.menos(c.pos)
    v.multi(1/v.tamanho())
    c.vel = v
    
    c.pos.soma(c.vel)

class Player:
  def __init__(self,x,y):
    self.movel = Movel(x,y)

  def des(c):
    c.movel.des()

class Inimigo:
  def __init__(self,x,y):
    self.movel = Movel(x,y)

  def des(c):
    c.movel.target = p.movel.pos
    #calcular a distancia
    v = Vetor(c.movel.target.x,c.movel.target.y)
    v.menos(c.movel.pos)
    d = v.tamanho()
    if d < 10:
      c.movel.pos = Vetor(random.randint(-200,200),random.randint(-200,200))
    c.movel.des()

p = Player(0,0)
ivtr = []
for i in range(16):
  ini = Inimigo(random.randint(-200,200),random.randint(-200,200))
  ivtr.append(ini)

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
  p.movel.target.x = x
  p.movel.target.y = y
  print(x)
  print(y)


# eventos de teclado
s.onkey(up, "Up")
s.onkey(down, "Down")
s.onkey(right, "Right")
s.onkey(left, "Left")
s.listen()

s.onclick(click)

def f():
  t.clear()

  p.des()
  for i in ivtr:
    i.des()

  t.update()
  s.ontimer(f, 50)

f()