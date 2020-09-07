# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
 
  if arr.length() == 0 || arr.length() == 1
    return false
  else
    arr.each do |i|
      check = n - i
      if check == i && (not arr.count(i) > 1)
        return false
      end
      
      if arr.include?(check)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowls = ["A", "E", "I", "O", "U"]
  
  if (not s[0] =~ /[[:alpha:]]/) || s.empty?
    return false
  end
  
  return (not vowls.include?(s[0].upcase))
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  
  s.each_char do |i|
    if (i =~ /[[:alpha:]]/)
      return false
    end
  end
  
  if s.to_i(2) % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    if @isbn.empty? || @price <= 0
      raise ArgumentError 
    end
  end
  
  def price_as_string
    sprintf("$%.2f", @price)
  end

end
