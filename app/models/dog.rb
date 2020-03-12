class Dog < ApplicationRecord
    has_many :daily_activities
    validates :name, :age, :weight, :breed, presence: true
end
