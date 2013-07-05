# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  headline   :string(255)
#  author     :string(255)
#  con        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class News < ActiveRecord::Base
  attr_accessible :author, :con, :headline
end
