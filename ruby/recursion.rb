def append(ary, n)
    return ary if n < 0
    ary << n
    append(ary, n - 1)
end

def reverse_append(ary, n)
    return ary if n < 0
    ary.unshift n
    reverse_append(ary, n - 1)
end

def reverse_append_v2(ary, n)
    return ary if n < 0
    reverse_append_v2(ary, n - 1)
    ary << n
    ary
    
end

# 0, 1, 1, 2, 3, 5, 8
def fib(n)
    return 0 if n == 0
    return 1 if n == 1
    fib(n - 2) + fib(n - 1)
end


# p reverse_append_v2([], 5)
p fib(10)