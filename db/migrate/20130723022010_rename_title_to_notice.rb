class RenameTitleToNotice < ActiveRecord::Migration
  def change
    rename_table :titles, :notices
    
  end
end
