require './lib/sumcheck'

describe Sumcheck do
  describe '.scan' do
    it 'has a method called scan' do
      expect(subject).to respond_to(:scan)
    end

    it 'returns an array of the sum and the evaluated sum' do
      expect(subject.scan("1+1")).to eq ["1 + 1", 2]
    end
  end
end
