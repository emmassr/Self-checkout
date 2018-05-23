print "Enter the price of item 1:"
item_one_price = gets.chomp.to_i
print "Enter the quantity of item 1:"
item_one_quantity = gets.chomp.to_i
print "Enter the price of item 2:"
item_two_price = gets.chomp.to_i
print "Enter the quantity of item 2:"
item_two_quantity = gets.chomp.to_i
print "Enter the price of item 3:"
item_three_price = gets.chomp.to_i
print "Enter the quantity of item 3:"
item_three_quantity = gets.chomp.to_i

subtotal = (item_one_price * item_one_quantity) + (item_two_price * item_two_quantity) + (item_three_price * item_three_quantity)

tax = (5.5/100) * subtotal

total = subtotal + tax 

puts "Subtotal: #{subtotal}"
puts "Tax: #{tax}"
puts "Total: #{total}"