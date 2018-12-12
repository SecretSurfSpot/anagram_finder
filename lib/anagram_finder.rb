# AnagramFinder this class take a word (subject) and an array as inputs
# and creates an anagrams_array of words from the array that
# are anagrams of the subject
class AnagramFinder
  def create_anagrams_array(subject, word_array)
    anagrams_array = []
    word_array.each do |word|
      if word.downcase.chars.sort.join == subject.downcase.chars.sort.join
        anagrams_array << word
      end
      anagrams_array.include? subject.downcase ? anagrams_array.delete(subject.downcase) : false
    end
    return anagrams_array
  end
end
