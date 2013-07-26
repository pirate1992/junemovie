class AddImageToNotices < ActiveRecord::Migration
  def change
    add_column :notices, :image, :string
  end
end
