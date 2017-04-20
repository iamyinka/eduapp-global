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

  
  
end

