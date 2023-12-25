class HomeController < ApplicationController
  def index
    @boards = current_user.boards
  end
end