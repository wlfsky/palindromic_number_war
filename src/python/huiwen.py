# coding=utf-8
""" 回文数 """

import datetime
from numba import jit

"""
是否回文
"""
def ishuiwen(n:int):
    sn = 0 # 可以不用类型
    sn = n
    tn = 0
    while sn != 0:
        tn = tn * 10 + sn % 10
        sn = sn // 10
    if tn == n:
        return True
    return False

"""
回文10000000
"""
def huiwen(max:int=10000000):
    tx = 0
    for i in range(0, max):
        # print(f"数:{i}")
        if ishuiwen(i):
            tx+=1
            # print(f"回文数:{i}")
    return tx

@jit
def run():
    t1 = datetime.datetime.now()
    r = huiwen()
    t2 = datetime.datetime.now()
    tx = t2 - t1
    print(f"回文 结果:: {r} == 时间::[{tx.seconds}]秒{tx.microseconds/1000}毫秒")


if __name__ == '__main__':
    run()
# python .\huiwen.py;python --version