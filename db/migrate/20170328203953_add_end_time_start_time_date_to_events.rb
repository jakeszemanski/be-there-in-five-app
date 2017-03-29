class AddEndTimeStartTimeDateToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :start_time, :string
    add_column :events, :end_time, :string
    add_column :events, :date, :date
  end
end
