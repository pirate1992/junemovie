class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :headline
      t.text :description

      t.timestamps
    end
  end
end
