class User < ApplicationRecord
	has_many :designs


	before_save { self.username = username.downcase }
	validates :username, presence: true, length: { maximum: 50 },
						uniqueness: { case_sensitive: false }

	has_secure_password
	validates :password, presence: true, length: { maximum: 50 }, allow_nil: false

end
