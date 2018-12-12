require 'convert_file_to_array'

describe ConvertFileToArray do
  convert_file_to_array = ConvertFileToArray.new
  file = File.open('./assets/list.txt',  'r')
  array = ['listen', 'silent', 'enlist', 'inlets', 'tinsel', 'care', 'race', 'cares', 'races', 'scare', 'costar', 'castor', 'casters', 'recasts', 'duster', 'rudest', 'rusted']

  describe '#convert_txt_file_to_array' do
    it 'should convert a text file to an array' do
      expect(convert_file_to_array.convert_txt_file_to_array(file)).to eq(array)
    end
  end
end
