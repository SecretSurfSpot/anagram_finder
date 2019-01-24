# Printer - this class takes an array and prints
# each word, one by one
class Printer
  def print_anagrams(anagram_array)
    anagram_array.each { |word| p word }
  end
end
