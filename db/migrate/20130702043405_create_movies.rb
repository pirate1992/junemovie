 class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :poster
      t.text :summary
      t.string :video_file
      t.timestamps
    end
  end
end
