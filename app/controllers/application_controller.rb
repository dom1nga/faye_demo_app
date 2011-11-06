class ApplicationController < ActionController::Base
  before_filter :set_faye_client
  protect_from_forgery
end
