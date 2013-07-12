class Show < ActiveRecord::Base
  belongs_to :network
  has_many :episodes
  has_many :hosts

  validates :name, presence: true
  validates :description, presence: true
end
