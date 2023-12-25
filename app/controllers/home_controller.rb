class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @boards = current_user.boards
    @board = Board.new
  end
end