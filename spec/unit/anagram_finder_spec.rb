require 'anagram_finder'

describe AnagramFinder do
  anagram_finder = AnagramFinder.new
  subject = 'listen'
  word_array = ['silent', 'solent', 'enlist', 'tinsel', 'listen']

  describe '#create_anagrams_array' do
    it 'should contain a list of anagrams' do
      expect(anagram_finder.create_anagrams_array(subject, word_array)).to eq(['silent', 'enlist', 'tinsel'])
    end
  end
end
