class News < ActiveRecord::Base
  default_scope { order('created_at desc') }
  before_validation :set_slug
  validates :title, :content, :presence => true
  validates :slug, :presence => true, :uniqueness => true
  has_attached_file :attachment, :styles => { :thumb => "517x281>" }
  validates_attachment_content_type :attachment, :content_type => ["image/jpeg", "image/tiff", "image/png", "image/jpg"]
  
  def to_param
    slug
  end
  
  def self.search(search, page)
  	order('created_at desc').where('content like ?', "%#{search}%").paginate(page: page, per_page: 5)
  end
  
  private
  def set_slug
    return unless slug.nil? or title.to_slug != slug
    self.slug = title.to_slug
  end
end
