class AddCatalogueToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :catalogue, :string
  end
end
