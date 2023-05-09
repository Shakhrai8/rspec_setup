require 'gratitudes'

RSpec.describe Gratitudes do
  
  it "should create an empty array and return empty string" do
    grat = Gratitudes.new
    expect(grat.format).to eq "Be grateful for: "
  end

  it "should add one string" do
    grat = Gratitudes.new
    grat.add("Honey")
    expect(grat.format).to eq "Be grateful for: Honey"
  end

  
  it "should add multiple strings" do
    grat = Gratitudes.new
    grat.add("Honey")
    grat.add("Beer")
    grat.add("Berserk")
    expect(grat.format).to eq "Be grateful for: Honey, Beer, Berserk"
  end
end