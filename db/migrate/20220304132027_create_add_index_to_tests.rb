class CreateAddIndexToTests < ActiveRecord::Migration[7.0]
  def up
    create_table :add_index_to_tests do |t|
    t.timestamps
  end

  def change
    add_index :tests , [ :title , :level ] , unique:  true
  end
end
end
