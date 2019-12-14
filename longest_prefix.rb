# Assumptions:
# 1. Find longest prefix starting from first character of each word
# 2. Case Sensitive

class LongestPrefix
  def find(string_array)
    prefix = ''
    string_array.each do |string|
      if prefix.empty?
        prefix = string
        next
      end
      prefix = find_prefix string, prefix
    end
    prefix
  end

  private

  def find_prefix string, prefix
    if string.start_with? prefix
      return prefix
    else
      prefix = prefix[0...prefix.length-1]
      find_prefix string, prefix
    end
  end
end

# string_array = ['Apple', 'App', 'Apostrophe', 'Ap', 'A']
# string_array = ['Apple', 'App', 'Apostrophe', 'A', 'Zebra']
string_array = ['Apple', 'App', 'Apostrophe', 'A']

longest_prefix = LongestPrefix.new
puts "Longest Prefix: #{longest_prefix.find(string_array)}"
