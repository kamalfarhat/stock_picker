def stock_picker(array)
    i = 0
    j = 0
    buy_sell_dates = []
    max_profit_current = 0
    max_profit_new = 0
    while i < array.length do
        j = i + 1
        while j < array.length do
            if array[j] > array[i]
                max_profit_new = array[j] - array[i]
                if max_profit_new > max_profit_current
                    buy_sell_dates = [i, j]
                    max_profit_current = max_profit_new
                end
            end
            j += 1
        end
        i += 1
    end
    p buy_sell_dates
end
stock_picker([17,3,6,9,15,8,6,1,10])