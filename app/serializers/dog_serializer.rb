class DogSerializer < ActiveModel::Serializer
  has_many :daily_activities
  attributes :id, :name, :weight, :breed, :age
end
