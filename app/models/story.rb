class Story < ActiveRecord::Base
  attr_accessible :description, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end
