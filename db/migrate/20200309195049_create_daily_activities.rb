class CreateDailyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_activities do |t|
      t.string :name
      t.string :kind
      t.datetime :date
      t.text :description
      t.integer :dog_id

      t.timestamps
    end
  end
end
