class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(@user)
    'devise/registrations/sign_up_profile.html.haml'
  end
end
