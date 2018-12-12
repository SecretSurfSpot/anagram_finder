# ConvertFileToArray - this class contains methods that:
# converts the contents of a txt file into an array
class ConvertFileToArray
  def convert_txt_file_to_array(file)
    word_array = []
    file.readlines.each do |word|
      word_array << word.strip
    end
    return word_array
  end
end
