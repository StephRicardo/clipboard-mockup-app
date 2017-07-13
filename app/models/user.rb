class User < ApplicationRecord
  has_many :created_designs, foreign_key: :creator_id, class_name: "Event"
	has_many :stars
  has_many :designs, through: :stars

  before_save { self.username = username.downcase }
  validates :username, presence: true, length: { maximum: 50 },
  					uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, presence: true, length: { maximum: 50 }, allow_nil: false

  # creates a new star row with design_id and user_id
  def star!(design)
    self.stars.create!(design_id: design.id)
  end

  # destroys a star with matching design_id and user_id
  def unstar!(design)
    star = self.stars.find_by_design_id(design.id)
    star.destroy!
  end

  # returns true of false if a design is starred by user
  def star?(design)
    self.stars.find_by_design_id(design.id)
  end
end
