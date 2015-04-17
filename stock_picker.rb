def stock_picker stocks

	largest_profit = 0
	day_to_buy = 0
	day_to_sell = 0
	value_to_buy_for = 0
	value_to_sell_for = 0
	
	
	stocks.each_with_index do |value, index|
		
		stocks[index..-1].each_with_index do |value2, index2|
			delta = (value - value2)
			# puts index.to_s + " " + index2.to_s + "delta: " + delta.to_s
			if delta > largest_profit
				largest_profit = delta
				day_to_buy = index
				day_to_sell = index2
				value_to_buy_for = value
				value_to_sell_for = value2
			end
		end
	end

	puts "buy for " + value_to_buy_for.to_s + " at day " + day_to_buy.to_s
	puts "to sell for " + value_to_sell_for.to_s + " at day " + day_to_sell.to_s  
	puts "for a profit of " + largest_profit.to_s
end

# def index_of_max list
# 	list.each_with_index.max[1]
# end

# def index_of_min list
# 	list.each_with_index.min[1]
# end

 
stock_prices = 15.times.map{Random.rand(50)}
puts "Stock prices"
puts stock_prices.join(',')

stock_picker stock_prices