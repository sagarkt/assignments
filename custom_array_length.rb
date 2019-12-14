# Assumptions
# 1. Array will not contain any nil/blank element

class Array
  def my_length
    size = 0
    while self[size] != nil
      size += 1
    end
    size
  end
end


a = [1,2,3,4,5]
puts a.my_length
