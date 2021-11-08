import math
import numpy as np
import matplotlib.pyplot as plt

def f(x): #função
	return x + 3*math.cos(x) - np.exp(x)

def d(x): #derivada
    return 1 - 3*math.sin(x) - np.exp(x)

a = -1
xn = -2 #ponto inicial
eps = 10**(-2)#0.000001
i = 0
y = []
eixoX = []
n = 100

x = np.linspace(a,xn, 100)
for i in range(n):
    y.append(f(x[i]))
    eixoX.append(0)




def newton(xn):

    if(d(xn) == 0):
        print('Escolha outro ponto. f\'(x) = 0.')
        return

    print('Ponto inicial: {}'.format(xn))
    print('Precisão: {:.10f}'.format(eps))
    print('\nProcesso de Convergencia:\n')

    print('X0 = {:.10f}'.format(xn))
    x0 = xn-(f(xn)/d(xn))
    cont_it = 1
    fx0 = 100

    print('X{} = {:.10f}'.format(cont_it, x0))
    while abs(fx0) > eps:
        xn = x0
        x0 = xn-(f(xn)/d(xn))
        fx0 = f(x0)
        cont_it += 1
        print('X{} = {:.10f}'.format(cont_it, x0))

    print ('\nQuantidade de iterações processadas: {}'.format(cont_it))
    print ('Valor final: {:.10f}'.format(x0))
    plt.plot(x,y,'b',x,eixoX,'black')
    plt.show()

newton(xn)