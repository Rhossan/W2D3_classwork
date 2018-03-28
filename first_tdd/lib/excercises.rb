
def my_uniq(arr)
  new_arr = []
  arr.each do |e|
    if new_arr.include?(e)
      next
    end
    new_arr << e
  end
  new_arr
end

class Array
  def two_sum
    arr = []

    for i in (0..self.length - 2)
      for j in ((i + 1)..self.length - 1)
        if self[i] + self[j] == 0
          arr << [i, j]
        end
      end
    end
    arr
  end
end

def my_transpose(arr)
  new_arr = []
  for i in (0..arr.length - 1)
    temp = []
    for j in (0..arr.length - 1)
      # arr[i][j], arr[j][i] = arr[j][i], arr[i][j]
      temp << arr[j][i]
    end
    new_arr << temp
  end
  new_arr
end

def stock_picker(arr)
  profit = Hash.new {|h,k| h[k] = []}

  for i in (0..arr.length-2)
    for j in (0..arr.length-1)
      diff = arr[j] - arr[i]
      profit[diff] += [i,j]
    end
  end
  key = profit.keys.max
  return profit[key]


end
