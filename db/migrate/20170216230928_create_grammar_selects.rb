class CreateGrammarSelects < ActiveRecord::Migration
  def change
    create_table :grammar_selects do |t|
      t.string :choice
      t.boolean :correct

      t.timestamps null: false
    end
  end
end
