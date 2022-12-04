class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :blog_id
end
