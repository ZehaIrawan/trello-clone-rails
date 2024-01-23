class CardsController < ApplicationController
  before_action :set_board
  before_action :set_list

  def create
    @card = @list.cards.build(card_params)
    @cards = Card.where(list_id: @list.id)

      respond_to do |format|
        if @card.save
          format.turbo_stream { render turbo_stream: turbo_stream.append(@list, partial: "cards/card", locals: { card: @card }) }
        else
          puts @card.errors.full_messages
        end
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
