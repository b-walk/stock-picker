def stock_picker(stock_prices)
    sorted_prices = stock_prices.sort
    lowest_price = sorted_price[0]
    highest_price = sorted_price[-1]
end

# STEPS:
# Sort stock price array into a new array, from lowest to highest values
# Find the lowest and highest values
# Determine if the lowest value comes before the highest value

# If it does, return their indeces (days) from the original array
# If it does not:
# Find a new highest value or new lowest value, depending on which one would yield the higher profit and repeat the earlier process