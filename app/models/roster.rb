class Roster < ActiveRecord::Base
  belongs_to :ship
  belongs_to :captain
end
