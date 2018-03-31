class Item

  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end

attr_accessor :price, :weight
# attr_reader :price, :weight
# attr_writer :price, :weight


#   def price
# #    100
# #  rand(100) # выводит случайное число от 0 до 100 для каждого из этих обьектов
#   @price # getter
#   end

#   def price=(price_value) # setter
#     @price = price_value
#   end

#   def weight
#     @weight # getter
#   end

#   def weight=(weight_value) # setter
#     @weight = weight_value
#   end

end

# item1 = Item.new({ :weight => 10, :price => 30 })
# puts item1.price
# puts item1.weight
puts Item.new({ :weight => 10, :price => 30 }).price



# item1.price = 10
# puts item1.price

# item1.weight = 10
# puts item1.weight

# item1.price = 10
# #item2 = Item.new
# puts item1.price
# #puts item2.price
# item1.price = 20
# puts item1.price


