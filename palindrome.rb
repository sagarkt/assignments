class Palindrome

  def find_closest_to number
    while !is_palindrome? number
      number -= 1
    end
    number
  end

  private

  def is_palindrome? number
    number.to_s.reverse.eql? number.to_s
  end
end

palindrome = Palindrome.new
puts palindrome.find_closest_to(489)
