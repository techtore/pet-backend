class DailyActivitySerializer < ActiveModel::Serializer
  belongs_to :dog
  attributes :id, :dog_id, :name, :kind, :time, :description, :date
end
