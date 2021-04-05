import turtle

print("fun")
def fun(n):
  print(n)
  if n > 1:
    fun(n-1)

fun(5)





print("sum")
def sum(list):
  if (len(list)==0):
    return 0
 
  return list[0] + sum( list[1:]) 

print(sum([2,5,8,9]))

#3! = 3*2! = 3*2*1! = 3*2*1
print("factorial")
def factorial ( N ):
  if ( N == 0 ): 
    return 1
  else:
    return N * factorial(N-1)

def factorial2 ( N ):
  r = 1
  for i in range(1,N+1):
    r = r * i
  return r

print(factorial(5))
print(factorial2(5))

def printFun(test):
 
    if (test < 1):
        x = 1
    else:
        print(test)
        printFun(test-1)  # statement 2
        print(test)
    
 
# Driver Code
test = 3
printFun(test)
import turtle

print("fun")
def fun(n):
  print(n)
  if n > 1:
    fun(n-1)

fun(5)





print("sum")
def sum(list):
  if (len(list)==0):
    return 0
 
  return list[0] + sum( list[1:]) 

print(sum([2,5,8,9]))

#3! = 3*2! = 3*2*1! = 3*2*1
print("factorial")
def factorial ( N ):
  if ( N == 0 ): 
    return 1
  else:
    return N * factorial(N-1)

def factorial2 ( N ):
  r = 1
  for i in range(1,N+1):
    r = r * i
  return r

print(factorial(5))
print(factorial2(5))

def printFun(test):
 
    if (test < 1):
        x = 1
    else:
        print(test)
        printFun(test-1)  # statement 2
        print(test)
    
 
# Driver Code
test = 3
printFun(test)
