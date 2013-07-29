class AddNoticeRefToCharacters < ActiveRecord::Migration
  def change
    change_table :characters do |t|
      t.belongs_to :notice
    end  
    add_index :characters, :notice_id
  end
end
