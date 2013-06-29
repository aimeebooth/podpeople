require 'spec_helper'

describe Show do
  it "can belong to a network" do
    internet_podcast = Network.create!
    hypothetical = Show.create!(network: internet_podcast)
    hypothetical.reload.network.should == internet_podcast
  end
end
