class Ad < ActiveRecord::Base
  ratyrate_rateable 'rating'
  belongs_to :user

end
