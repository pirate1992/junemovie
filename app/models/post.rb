class Post < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :image, :movie_id, :post_id
end
