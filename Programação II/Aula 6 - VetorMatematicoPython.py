import turtle

t = turtle.Turtle()
s = t.getscreen()
t.speed(0)


def soma(v1,v2):
  if len(v1)==2 and len(v2)==2:
    return [ v1[0]+v2[0],v1[1]+v2[1]] 

def menos(v1,v2):
  if len(v1)==2 and len(v2)==2:
    return [ v1[0]-v2[0],v1[1]-v2[1]]

def mostra(v,start=[0,0]):
  if len(v)==2 and len(start)==2:
    t.pu()
    t.goto(start)
    t.pd()
    t.goto(soma(start,v))
    t.circle(2)
    t.write(v)

a = [50,50]
b = [-50,50]
c = soma(a,b)

mostra(a)
mostra(b)
mostra(c)
mostra(menos(a,b),b)