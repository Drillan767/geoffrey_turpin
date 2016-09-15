class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :titre, use: :slugged
  mount_uploader :image, ImageUploader
end
