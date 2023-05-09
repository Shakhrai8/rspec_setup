require 'present'

RSpec.describe Present do
  
  it "should wrap and unwrap given contents" do
    present = Present.new
    present.wrap(8)
    expect(present.unwrap).to eq 8
  end
  
  context "when no contents have been wrapped" do
    it "fails" do
      present = Present.new
      expect{present.unwrap}.to raise_error "No contents have been wrapped."
    end
  end

  context "when contents has already been wrapped" do
    it "fails" do
      present = Present.new
      present.wrap(2)
      expect{present.wrap(4)}.to raise_error "A contents has already been wrapped."
      expect(present.unwrap).to eq 2
    end
  end
end