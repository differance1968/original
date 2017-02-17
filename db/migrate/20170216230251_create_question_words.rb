class CreateQuestionWords < ActiveRecord::Migration
  def change
    create_table :question_words do |t|
      t.string :word
      t.string :meaning
      t.boolean :correct

      t.timestamps null: false
    end
  end
end
