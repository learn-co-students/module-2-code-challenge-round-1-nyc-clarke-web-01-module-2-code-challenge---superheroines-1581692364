class Heroine < ApplicationRecord
   has_many :joiners
   has_many :powers, through: :joiners
   validates :name, :super_name, presence: true
   validates :super_name, uniqueness: true
end
