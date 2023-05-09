require 'password_checker'

RSpec.describe do
  
  it "should return true for the given value" do
    password = PasswordChecker.new
    expect(password.check("12345678")).to eq true
  end

  it "should return true for the given value" do
    password = PasswordChecker.new
    expect(password.check("Ydas345ijb8")).to eq true
  end

  it "should return true for the given value" do
    password = PasswordChecker.new
    expect(password.check("KafODF&fak£")).to eq true
  end

  context "password is less than 8 characters" do
    it "fails" do
      password = PasswordChecker.new
      expect{password.check("asda")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end