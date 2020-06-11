class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string       :title
      t.text         :body
      t.string       :image_file_name
      t.string       :image_content_type
      t.integer      :image_file_size
      t.datetime     :image_updated_at

      t.timestamps
    end
  end
end
