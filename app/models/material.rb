class Material < ActiveRecord::Base
	ratyrate_rateable 'rating'
	 validates :title,:semester,:branch,:subject,:category,:file, presence: true
	 
end
