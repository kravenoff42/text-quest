
def d4(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..4)
    end
    return ans
end
def d6(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..6)
    end
    return ans
end
def d8(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..8)
    end
    return ans
end
def d10(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..10)
    end
    return ans
end
def d12(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..12)
    end
    return ans
end
def d20(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..20)
    end
    return ans
end
def d30(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..30)
    end
    return ans
end
def d100(num)
    ans = 0
    num.times do
        ans = ans + Random.rand(1..100)
    end
    return ans
end
def d6_drop1
    array = Array.new
    4.times do
        array << Random.rand(1..6)
    end
    array.sort!.shift
    array.reduce(:+)
end