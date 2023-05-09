require 'counter'

RSpec.describe Counter do
  
  it "returns 0" do
    number = Counter.new
    expect(number.report).to eq "Counted to 0 so far."
  end

  it "returns 8" do
    number = Counter.new
    number.add(8)
    expect(number.report).to eq "Counted to 8 so far."
  end

  it "returns 100" do
    number = Counter.new
    number.add(100)
    expect(number.report).to eq "Counted to 100 so far."
  end
end