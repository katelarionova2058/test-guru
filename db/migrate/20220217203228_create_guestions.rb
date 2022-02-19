class CreateGuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :guestions do |t|
      t.text :body, null: false
      t.references :test, null: false, foreign_key: true
      t.timestamps
    end
  end
end
