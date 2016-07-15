class ListsController < ApplicationController


  def create
    @list = current_user.lists.new(list_params)

    if @list.save
      @intercom_event = {
        :name => 'created-list',
        :metadata => {
          :id => @list.id,
          :name => @list.name
        }
      }
    else
      flash.now[:alert] = ">_<"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  def edit
    @list = List.find(params[:id])
    @intercom_event = {
      :name => 'edited-list',
      :metadata => {
        :id => @list.id,
        :name => @list.name
      }
    }

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  def update
    @list = List.find(params[:id])
    @list.assign_attributes(list_params)

    if @list.save
      @intercom_event = {
        :name => 'updated-list',
        :metadata => {
          :id => @list.id,
          :name => @list.name
        }
      }
    else
      flash[:alert] = ">_<"
    end

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end


  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      @intercom_event = {
        :name => 'deleted-list',
        :metadata => {
          :id => @list.id,
          :name => @list.name
        }
      }
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
