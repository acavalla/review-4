class Sumcheck
  def scan(sum)
    sum_array = sum.split(" ")
    array = []
    x = sum_filter(sum_array)
    array += [sum, x]
  end

  private

  def sum_filter(sum_array)
    if sum_array[1] == "+"
      x = add(sum_array)
    else
      x = multiply(sum_array)
    end
    return x
  end

  def add(sum_array)
    x = 0
    sum_array.each do |num|
      x += num.to_i
    end
    return x
  end

  def multiply(sum_array)
    x = 1
    sum_array.each do |num|
      x = num.to_i
    end
    return x
  end
end
