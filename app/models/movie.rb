class Movie < Screen
	belongs_to :screen , optional: true
	belongs_to :theater , optional: true
	has_many :users
end