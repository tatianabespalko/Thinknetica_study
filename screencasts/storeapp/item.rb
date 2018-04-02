class Item

  @@discount = 0.05

  def self.discount
    if Time.now.month == 4
      # 0.3
      return @@discount + 0.1
    else
      # 0.1
      return @@discount
    end
  end

  def initialize(options={})
    @real_price = options[:price]
#    @weight = options[:weight]
    @name = options[:name]

  end

# attr_accessor :price, :weight, :name
#attr_accessor :price, :name
attr_accessor :real_price, :name

# attr_reader :price, :weight
attr_writer :price

  def info
    yield(price)
    #yield(weight)
    yield(name)
    # [price, weight, name]
    # price.to_s + ", " + weight.to_s + ", " + name.to_s
  end

  def price
    #@price - @price*Item.discount
    (@real_price - @real_price*self.class.discount) + tax
  end

  private

    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
      end
      cost_tax = if @real_price > 5
        @real_price*0.2
      else
        @real_price*0.1
      end
      cost_tax + type_tax
    end

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
# puts Item.new({ :weight => 10, :price => 30 }).price

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
