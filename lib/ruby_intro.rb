# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
  # the above command sums the elements of the array.
end

def max_2_sum elements
  sum(elements.sort.last(2))
  #sort the elements in ascending order and take the last two elements
end


def sum_to_n? arr, tot
  if arr.empty?
    if tot == 0 
      return false 
    end
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == tot
    end
  end

  return false
end
# Part 2

def hello(name)
    "Hello, " + name
end

def starts_with_consonant? s
  (s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
  #checks the regular expression for first element in the string and returns true/fals
end

def binary_multiple_of_4? s
  s =~ /(^0|^[10]*00)$/    
  #checks the regular expression for binary multiple of 4
end
# Part 3


class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
