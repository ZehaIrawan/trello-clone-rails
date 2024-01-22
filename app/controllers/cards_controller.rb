class CardsController < ApplicationController
  before_action :set_board
  before_action :set_list

  def create
    @card = @list.cards.build(card_params)

    if @card.save
      # handle successful creation, maybe redirect somewhere
    else
      render :new
    end
  end

  private

  def set_board
    @board = Board.find(params[:board_id])
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def card_params
    params.require(:card).permit(:title)
  end
end
