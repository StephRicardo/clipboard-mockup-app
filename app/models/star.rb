class Star < ApplicationRecord
  belongs_to :design
  belongs_to :user

  validates :user_id, uniqueness: { scope: :design_id }
end
