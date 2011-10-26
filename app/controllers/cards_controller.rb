class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(params)
  end

  def create
    @card = Card.create!(params[:card])
  end

end
