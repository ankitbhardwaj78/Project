class HomeController < ApplicationController
  # before_action :authenticate_user!
  def index
  	@user=User.new
  end

end
