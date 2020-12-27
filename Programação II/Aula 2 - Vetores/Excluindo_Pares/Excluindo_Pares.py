numeros = []

for i in range(0, 101):
  numeros.append(i)

for j in numeros:
  if j % 2 == 0:
    numeros.remove(j)

print(numeros)