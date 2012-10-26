class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate

  protected

  def authenticate
    return unless Rails.env.production?
    authenticate_or_request_with_http_basic do |username, password|
      username == BASIC_USER && password == BASIC_PASS
    end
  end
end
