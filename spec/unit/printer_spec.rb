require 'printer'

describe Printer do
  printer = Printer.new
  anagram_array = ['silent', 'enlist', 'tinsel']

  describe '#print_array' do
    it 'should print all words in a given array' do
      expect { printer.print_anagrams(anagram_array) }.to output(/"silent"\n"enlist"\n"tinsel"/).to_stdout
    end
  end
end
