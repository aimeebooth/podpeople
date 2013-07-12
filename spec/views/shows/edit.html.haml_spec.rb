require 'spec_helper'

describe "shows/edit" do
  before(:each) do
    @show = assign(:show, stub_model(Show))
  end

  it "renders the edit show form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", show_path(@show), "post" do
    end
  end
end
