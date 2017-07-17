class ProfileController < ApplicationController
  def remove_profile_pic
    current_user.remove_profile_pic!
    current_user.save
    redirect_to edit_user_registration_path
  end
end
