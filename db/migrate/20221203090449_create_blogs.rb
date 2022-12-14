class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :poster
      t.text :body
      t.integer :likes, default: 0
      t.integer :views, default: 1
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
