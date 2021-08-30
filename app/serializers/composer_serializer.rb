class ComposerSerializer < ActiveModel::Serializer
  attributes :id, :name, :full_name, :born, :died, :genre, :bio
end
