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

  describe '#capture_filename' do
    before do
      $stdin = StringIO.new("./assets/list.txt\n")
    end
    after do
      $stdin = STDIN
    end
    it "should get user input ('Listen')" do
      STDIN = StringIO.new("./assets/list.txt\n")
      expect(inputs.capture_filename).to eq('./assets/list.txt')
    end
  end
end
