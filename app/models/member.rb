class Member < ApplicationRecord

	has_many :shifts
    has_many :teams, through: :shifts
    
  	validates :name ,presence: true
end
