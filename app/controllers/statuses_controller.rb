class StatusesController < ApplicationController

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    status_params = params.require(:status).permit(:status, :user, :likes)
    @status = Status.new(status_params)
    if @status.save
      flash[:notice] = "Status was created successfully"
      redirect_to status_path(@status)
    else
      render :new
    end
  end

  def show
    @status = Status.find(params[:id])
  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    status_params = params.require(:status).permit(:status, :user, :likes)
    @status = Status.find(params[:id])
    if @status.update(status_params)
      flash[:notice] = "Status was edited successfully"
      redirect_to status_path(@status)
    else
      render :edit
    end
  end

  def destroy
    @status = Status.find(params[:id])
    @status.destroy
    flash[:notice] = "Status was destroyed successfully"
    redirect_to root_path
  end

end
