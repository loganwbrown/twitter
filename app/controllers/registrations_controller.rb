class RegistrationsController < Devise::RegistrationsController


  protected

  def after_sign_up_path_for(resource)
    
    UserMailer.welcome(@user).deliver
    user_path(@user)
  end

end
