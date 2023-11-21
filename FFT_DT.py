import cmath
import math

data = list(map(float, input().split()))

[data[0], data[4], data[2], data[6], data[1], data[5], data[3], data[7]] = [
    data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7]]


def stage1(a, b):
    x = a+b
    y = a-b
    return [x, y]


print(f'sequence : {data}')

'''stage 1'''
for i in range(0, 7):
    if i % 2 == 0:
        j = i+1
        [data[i], data[j]] = stage1(data[i], data[j])

print(f'stage 1 : {data}')


def stage2(a, b, c, d):
    d = (complex(0, -1)*d)
    w = a+c
    x = b+d
    y = a-c
    z = b-d
    return [w, x, y, z]


'''stage 2'''
for i in range(0, 7):
    if i % 4 == 0:
        j = i+1
        k = i+2
        l = i+3
        [data[i], data[j], data[k], data[l]] = stage2(
            data[i], data[j], data[k], data[l])

print(f'stage 2 : {data}')


def stage3(a, b, c, d, e, f, g, h):
    f = (complex(1, -1)*f)/(math.sqrt(2))
    g = (complex(0, -1)*g)
    h = (complex(-1, -1)*h)/(math.sqrt(2))

    x1 = a+e
    x2 = b+f
    x3 = c+g
    x4 = d+h
    x5 = a-e
    x6 = b-f
    x7 = c-g
    x8 = d-h

    return [x1, x2, x3, x4, x5, x6, x7, x8]


'''stage 3'''
[data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7]] = stage3(
    data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7])

print(f'stage 3 : {data}')
