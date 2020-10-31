# frozen_string_literal: true

RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      expect(subject).to include('hot')
    end
  end

  describe [10, 20, 30] do
    it 'checks for inclusion in the array regardless of order' do
      expect(subject).to include(20)
      expect(subject).to include(20, 10)
    end
  end
end
