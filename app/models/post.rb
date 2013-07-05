# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  movie_id   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  belongs_to :movie
  attr_accessible :image, :movie_id, :post_id
end
