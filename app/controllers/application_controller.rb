class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception



def devise_parameter_sanitizer
  if resource_class == User
    User::ParameterSanitizer.new(User, :user, params)
  else
    super # Use the default one
  end
end

def devise_parameter_sanitizer
  if resource_class == Agent
    Agent::ParameterSanitizer.new(Agent, :agent, params)
  else
    super # Use the default one
  end
end

def after_sign_in_path_for(resource)
  apply_online_path(current_user) #your path
end
  
def after_sign_out_path_for(resource)
  new_user_session_path #your path
end
  
end

