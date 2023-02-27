import numpy as np
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D



def plot_equation(a,b,c,d):
    '''
    ax+by+cz=d
    '''

    x = np.linspace(-1,1,10)
    y = np.linspace(-1,1,10)

    X,Y = np.meshgrid(x,y)
    Z = (d - a*X - b*Y) / c

    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    ax.plot_surface(X, Y, Z, alpha=0.2)
    return ax

def add_plot_equation(ax, a,b,c,d):
    '''
    ax+by+cz=d
    '''

    x = np.linspace(-1,1,10)
    y = np.linspace(-1,1,10)

    X,Y = np.meshgrid(x,y)
    Z = (d - a*X - b*Y) / c

    ax.plot_surface(X, Y, Z, alpha=0.2)
    return ax


def add_axis(ax):
    ax.plot([0, 0, 0],[0 ,0 ,0],[0, 0, 1])
    ax.plot([0, 0, 0],[0 ,0 ,1],[0, 0, 0])
    ax.plot([0, 0, 1],[0 ,0 ,0],[0, 0, 0])