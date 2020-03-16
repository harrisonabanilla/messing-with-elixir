defmodule FizzBuzz do
  def calculate_fb(a,b) when a > b do
    calculate_fb(b,a)
  end
  def calculate_fb(number, max) do
    cond do
      rem(number, 15) == 0 -> 
        IO.puts "#{number} FizzBuzz!"
      rem(number, 3) == 0 -> 
        IO.puts "#{number} Fizz!"
      rem(number, 5) == 0 -> 
        IO.puts "#{number} Buzz!"
      true -> 
        IO.puts number
    end
    if number + 1 <= max do
      calculate_fb(number + 1, max)
    end
  end
end