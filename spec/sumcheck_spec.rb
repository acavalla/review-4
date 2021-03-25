require './lib/sumcheck'

describe Sumcheck do
  describe '.scan' do
    it 'has a method called scan' do
      expect(subject).to respond_to(:scan)
    end
  end
end
