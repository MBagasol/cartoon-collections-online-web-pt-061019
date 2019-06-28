<<<<<<< HEAD
def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |call| call.capitalize + '!' }
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? { |call| call.length > 4 }
end

def find_the_cheese(potentially_cheesy_items)
  cheeses = %w[gouda cheddar camembert]

  potentially_cheesy_items.find do |maybe_cheese|
    cheeses.include?(maybe_cheese)
=======
require 'spec_helper'

describe 'Cartoon Collections' do
  describe '#roll_call_dwarves' do
    it 'prints out the 7 dwarfs in a numbered list' do
      dwarves = %w[Dopey Grumpy Bashful]

      output = capture_stdout do
        roll_call_dwarves(dwarves)
      end

      # This regex allows for arbitrary characters between
      # the numbering and the name
      expect(output).to match(/1.*Dopey/)
      expect(output).to match(/2.*Grumpy/)
      expect(output).to match(/3.*Bashful/)
    end
  end

  describe '#summon_captain_planet' do
    it 'returns an array with the same number of elements that it was given' do
      veggies = %w[carrot cucumber pepper]
      result = summon_captain_planet(veggies)
      expect(result.class).to eq(Array)
      expect(result.length).to eq(3)
    end

    it 'capitalizes each element and adds an exclamation mark (test 1)' do
      fruits = %w[apple banana orange]
      result = summon_captain_planet(fruits)
      ['Apple!', 'Banana!', 'Orange!'].each { |w| expect(result).to include w }
    end

    it 'capitalizes each element and adds an exclamation mark (test 2)' do
      veggies = %w[carrot cucumber pepper]
      result = summon_captain_planet(veggies)
      ['Carrot!', 'Cucumber!', 'Pepper!'].each { |w| expect(result).to include w }
    end
  end

  describe "#long_planeteer_calls" do
    it "returns true if any calls are longer than 4 characters" do
      calls_long = ["axe", "earth", "wind", "fire"]
      expect(long_planeteer_calls(calls_long)).to eq(true)
    end

    it "returns false if all calls are 4 characters or less" do
    calls_short = ["wind", "fire", "tree", "axe", "code"]
    expect(long_planeteer_calls(calls_short)).to eq(false)
    end
  end

  describe '#find_the_cheese' do
    it 'returns the first element of the array that is cheese' do
      cheddar_cheese = %w[banana cheddar sock]
      expect(find_the_cheese(cheddar_cheese)).to eq 'cheddar'
    end

    it 'returns nil if the array does not contain a type of cheese' do
      no_cheese = %w[ham cellphone computer]
      expect(find_the_cheese(no_cheese)).to eq nil
    end
>>>>>>> 224d4479c92af0592d5e89eaf9e707d5c0de73ba
  end
end