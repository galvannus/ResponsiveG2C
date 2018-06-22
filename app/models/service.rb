class Service < ApplicationRecord

	has_attached_file :avatar, styles: { medium: "800x600", thumb: "400x300" }, default_url: "/images/:style/missing.jpg"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	belongs_to :category
	has_many :contracts
end
