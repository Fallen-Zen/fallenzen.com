class Resume < ActiveRecord::Base
  default_scope { order('created_at desc') }
  validates :name, :company, :from, :description, :presence => true
end
