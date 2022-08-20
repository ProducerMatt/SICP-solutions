#!/usr/bin/env python3

def A(x, y):
    if y == 0:
        return 0
    elif x == 0:
        return y * 2
    elif y == 1:
        return 2
    else:
        return A((x - 1), A(x, (y - 1)))

print("A(1,10):", A(1, 10))
print("A(2, 4):", A(2, 4))
print("A(3, 3):", A(3, 3))

def f(n):
    return A(0, n)
def g(n):
    return A(1, n)
def h(n):
    return A(2, n)

print("f(4):", f(4))
print("g(4):", g(4))
print("h(4):", h(4))

def tetra(b, p):
    if b == 0:
        return 0
    elif p == 1:
        return b
    else:
        answer = b
        for i in range(1, p):
            answer = b ** answer
        return answer
