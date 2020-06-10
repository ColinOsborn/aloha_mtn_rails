class AddPaperclipFieldsToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :image_file_name,    :string
    add_column :bikes, :image_content_type, :string
    add_column :bikes, :image_file_size,    :integer
    add_column :bikes, :image_updated_at,   :datetime
    remove_column :bikes, :image_path,       :string
  end
end
