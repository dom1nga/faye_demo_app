class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def update
    @card = Card.find(params[:id])
    @card.update_attributes(params[:card])
  end

  def create
    @card = Card.create!(params[:card])
  end
  
  def destroy
    @card = Card.find(params[:id])
    @card.destroy()
    respond_to do |format|
      format.js
    end
  end

end
