class BoardsController < ApplicationController
  before_action :authenticate_user!
  def index
    @boards = current_user.boards
  end

  def new
    @board = Board.new
  end

  def create
   @board = current_user.boards.new(board_params)

    if @board.save
      redirect_to root_path, notice: 'Board was successfully created.'
    else
      render :new
    end
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
