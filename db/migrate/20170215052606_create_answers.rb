class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.datetime :answer_at
      t.boolean :result

      t.timestamps null: false
    end
  end
end
