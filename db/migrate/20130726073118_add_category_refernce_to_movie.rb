class AddCategoryRefernceToMovie < ActiveRecord::Migration
  
  def change
    change_table :movies do |t|
      t.belongs_to :category
    end
    
    add_index :movies, :category_id
  end
  
end
