from turtle import * 

forward(50)
left(90)
forward(40)
left(90)
color('red')
forward(40)
left(90)
forward(40)
penup()
forward(50)

#clear()
reset()

pendown()
forward(50)


#-------------------------

x = True
y = 2
x = "oi"
print(x)

def faz(valor):
  global y #estou deixando claro que é global
  z = 2
  y = 3
  print(valor+y)
  return valor+1

x = faz(3)
#print(z)
print(y)
print(x)

y = 3
if y==3:
  print("igual")
elif y<3:
  print("menor")
else:
  print("maior")

while y<100:
  print(y)
  y=y+1

#t = [1,2,3,4]
for q in range(2,4):
  print(q)
