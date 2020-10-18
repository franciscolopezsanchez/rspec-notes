# frozen_string_literal: true

RSpec.describe '#even? method' do
  context 'with even number' do
    it 'returns true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'returns false' do
      expect(5.even?).to eq(false)
    end
  end
end
