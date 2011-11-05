class ActionObserver < ActiveRecord::Observer
  cattr_accessor :faye_client
  observe Rails.configuration.faye_observers

  def broadcast_message(data)
    faye_client.publish '/listener', :data => data
  end

  def after_create(model)
  end

  def before_update(model)
    if model.changed?
      @client_changes = lambda do
        model.changes.each do |key, value|
          broadcast_message("$(\"##{model.class.name.downcase}_#{model.id}_#{key}\").html(\"#{value[1]}\")")
        end
      end
    else
      @client_changes = lambda {}
    end
  end

  def after_update(model)
    @client_changes.call
  end
end