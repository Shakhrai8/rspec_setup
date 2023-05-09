require 'report_length'

RSpec.describe "report_length method" do
  
  it "should return 5" do
    expect(report_length("Honey")).to eq "This string was 5 characters long."
  end

  it "should return 2" do
    expect(report_length("hi")).to eq "This string was 2 characters long."
  end

  it "should return 13" do
    expect(report_length("Schaltschrank")).to eq "This string was 13 characters long."
  end

  it "should return 0" do
    expect(report_length("")).to eq "This string was 0 characters long."
  end
end