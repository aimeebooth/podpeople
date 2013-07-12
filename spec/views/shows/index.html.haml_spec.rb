require 'spec_helper'

describe "shows/index" do
  before(:each) do
    assign(:shows, [
      stub_model(Show),
      stub_model(Show)
    ])
  end

  it "renders a list of shows" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
