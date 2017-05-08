require 'numbers_to_words'

describe('Fixnum#numbers_to_words') do
  it("translates a single digit into a word") do
    expect(3.numbers_to_words).to(eq("three"))
  end

  it("translates a double digit numbers into a word") do
  	expect(37.numbers_to_words).to(eq("thirty seven"))
  end

  it ("translates a number in the hundreds to words") do
  	expect(864.numbers_to_words).to(eq(eight hundred sixty four))
  end

end