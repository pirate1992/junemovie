class AddVideoToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :video, :string
  end
end
