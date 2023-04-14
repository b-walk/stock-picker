require 'pry-byebug'

def stock_picker(prices)
    ideal_buy_price = prices.min
    ideal_sell_price = prices.max

    if prices.index(ideal_buy_price) < prices.index(ideal_sell_price)
        return [prices.index(ideal_buy_price), prices.index(ideal_sell_price)]
    end

    prices_and_days = []

    prices.each_with_index do |price, day|
        prices_and_days[day] = [day, price]
    end

    price_and_day_pairs = prices_and_days.combination(2).to_a

    best_profit_pair = (price_and_day_pairs.max_by {|pair| pair[1][1] - pair[0][1]})
    best_days = Array.new(2)
    best_days.push(best_profit_pair[0][0], best_profit_pair[1][0])
    
    best_days
end

prices = [16, 17, 8, 3, 14, 3, 90, 85, 92, 3, 89]
p stock_picker(prices)

# OBJECTIVE:
# Given an array of stock prices, determine the best day to buy and the best day to sell

# STEPS:
# Find the highest and lowest values
# If the index of the lowest value is less than the index of the highest value, return their indeces
# If not, find the next highest value and repeat the test