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

end
