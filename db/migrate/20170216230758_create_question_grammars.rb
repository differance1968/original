class CreateQuestionGrammars < ActiveRecord::Migration
  def change
    create_table :question_grammars do |t|
      t.string :question

      t.timestamps null: false
    end
  end
end
