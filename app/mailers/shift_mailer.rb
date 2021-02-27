class ShiftMailer < ApplicationMailer

	def send_mail(shift)
		@shift = shift
		mail to:"cr_dev@full-cycle.com",subject: "You got a new shifts  updates!"
	end
end
