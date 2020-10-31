# frozen_string_literal: true

RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'checks for substring at the beginning or end' do
      expect(subject).to start_with('cat')
    end

    it 'checks for case sensitivity' do
      expect(subject).not_to start_with('Cat')
    end

    it 'checks for substring at the end' do
      expect(subject).to end_with('ar')
    end
  end

  describe [:a, :b, :c] do
    it 'checks for element at the beginning of the array' do
      expect(subject).to start_with(:a)
    end
  end
end
