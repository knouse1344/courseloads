class PickuprequestsController < ApplicationController
  def index
  end

  def show
    @pickuprequest = Pickuprequest.find(params[:id])
  end

  def new
  	@pickuprequest = Pickuprequest.new
  end

  def create
  	@pickuprequest = Pickuprequest.new(pickuprequest_params)
  	if @pickuprequest.save
  		flash[:success] = "it worked!"
  		redirect_to @pickuprequest
  	else
  		render 'new'
  	end
  end

  def edit
    @pickuprequest = Pickuprequest.find(params[:id])
  end

  def update
    @pickuprequest = Pickuprequest.find(params[:id])
    if @pickuprequest.update_attributes(pickuprequest_params)
      flash[:success] = "it worked!"
      redirect_to @pickuprequest
    else
      render 'edit'
    end
  end

  def destroy
    Pickuprequest.find(params[:id]).destroy
    flash[:success] = "Request destroyed."
    redirect_to pickuprequests_url
  end

  private

    def pickuprequest_params
      params.require(:pickuprequest).permit(:name, :address, :weight)
    end
end
