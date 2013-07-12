class Network < ActiveRecord::Base
  has_many :shows, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
end