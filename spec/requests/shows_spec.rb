require 'spec_helper'

describe "Shows" do
  describe "GET /shows" do
    before { get shows_path }
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      expect(response.status).to eq(200)
    end
  end
end
