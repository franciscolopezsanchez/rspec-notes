# frozen_string_literal: true

RSpec.describe Hash do
  it 'starts off empty' do
    expect(subject.length).to eq(0)
  end
end
