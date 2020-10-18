# frozen_string_literal: true

class ProgrammingLanguage
  attr_accessor :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new('Python') }

  it 'store the name of the language' do
    expect(language.name).to eq('Python')
  end

  context 'with no arguments' do
    let(:language) { ProgrammingLanguage.new }
    it 'it should default to Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end
