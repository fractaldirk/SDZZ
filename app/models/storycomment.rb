class Storycomment < ActiveRecord::Base
  belongs_to :story
  attr_accessible :body, :commenter
end
