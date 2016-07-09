class ListsController < ApplicationController

  def create
    @list = current_user.lists.new(list_params)

    if @list.save
    else
      flash.now[:alert] = ">_<"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end

  end


  def destroy
    @list = List.find(params[:id])
    if @list.destroy
    else
      flash[:notice] = ">_<"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  private
  def list_params
    params.require(:list).permit(:name)
  end

end
