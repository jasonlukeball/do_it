class TodosController < ApplicationController


  def create
    @list = List.find(params[:list_id])
    @todo = @list.todos.new(todo_params)
    @todo.user = current_user

    if @todo.save
    else
      flash[:notice] = "Todo could not be saved!"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  def destroy
    @todo = Todo.find(params[:id])

    if @todo.destroy
    else
      flash[:notice] = "Todo could not be deleted, please try again!"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  private

  def todo_params
    params.require(:todo).permit(:name)
  end

end
