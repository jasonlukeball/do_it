class TodosController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @todo = @list.todos.new(todo_params)
    @todo.user = current_user
    if @todo.save
    else
      flash[:notice] = "Todo could not be saved!"
    end
    redirect_to user_path(current_user)
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end

end
