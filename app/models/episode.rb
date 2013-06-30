class Episode < ActiveRecord::Base
  belongs_to :show
  has_one :taping
  has_many :guests
  has_many :topics

end