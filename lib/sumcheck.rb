class Sumcheck
  attr_reader :x
  def scan(sum)
    sum_array = sum.split(" ")
    array = []
    sum_filter(sum_array)
    array += [sum, x]
  end

  private

  def sum_filter(sum_array)
    if sum_array[1] == "+"
      add(sum_array)
    elsif sum_array[1] == "*"
      multiply(sum_array)
    elsif sum_array[1] == "-"
      subtract(sum_array)
    else
      divide(sum_array)
    end
  end

  def add(sum_array)
    @x = 0
    sum_array.each do |num|
      @x += num.to_i
    end
  end

  def subtract(sum_array)
    @x = sum_array[0].to_i
    sum_array.each_with_index do |num, index|
      @x -= num.to_i unless index == 0
    end
  end

  def multiply(sum_array)
    @x = sum_array[0].to_i * sum_array[2].to_i
  end

  def divide(sum_array)
    @x = sum_array[0].to_i / sum_array[2].to_i
  end
end
