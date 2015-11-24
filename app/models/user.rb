class User < ActiveRecord::Base
	has_many :reservations
	has_many :commments
	has_many :listings
	has_secure_password
	# validates :username, presence: true, uniqueness: true
	# validates :gender, presence: true
	# validates :birthday, presence: true
	# validates :email, presence: true, uniqueness: true
	# validates :contact, presence: true
	# validates :address, presence: true
	# validates :about_you, presence: true
	# validates :password, presence: true
	def self.from_omniauth(auth)
  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.provider = auth.provider 
    user.uid      = auth.uid
    user.username     = auth.info.name
    user.email   =  auth.info.email
    user.password = "12345678"
    user.birthday = auth.info.user_birthday
    user.save!
  end
  end

end
