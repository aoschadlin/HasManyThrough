class Ship < ActiveRecord::Base
  has_many :rosters
  has_many :captains, :through => :rosters
end
