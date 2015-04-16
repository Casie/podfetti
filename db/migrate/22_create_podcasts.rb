class CreatePodcasts < ActiveRecord::Migration
  def change
  	create_table :podcasts do |t|
  		t.string :title
  		t.integer :identifier
  		t.string :image_url
  		t.string :feed_url
  		t.string :summary
  	end
  end
end