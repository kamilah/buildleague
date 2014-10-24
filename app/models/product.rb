class Product < ActiveRecord::Base
   has_attached_file :image, :styles => { :medium => "300x", :thumb => "200x200>" }, :default_url => "default.jpg",
                     :storage => :dropbox,
                     :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
end
