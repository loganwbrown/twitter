class RegistrationsController < Devise::RegistrationsController

  def create
    super
    
  end

  protected

  def after_sign_up_path_for(resource)
    user_path(current_user)
  end

end
