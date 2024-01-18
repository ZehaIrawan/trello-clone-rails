class ListsController < ApplicationController
  def new
    @board = Board.find(params[:board_id])
    @list = @board.lists.build
  end

  def create
    @board = Board.find(params[:board_id])
    @list = @board.lists.build(list_params)
    if @list.save
      # handle successful creation, maybe redirect somewhere
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
