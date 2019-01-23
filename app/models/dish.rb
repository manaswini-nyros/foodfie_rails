class Dish < ApplicationRecord
	has_and_belongs_to_many :restaurants
	belongs_to :tag
	has_many :ratings
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/


	def self.search(search)
	 if search
     where('name LIKE?',"%#{search}%")
    else
     all
    end
end
end
