class Post < ActiveRecord::Base
  validates_presence_of(:titre, :contenu)
  has_attached_file :image, :styles => {
      :large => "400x400>",
      :medium => "300x300>",
      :thumb => "100x100#"
  },
  :default_url => "/images/:style/missing.png",
  :path => "#{Rails.root}/public/system/:class/:attachment/:style/:filename",
  :url => '/system/:class/images/:style/:basename.:extension'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
