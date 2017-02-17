class CreateCategoriesQuestions < ActiveRecord::Migration
  def change
    create_table :categories_questions do |t|
      t.string :question_id
      t.string :category_id

      t.timestamps null: false
    end
  end
end
