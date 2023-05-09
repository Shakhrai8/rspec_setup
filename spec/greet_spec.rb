require 'greet'

RSpec.describe "greet method" do
  it "returns Hello, Eugene!" do
    expect(greet("Eugene")).to eq "Hello, Eugene!"
  end
end 