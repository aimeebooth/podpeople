require "spec_helper"

describe Network do
  before do
    network = Network.create!
    hypothetical = Show.create!
    network.shows << hypothetical
    network.save!
  end
  
  it "can have shows" do
    expect(network.reload.shows).to include(hypothetical)
  end
end