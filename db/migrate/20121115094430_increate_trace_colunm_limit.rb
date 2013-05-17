class IncreateTraceColunmLimit < ActiveRecord::Migration
  def up
    change_column :builds, :trace, :text
  end

  def down
  end
end
