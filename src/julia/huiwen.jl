# 20200816
using Dates
using Printf

"""
是否回文
"""
function ishuiwen(n::Int64)
    sn::Int32 = 0 # 可以不用类型
    sn = n
    tn::Int32 = 0
    while sn != 0
        tn = tn * 10 + sn % 10
        sn = sn ÷ 10
    end
    if tn == n
        return true
    end
    return false
end

"""
回文10000000
"""
function huiwen(max::Int64=10000000)
    tx::Int32 = 0
    x::Int32 = 0
    for i = 0:max
        if ishuiwen(i) == true
            tx+=1
        end
    end
    return tx
end

function run()
    t1 = now()
    r = huiwen(10000000)
    t2 = now()
    tx = t2 - t1
    @printf("回文 结果:: %d == 时间:: %F \n", r, Dates.value(tx))
end

run()
# julia .\huiwen.jl; julia --version