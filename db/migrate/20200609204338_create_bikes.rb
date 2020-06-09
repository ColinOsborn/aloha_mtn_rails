class CreateBikes < ActiveRecord::Migration[5.2]
  def change
    create_table :bikes do |t|
      t.string :name
      t.string :image_path
      t.boolean :rental
      t.boolean :demo

      t.timestamps
    end
  end
end
