require 'string_builder'

RSpec.describe StringBuilder do

  it "should return an empty string" do
    string = StringBuilder.new
    expect(string.output).to eq ""
  end

  it "should return 0" do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end
  
  it "should return inputed string" do
    string = StringBuilder.new
    string.add("Hello World!")
    expect(string.output).to eq "Hello World!"
  end

  it "returns 3 added strings" do
    string = StringBuilder.new
    string.add("Eugene")
    string.add(" likes ")
    string.add("programming")
    expect(string.output).to eq "Eugene likes programming"
  end

  it "should return string length" do
    string = StringBuilder.new
    string.add("Eugene")
    expect(string.size).to eq 6
  end
end