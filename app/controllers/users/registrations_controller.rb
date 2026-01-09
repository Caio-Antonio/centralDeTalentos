# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  # GET /resource/sign_up
  def new
    super do |resource|
      resource.build_provider
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :last_name, provider_attributes: [ :phone, :address ] ])
  end
end
