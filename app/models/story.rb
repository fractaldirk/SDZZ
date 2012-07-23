class Story < ActiveRecord::Base
  attr_accessible :description, :image, :remote_image_url, :title
  mount_uploader :image, ImageUploader
  has_many :storycomments, :dependent => :destroy
end
