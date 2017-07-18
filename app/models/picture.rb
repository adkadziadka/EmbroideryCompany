class Picture < ApplicationRecord

	validates :url, presence: true
	validates :title, presence: true
	validates :tag, presence: true, length: { maximum: 50 }
	validates :date, presence: true, length: { is: 4, }
end
