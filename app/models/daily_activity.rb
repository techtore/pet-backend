class DailyActivity < ApplicationRecord
    belongs_to :dog
    validates :name, :kind, :date, :description, :time, presence: true
end
