class User < ApplicationRecord
	has_many :designs
	has_many :stars, dependent: :destroy
  has_many :designs, through: :stars

	before_save { self.username = username.downcase }
	validates :username, presence: true, length: { maximum: 50 },
						uniqueness: { case_sensitive: false }

	has_secure_password
	validates :password, presence: true, length: { maximum: 50 }, allow_nil: false
	validates :user_id, uniqueness: { scope: :design_id }
	
	# creates a new heart row with post_id and user_id
	def star!(design)
	  self.stars.create!(design_id: design.id)
	end

	# destroys a heart with matching post_id and user_id
	def unstar!(design)
	  star = self.stars.find_by_design_id(design.id)
	  star.destroy!
	end

	# returns true of false if a post is hearted by user
	def star?(design)
	  self.stars.find_by_design_id(design.id)
	end

end
