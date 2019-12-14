class Sort
  def custom_sort numbers_array
    sorted_numbers = sort numbers_array
    array_size = numbers_array.size
    half_size = array_size / 2
    index = 1
    array_last = (array_size - 1)
    while index < array_size
      sorted_numbers.insert(index, sorted_numbers[array_last])
      sorted_numbers.delete_at(array_size)
      index += 2
    end
    sorted_numbers
  end

  private

  def sort numbers_array
    return numbers_array if numbers_array.length <= 1
    array_size = numbers_array.size
    half_size = array_size / 2

    left_numbers = numbers_array.take(half_size)
    right_numbers = numbers_array.drop(half_size)

    sorted_left_numbers = sort(left_numbers)
    sorted_right_numbers = sort(right_numbers)
    merge_sort(sorted_left_numbers, sorted_right_numbers)
  end

  def merge_sort sorted_left_numbers, sorted_right_numbers
    return sorted_left_numbers if sorted_right_numbers.empty?
    return sorted_right_numbers if sorted_left_numbers.empty?

    if sorted_left_numbers.first >= sorted_right_numbers.first
      smallest_number = sorted_left_numbers.shift
    else
      smallest_number = sorted_right_numbers.shift
    end

    recursive = merge_sort(sorted_left_numbers, sorted_right_numbers)

    [smallest_number].concat(recursive)
  end
end

numbers_array = [100 ,200 ,50 ,150 ,10 ,-10 ,30]
sort = Sort.new
puts sort.custom_sort numbers_array
