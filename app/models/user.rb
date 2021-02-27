class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable

  has_many :teams,dependent: :destroy

 validates :firstname,:lastname,:dob,:email,:password_confirmation,presence: true

 # validates :password, format: { with: /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/,
 #}
 validates :password, presence: true,confirmation: true,format: { with: PASSWORD_REGEX,  
 message: "must contain atleast one  a lowercase letter, an uppercase letter, a digit, a non-word character or symbol", 
 :multiline => true }

 validates :mobile,format: { with: MOBILE_REGEX, message: "is invalid", 
 :multiline => true }
 validates :email, uniqueness: true,format: { with: EMAIL_REGEX,message: "Invalid Format" }


	def fullname
		firstname.concat(lastname)
	end

end
