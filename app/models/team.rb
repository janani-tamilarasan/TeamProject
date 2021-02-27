class Team < ApplicationRecord

	has_many :shifts
    has_many :members, through: :shifts,dependent: :destroy
	accepts_nested_attributes_for :members,allow_destroy: true,:reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
	  
    validates :team_name ,presence: true
end
