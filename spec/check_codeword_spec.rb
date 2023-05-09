require 'check_codeword'

RSpec.describe "check_codeword method" do
  
  it "should return 'Correct! Come in.' string back" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end

  it "should return 'Close, but nope.' string back" do
    expect(check_codeword("home")).to eq "Close, but nope."
  end

  it "should return 'WRONG!' string back" do
    expect(check_codeword("honey")).to eq "WRONG!"
  end
end