class Comment < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :body, :cimage, :commenter
end
