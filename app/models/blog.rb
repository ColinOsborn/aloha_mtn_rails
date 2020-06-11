class Blog < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :body, presence: true
    has_attached_file :image, styles: {medium: "500x500", thumb: "200x200"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
