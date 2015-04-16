class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :podcast_id
      t.integer :episode_id
    end
  end
end
