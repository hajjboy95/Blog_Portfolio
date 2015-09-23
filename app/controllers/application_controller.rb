class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def self.protect_against_login
    before_action :authenticate_user!, except:[:index,:show]

  end
end
