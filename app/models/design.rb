class Design < ApplicationRecord
  belongs_to :user

  has_attached_file :image, styles: { boxa: "243x176", boxbc: "243x320", boxd: "243x288" }
  validates :image, :attachment_presence => true
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

end
