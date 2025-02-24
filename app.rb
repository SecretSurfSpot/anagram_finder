require './lib/inputs'
require './lib/convert_file_to_array'
require './lib/anagram_finder'
require './lib/printer'

class App

  def initialize(inputs = Inputs.new,
                 convert_file_to_array = ConvertFileToArray.new,
                 anagram_finder = AnagramFinder.new,
                 printer = Printer.new)
    @inputs = inputs
    @convert_file_to_array = convert_file_to_array
    @anagram_finder = anagram_finder
    @printer = printer
  end

  def run
    subject = @inputs.capture_subject
    filename = @inputs.capture_filename
    word_array = @convert_file_to_array.convert_txt_file_to_array(filename)
    anagram_array = @anagram_finder.create_anagrams_array(subject, word_array)
    @printer.print_anagrams(anagram_array)
  end
end
