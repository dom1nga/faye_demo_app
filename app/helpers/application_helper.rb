module ApplicationHelper
  def broadcast(&block)
    @faye_client.publish '/listener', :data => capture(&block)
  end
end
