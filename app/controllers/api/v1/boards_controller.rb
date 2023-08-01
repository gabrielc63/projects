class Api::V1::BoardsController < ApplicationController
  def index
    boards = Board.all
    render json: boards
  end

  def create
  end

  def show
  end

  def destroy
  end
end
