class ActionObserver < ActiveRecord::Observer
  Rails.configuration.faye_host
  observe Rails.configuration.faye_observers

  def after_create(model)
    puts "*"*80
    puts model
    puts "-"*80
  end

  def after_update(model)
    puts "+"*80
    puts model
    puts "="*80
  end
end