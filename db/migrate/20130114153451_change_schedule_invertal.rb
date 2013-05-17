class ChangeScheduleInvertal < ActiveRecord::Migration
  def up
    # Gets around postgres issue with type casting
    remove_column :projects, :polling_interval
    add_column :projects, :polling_interval, :integer, null: true
  end

  def down
    remove_column :projects, :polling_interval
    add_column :projects, :polling_interval, :string, null: true
  end
end
