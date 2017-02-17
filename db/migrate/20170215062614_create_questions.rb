class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questionable_type
      t.integer :questionable_id

      t.timestamps null: false
    end
    add_index :questions, :questionable_type
    add_index :questions, :questionable_id
  end
end
