# frozen_string_literal: true

class Deck
  def self.build
    # Some business logic
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    deck_class = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const

    expect(deck_class).to receive(:build)
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
