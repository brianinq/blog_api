class CustomBlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster, :likes, :views
  belongs_to :user
  belongs_to :category
  has_many :comments
end
