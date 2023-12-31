class BoardsController < ApplicationController
  def index
    @boards = current_user.boards
  end

  def new
    @board = Board.new
  end

  def create
   @board = current_user.boards.new(board_params)

    if @board.save
      redirect_to boards_path, notice: 'Board was successfully created.'
    else
      render :new
    end
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
