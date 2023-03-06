class Screen < Theater
	belongs_to :theater , optional: true
	has_one :movie
	# validates :name, uniqueness: true 
	validates :name, uniqueness: { scope: :theater_id }
end