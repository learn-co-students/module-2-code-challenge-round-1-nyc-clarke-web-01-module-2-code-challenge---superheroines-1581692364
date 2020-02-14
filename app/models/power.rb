class Power < ApplicationRecord
   has_many :joiners
   has_many :heroines, through: :joiners
end
