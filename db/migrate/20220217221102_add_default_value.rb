class AddDefaultValue < ActiveRecord::Migration[7.0]
  def up
  	change_column_default(:tests, :level, 0)
  	change_column_default(:answers, :correct, 0)
  end

  def down
  	change_column_default(:tests, :level, nil)
  	change_column_default(:answers, :correct, nil)
  end
end
