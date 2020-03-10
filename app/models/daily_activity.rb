class DailyActivity < ApplicationRecord
    belongs_to :dog
    validates :name, :kind, :date, :description, presence: true
end
