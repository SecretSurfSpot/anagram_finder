require_relative 'inputs'
require_relative 'convert_file_to_array'
require_relative 'anagram_finder'
require_relative 'printer'

class AnagramFinderController

  def initialize(inputs = Inputs.new, convert_file_to_array = ConvertFileToArray.new, anagram_finder = AnagramFinder.new, printer = Printer.new)
    @inputs = inputs
    @convert_file_to_array = convert_file_to_array
    @anagram_finder = anagram_finder
    @printer = printer
  end

  def run
    subject = @inputs.capture_subject
    file = @inputs.capture_file
    word_array = @convert_file_to_array.convert_txt_file_to_array(file)
    anagram_array = @anagram_finder.create_anagrams_array(subject, word_array)
    @printer.print_anagrams(anagram_array)
  end
end
