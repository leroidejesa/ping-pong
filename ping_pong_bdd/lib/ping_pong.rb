class Fixnum
  define_method(:ping_pong) do
    new_array = []
    numbers = []
    zero = 0
    temp_self = self.+(1)
    temp_self.times() do |add1|
      new_array.push(add1)
    end
    new_array.shift()
    new_array.each() do |number|
      if zero.==(number.%(15))
        numbers.push("ping-pong")
      elsif zero.==(number.%(3))
        numbers.push("ping")
      elsif zero.==(number.%(5))
        numbers.push("pong")
      elsif zero.<(number.%(3))
        numbers.push(number)
      end
    end
    numbers
  end
end
