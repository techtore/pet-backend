class AddTimeToDailyActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :daily_activities, :time, :string
  end
end
