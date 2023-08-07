class Api::V1::BoardsController < ApplicationController
  def index
    boards = Board.all
    render json: boards,
           include: [lists: { only: %i[id name],
                              include: { tasks: { only: %i[id title description status],
                                                  include: { subtasks: { only: %i[id title
                                                                                  is_completed] } } } } }]
  end

  def create
    board = Board.new(board_params)
    if board.save
      render json: board, include: :lists
    else
      render json: board.errors
    end
  end

  def show; end

  def destroy; end

  private

  def board_params
    params.permit(:name, lists_attributes: %i[name position])
  end
end
