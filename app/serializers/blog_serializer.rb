class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :poster, :likes, :views, :body, :summary
  belongs_to :category
  belongs_to :user


  def summary
    object.body[0..200]
  end
end
