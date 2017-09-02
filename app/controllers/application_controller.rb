# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["USER_ID"] && password == ENV["PASSWORD"]
    end
  end
end
