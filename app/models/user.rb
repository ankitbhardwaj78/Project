class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   ratyrate_rater
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  has_many :questions
  has_many :answers
 

  mount_uploader :profile_pic, ProfilePicUploader 
      OPTIONS = [
        "CSE", "ECE","ICE","EEE","MECHANICAL","EE","IT"
      ]
end
