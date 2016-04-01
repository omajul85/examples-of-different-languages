def dbl_linear(n)
    twice_linear = Enumerator.new do |res|
      ary = []
      ary << 1
      index = -1
      loop do
        index += 1
        ary << 2 * ary[index] + 1
        ary << 3 * ary[index] + 1
        ary = ary.sort.uniq
        res << ary[index]
      end
    end
    twice_linear.take(n+1).last
end

p dbl_linear(10)
p dbl_linear(20)
p dbl_linear(30)
p dbl_linear(50)