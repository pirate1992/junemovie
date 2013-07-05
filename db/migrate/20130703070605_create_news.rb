class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :headline
      t.string :author
      t.text :con

      t.timestamps
    end
  end
end
