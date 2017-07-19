class Picture < ApplicationRecord

	validates :url, presence: true
	validates :title, presence: true, length: { maximum: 80 }
	validates :tag, presence: true
	validates :year, presence: true, length: { is: 4 }
end
