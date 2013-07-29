class RemoveCatalogueOfMovie < ActiveRecord::Migration
  def change 
    remove_column :movies, :catalogue
  end
end
