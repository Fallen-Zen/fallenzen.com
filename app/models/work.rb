class Work < ActiveRecord::Base
  default_scope { order('created_at desc') }
  validates :name, :description, :presence => true
  has_attached_file :attachment, :styles => { :thumb => "517x300>" }
  validates_attachment_content_type :attachment, :content_type => ["image/jpeg", "image/tiff", "image/png", "image/jpg"]
end
