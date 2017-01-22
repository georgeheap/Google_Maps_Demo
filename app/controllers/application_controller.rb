class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #automatic redirect
  before_action :authenticate_user!
end
