class Bike < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    has_attached_file :image, styles: {medium: "500x500", thumb: "200x200"}
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
