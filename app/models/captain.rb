class Captain < ActiveRecord::Base
  has_many :rosters
  has_many :ships, :through => :rosters
end
