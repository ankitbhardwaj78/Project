class Material < ActiveRecord::Base
	 validates :title,:semester,:branch,:subject,:category, presence: true
end
