class Product < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium => "300x", :thumb => "200x200>" }, :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
