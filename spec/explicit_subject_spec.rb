# frozen_string_literal: true

RSpec.describe Hash do
  subject do
    { a: 1, b: 2 }
  end

  it 'it has two value pairs' do
    expect(subject.length).to eq(2)
  end
end
