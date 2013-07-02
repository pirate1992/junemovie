class Movie < ActiveRecord::Base
  attr_accessible :name, :poster, :summary, :video_file
end
