class ChangeDateToBeStringInDailyActivities < ActiveRecord::Migration[6.0]
  def change
    change_column :daily_activities, :date, :string
  end
end
