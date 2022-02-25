class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :answer, null: false
      t.boolean :correct, default: false, null: false
      t.references :guestion, null: false, foreign_key: true
      t.timestamps
    end
  end
end
