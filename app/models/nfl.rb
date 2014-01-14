class NFL < ActiveRecord::Base
  has_many :players, through: => :teams
end