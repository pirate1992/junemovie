class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.integer :movie_id
      t.string :image
      t.references :movie

      t.timestamps
    end
    add_index :posts, :movie_id
  end
end
