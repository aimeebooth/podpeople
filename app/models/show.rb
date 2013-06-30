class Show < ActiveRecord::Base
  belongs_to :network
  has_many :episodes
  has_many :hosts
end
