class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.string :cimage
      t.references :movie

      t.timestamps
    end
    add_index :comments, :movie_id
  end
end
