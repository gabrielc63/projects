class Api::V1::ListsController < ApplicationController
  def update
    current_list = List.find(list_params[:id])
    if current_list.update(list_params)
      render json: current_list,
             include: [tasks: { include: { subtasks: { only: %i[id title is_completed] } } }]
    else
      render json: current_list.errors
    end
  end

  private

  def list_params
    params.require(:list).permit(:id, :name, :description, tasks_attributes:
      [:title, :description, :status, { subtasks_attributes: %i[title is_completed] }])
  end
end
