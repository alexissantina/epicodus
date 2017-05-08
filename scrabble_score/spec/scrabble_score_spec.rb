require'scrabble_score'
require'rspec'

describe('String#scrabble_score') do
	it("returns a scrabble score for a letter") do
	  expect("a".scrabble_score()).to(eq(1))
	end

	it("returns a scrabble score for a word") do
	  expect("book".scrabble_score()).to(eq(10))
	end
end