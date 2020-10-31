# frozen_string_literal: true

RSpec.describe 'equality matchers' do
  describe 'equal and be matchers' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).not_to equal(d)
    end
  end
end
