from numpy import linspace, meshgrid
from matplotlib.mlab import griddata
import math

def grid(x, y, z, resX=100, resY=100):
    "Convert 3 column data to matplotlib grid"
    xi = linspace(min(x), max(x), resX)
    yi = linspace(min(y), max(y), resY)
    Z = griddata(x, y, z, xi, yi)
    X, Y = meshgrid(xi, yi)
    return X, Y, Z     

def triangleArea(gp):
    distance = lambda p1,p2: math.hypot(p1[0]-p2[0], p1[1]-p2[1])
    side_a = distance(gp[0], gp[1])
    side_b = distance(gp[1], gp[2])
    side_c = distance(gp[2], gp[0])
    s = 0.5 * (side_a + side_b + side_c)
    return math.sqrt(s * (s - side_a) * (s - side_b) * (s - side_c))
    
def listIntersection(a, b):
    return list(set(a) & set(b))
    
def area(p):
    return 0.5 * abs(sum(x0*y1 - x1*y0 for ((x0, y0), (x1, y1)) in segments(p)))

def segments(p):
    return zip(p, p[1:] + [p[0]])

def angle(x1, y1, x2, y2):
    inner_product = x1*x2 + y1*y2
    len1 = math.hypot(x1, y1)
    len2 = math.hypot(x2, y2)
    cosine = inner_product/(len1*len2)
    if abs(cosine) > 1:
        cosine = math.copysign(1, cosine)
    return math.acos(cosine)