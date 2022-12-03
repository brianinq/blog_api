class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster, :likes, :views
end
