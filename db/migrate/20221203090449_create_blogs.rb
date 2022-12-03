class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :poster
      t.integer :likes
      t.integer :views
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
