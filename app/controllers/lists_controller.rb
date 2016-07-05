class ListsController < ApplicationController

  def create
    @list = current_user.lists.new(list_params)

    if @list.save
    else
      flash[:notice] = "Error"
    end
    redirect_to user_path(current_user)
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end

end
