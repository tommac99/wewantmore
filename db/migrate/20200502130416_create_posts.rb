class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :caption
      t.string :url
      t.string :post_image
      t.string :post_video_url

      t.timestamps
    end
  end
end
