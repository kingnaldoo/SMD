class Base:
  def __init__(c):
    print("Base")
    c.x = 2

  def faz(c):
    print("faz"+str(c.x))

class Diferente:
  def __init__(c):
    c.b = Base()
  
  def fazTambem(c):
    for i in range(3):
      c.b.faz()


class Novo(Base):
  def __init__(c):
    super().__init__()
    print("Novo")
    c.x = 3

  def faz(c):
    print("faz")

  def fazTambem(c):
    for i in range(3):
      super().faz()

b = Base()
b.faz()

n = Novo()
n.fazTambem()

v = [b,n,2]
b = 2