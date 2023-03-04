class Theater < ApplicationRecord
	has_many :screens 
	has_many :movies 
	# has_many :users

	# scope :show_all_theater, -> {where("theater_id: nil and screen_id: nil and movie_id: nil")} 
	scope :show_all_theater, -> {where(theater_id: nil , screen_id: nil , movie_id: nil)}
end
