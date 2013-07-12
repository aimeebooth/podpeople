require 'spec_helper'

describe "shows/show" do
  before(:each) do
    @show = assign(:show, stub_model(Show))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
