class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :composer_id
end
