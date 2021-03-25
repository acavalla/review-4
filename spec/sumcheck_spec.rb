require './lib/sumcheck'

describe Sumcheck do
  describe '.scan' do
    it 'has a method called scan' do
      expect(subject).to respond_to(:scan)
    end

    it 'returns 1+1 correctly' do
      expect(subject.scan("1 + 1")).to eq ["1 + 1", 2]
    end

    it 'can add for + operations' do
      expect(subject.scan("1 + 2")).to eq ["1 + 2", 3]
    end

    it 'can multiply for * operations' do
      expect(subject.scan("1 * 2")).to eq ["1 * 2", 2]
    end

    it 'can subtract for - operations' do
      expect(subject.scan("1 - 1")).to eq ["1 - 1", 0]
    end

    it 'can divide for / operations' do
      expect(subject.scan("1 / 1")).to eq ["1 / 1", 1]
    end
  end
end
