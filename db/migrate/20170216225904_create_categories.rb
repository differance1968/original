class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type
      t.string :genre
      t.string :level

      t.timestamps null: false
    end
  end
end
