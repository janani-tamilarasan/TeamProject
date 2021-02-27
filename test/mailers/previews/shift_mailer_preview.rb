# Preview all emails at http://localhost:3000/rails/mailers/shift_mailer
class ShiftMailerPreview < ActionMailer::Preview

	 def send_mail
    # Set up a temporary order for the preview
    shift = Shift.first
    ShiftMailer.send_mail(shift)
  end

end
