class CreatePostsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :posts_tables do |t|
      t.string :title
      t.text :content
    end
  end
end
