require 'spec_helper'
require_relative '../lib/ruby_basics.rb'


describe "ruby" do

  describe "#division" do
    it 'given two numbers returns quotient of the first number divided by the second number' do
      expect(division(42,7)).to eq(6)
      expect(division(30,6)).to eq(5)
    end
  end

  describe '#argue' do
    it 'accepts an argument and return that argument as is' do
      phrase = "I'm right and you are wrong!"

      expect(argue(phrase)).to eq(phrase)
    end
  end

  describe '#greeting' do
    it 'takes two arguments' do
      greeting = "Hi there, "
      name = "Bobby!"

      expect{ greeting(greeting, name) }.to_not raise_error
    end

    it 'raises an error with one argument' do
      greeting = "Hi there, "

      expect{ greeting(greeting)}.to raise_error
    end
  end

  describe '#return_a_value' do
    it 'returns the phrase "Nice"' do
      expect(return_a_value).to eq("Nice")
    end
  end

  describe '#pizza_party' do
    it 'returns "cheese" by default' do
      expect(pizza_party).to eq("cheese")
    end

    it 'returns the argument it received' do
      expect(pizza_party("pepperoni")).to eq("pepperoni")
    end
  end
  
  describe '#whisper' do
    it 'returns a lowercased version of the argument it received' do
      expect(whisper("Hey!")).to eq("hey!")
      expect(whisper("SUP!")).to eq("sup!")
    end
  end
end