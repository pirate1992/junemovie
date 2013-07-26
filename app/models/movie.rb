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
  mount_uploader :avatar, AvatarUploader
  mount_uploader :poster, PosterUploader
  has_many :comments, dependent: :destroy
  belongs_to :category
  validates :name, uniqueness: true, presence: true
end
