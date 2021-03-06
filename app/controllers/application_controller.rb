class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_device_type

private
  def set_device_type
    request.variant = :phone if browser.device.mobile?
  end
end
