def stock_picker(arr)
  max_profit = 0
  arr2 = []
  arr3 = []
  arr.length.times do |x|
    if x != arr.length
      arr2 = arr[x+1..-1]
      arr2.length.times do |y|
        if arr[x] < arr2[y]
          profit = arr2[y]-arr[x]
          if profit > max_profit
            arr3[0] = x
            arr3[1] = x+y+1
            max_profit = profit
          end
        end
      end
    end
  end
  arr3
end

puts stock_picker([17,6,3,9,8,8,6,6,15,6,1,10])
