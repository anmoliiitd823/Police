class Criminal < ApplicationRecord
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	geocoded_by :address   # can also be an IP address
	after_validation :geocode          # auto-fetch coordinates
	
	validates :first_name, length: { maximum: 15 }
	validates :second_name, length: { maximum: 15}
	validates_presence_of :height,:weight,:first_name,:second_name,:identification_mark,:location_of_crime,:address,:description,:age
  	validates :gender, :inclusion => { :in => %w(Male Female male female MALE FEMALE) }
end
