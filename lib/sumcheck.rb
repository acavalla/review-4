class Sumcheck
  def scan(sum)
    sum_array = sum.split(" ")
    array = []
    x = sum_evaluation(sum_array)
    array += [sum, x]
  end

  private

  def sum_evaluation(sum_array)
    x = 0
    if sum_array[1] == "+"
      sum_array.each do |num|
        x += num.to_i
      end
    else
      sum_array.each do |num|
        x = 1
        x = num.to_i
      end
    end
    return x
  end
end
