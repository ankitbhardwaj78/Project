class Material < ActiveRecord::Base
	 validates :title,:semester,:branch,:subject,:category,:file, presence: true
end
