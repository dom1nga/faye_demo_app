class ApplicationController < ActionController::Base
  before_filter :find_faye_client
  before_filter :set_faye_client_for_observer
  protect_from_forgery
end
