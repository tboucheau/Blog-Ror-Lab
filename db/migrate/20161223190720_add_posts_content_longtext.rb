class AddPostsContentLongtext < ActiveRecord::Migration[5.0]
    def change
      change_table :posts do |t|
	t.remove :content
	t.column :content, :text, limit: 4294967295
        end
    end
end
