class ApplicationController < ActionController::Base
  before_filter :find_faye_client
  before_filter :set_faye_client_for_observer
  protect_from_forgery

  private

  def find_faye_client
    @faye_client = env['faye.client']
  end

  def set_faye_client_for_observer
    ActionObserver.faye_client = env['faye.client']
  end
end
