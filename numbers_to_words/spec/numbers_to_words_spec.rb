require 'numbers_to_words'

describe('Fixnum#numbers_to_words') do
  it("translates a single digit into a word") do
    expect(3.numbers_to_words).to(eq("three"))
  end

  it("translates a double digit numbers into a word") do
  	expect(37.numbers_to_words).to(eq("thirty seven"))
  end

  it ("translates a number in the hundreds to words") do
  	expect(864.numbers_to_words).to(eq("eight hundred sixty four"))
  end

  it ("translates a number in the thousands to words") do
  	expect(12355.numbers_to_words).to(eq("twelve thousand three hundred fifty five"))
  end

  it ("translates a number in the millions to words") do
  	expect(3444222.numbers_to_words).to(eq("three million four hundred forty four thousand two hundred twenty two"))
  end

  it ("translates a number in the hundreds of billions to words") do
  	expect(39898444222.numbers_to_words).to(eq("thirty nine billion eight hundred ninety eight million four hundred forty four thousand two hundred twenty two"))
  end

end