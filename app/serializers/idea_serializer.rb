class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :title, :desc, :private, :user_id
  belongs_to :user
end
