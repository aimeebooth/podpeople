class Show < ActiveRecord::Base
  belongs_to :network
  has_many :episodes
  has_many :hosts
  has_many :guests, through: :episodes

  validates :name, presence: true
  validates :description, presence: true
end
