# == Schema Information
#
# Table name: movies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  poster     :string(255)
#  summary    :text
#  video_file :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  avatar     :string(255)
#

class Movie < ActiveRecord::Base
  attr_accessible :name, :poster, :summary, :video_file, :avatar

  mount_uploader :avatar, AvatarUploader

  has_many :comments

  has_many :posts
end
