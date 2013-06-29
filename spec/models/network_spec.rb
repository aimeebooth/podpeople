require "spec_helper"

describe Network do
  it "can have shows" do
    network = Network.create!
    hypothetical = Show.create!
    network.shows << hypothetical
    network.save!
    network.reload.shows.should include(hypothetical)
  end
end