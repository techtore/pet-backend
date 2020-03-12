class Dog < ApplicationRecord
    has_many :daily_activities
    accepts_nested_attributes_for :daily_activities, allow_destroy: true
    validates :name, :age, :weight, :breed, presence: true
end
