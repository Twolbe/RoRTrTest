shop_cart = {}


puts "! Чтобы закончить, введите 'stop', вместо названия товара !"
loop do
  puts "Введите название товара:"
  product_name = gets.chomp
  break if product_name == "stop"
  puts "Введите цену товара:"
  price = gets.chomp.to_f
  puts "Введите кол-во товара:"
  lot = gets.chomp.to_f
  shop_cart[product_name] = {'price': price, 'lot': lot}
end

puts shop_cart

result = 0

shop_cart.each do |product_name, price_lot_hash|
  puts "Товара #{product_name} на сумму #{price_lot_hash[:'price']*price_lot_hash[:'lot']}"
  result += price_lot_hash[:'price']*price_lot_hash[:'lot']
end

puts "Товаров в корзине на сумму: #{result}"