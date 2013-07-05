class Movie < ActiveRecord::Base
  attr_accessible :name, :poster, :summary, :video_file

  has_many :comments

  has_many :posts
end
