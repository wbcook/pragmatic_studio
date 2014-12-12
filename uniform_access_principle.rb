# A class that demonstrates the uniform access principle of attributes in classes.
class BookInStock
  attr_reader :isbn
  attr_accessor :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  def to_s
    "ISBN: #{@isbn}, Price: #{@price}"
  end
  def price_in_cents
    Integer(price*100 + 0.5)
  end
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

b1 = BookInStock.new("1234", 3)
b2 = BookInStock.new("5678", 3.14)
b3 = BookInStock.new("2468", "5.67")
puts b1
puts b2
puts b3
puts "Book #{b3.isbn} normally costs #{b3.price}, but..."
b3.price_in_cents = 525
puts "Book #{b3.isbn} is on sale for #{b3.price_in_cents}!!"
