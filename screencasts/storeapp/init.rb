require_relative "cart"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"

# cart = Cart.new
# cart.add_item(Item.new)
# cart.add_item(Item.new)

# cart.validate

# p cart.items

# cart.remove_item

# p cart.items

item1 = VirtualItem.new({ :price => 10, :weight => 100, :name => "Car" })
item2 = RealItem.new({ :weight => 100, :name => "Car" })

# item.info { |attr| puts attr }

cart = Cart.new
cart.add_item item1
cart.add_item item2

p cart.items
# cart.delete_invalid_items
p cart.items

# p item1.respond_to?(:weight)
# p item2.respond_to?(:weight)

#puts Item.discount

puts item1.price

puts item1.real_price
