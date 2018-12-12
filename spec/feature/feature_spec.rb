require './app'

describe App do
  let(:inputs) { Inputs.new }
  let(:app) { App.new(inputs) }

  describe '#run' do
    it 'should return a list an anagrams for a given word' do
      allow(inputs).to receive(:capture_subject).and_return('listen')
      allow(inputs).to receive(:capture_filename).and_return('./assets/list.txt')
      expect { app.run }.to output(/"silent"\n"enlist"\n"inlets"\n"tinsel"/).to_stdout
    end
  end
end
