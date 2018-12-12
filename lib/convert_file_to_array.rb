class ConvertFileToArray
  def convert_txt_file_to_array(file)
    word_array = []
    file.readlines.each do |word|
        word_array << word.strip
    end
    return word_array
  end
end
