class Sumcheck
  def scan(sum)
    sum_array = sum.split(" ")
    array = []
    x = 0
    sum_array.each do |num|
      x += num.to_i
    end
    array << sum
    array << x
  end
end
