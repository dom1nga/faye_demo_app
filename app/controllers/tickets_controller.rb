class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update_attributes(params)
  end

  def create
    @ticket = Ticket.create!(params[:ticket])
  end
end
