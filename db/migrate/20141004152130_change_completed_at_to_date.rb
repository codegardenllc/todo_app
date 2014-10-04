class ChangeCompletedAtToDate < ActiveRecord::Migration
  def up
    change_column :items, :completed_at, :date
  end

  def down
    change_column :items, :completed_at, :datetime
  end
end
