class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable
      OPTIONS = [
        "CSE", "ECE","ICE","EEE","MECHANICAL","EE","IT"
      ]
end
