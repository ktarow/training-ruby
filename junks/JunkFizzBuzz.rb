class JunkFizzBuzz
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def if()
    @arr.each do |num|
      if num % 3 == 0 && num % 5 ==0
        puts "FizzBuzz : #{num}"
      elsif num % 3 == 0
        puts "Fizz : #{num}"
      elsif num % 5 == 0
        puts "Buzz : #{num}"
      else
        puts num
      end
    end
  end

  def case
    for num in @arr
      case 0
        when num % 15
          puts "FizzBuzz : #{num}"
        when num % 3
          puts "Fizz : #{num}"
        when num % 5
          puts "Buzz : #{num}"
        else
          puts num
      end
    end
  end

end

fizzbuzz = JunkFizzBuzz.new((0..100).to_a)

fizzbuzz.if 
fizzbuzz.case
