class Material < ActiveRecord::Base
	 validates :title,:semester,:branch,:subject,:type, presence: true
end
