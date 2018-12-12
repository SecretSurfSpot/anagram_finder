require 'inputs'

describe Inputs do
  inputs = Inputs.new
  describe '#capture_subject' do
    before do
      $stdin = StringIO.new("Listen\n")
    end

    after do
      $stdin = STDIN
    end

    it "should get user input ('Listen')" do
      STDIN = StringIO.new("Listen\n")
      expect(inputs.capture_subject).to eq('Listen')
    end
  end

  describe '#capture_file' do
    it 'should open the given file' do
      filename = 'line.csv'
      content = 'this would be the content of the file'
      allow(File).to receive(:open).with(filename, 'r').and_yield(StringIO.new(content))
      expect(StringIO.new(content).read).to eq(content)
    end
  end
end
