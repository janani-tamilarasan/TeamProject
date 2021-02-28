class Shift < ApplicationRecord
	belongs_to :team
	belongs_to :member
	after_save :send_email


	validates :team_id,:member_id,presence: true




	def member_name
		member.name
	end

	  def team_name
	  	team.team_name
	  end

	def is_sunday_available
		"Sunday" if(sunday.present?)
	end

	def is_monday_available
		 "Monday" if(monday.present?)
	end

	def is_tuesday_available
		 "Tuesday"if(tuesday.present?)
	end

	def is_wednesday_available
		"Wednesday" if(wednesday.present?)
	end

	def is_thrusday_available
		"Thrusday" if(thrusday.present? )
	end

	def is_friday_available
		"Friday" if(friday.present?)
	end

	def is_saturday_available
		"Saturday" if(saturday.present? )
	end

	def fetch_available_weeks
		[is_sunday_available,is_monday_available,is_tuesday_available,is_wednesday_available,
			is_thrusday_available,is_friday_available,is_saturday_available].compact.join(",")
	end

	def send_email
	   ShiftMailer.send_mail(self).deliver_later
	end
end
