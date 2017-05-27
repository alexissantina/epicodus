require 'rspec'
require 'rock_paper_scissors'

describe('String#beats') do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end

  it("returns false if paper is the object and scissors is the argument") do
    expect("paper".beats?("scissors")).to(eq(false))
  end

  it("returns an error if tie") do
    expect("paper".beats?("paper")).to(eq(nil))
  end
end