# frozen_string_literal: true

class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    'I love you babe'
  end

  def fall_off_ladder
    'call my agent! no way!'
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.fall_off_ladder
      puts actor.light_on_fire
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) { double('Mr.Danger', ready?: true, act: 'Im a double', fall_off_ladder: 'yeah lets do it', light_on_fire: true) }

  subject { described_class.new(stuntman) }

  describe '#start_shooting method' do
    it ' expect an actor to do 3 actions' do
      expect(stuntman).to receive(:ready?)
      expect(stuntman).to receive(:act)
      expect(stuntman).to receive(:fall_off_ladder).exactly(2).times
      expect(stuntman).to receive(:light_on_fire).once
      #   expect(stuntman).to receive(:light_on_fire).at_most(1).times
      #   expect(stuntman).to receive(:light_on_fire).at_least(2).times

      subject.start_shooting
    end
  end
end
