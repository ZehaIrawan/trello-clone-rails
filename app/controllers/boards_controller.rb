class BoardsController < ApplicationController
  def index
    @boards = current_user.boards
    print(@boards,'abc' )
  end
end
