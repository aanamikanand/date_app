class AddressesController < ApplicationController
def index
  	@addresses = Address.all
  end

  def new
    @user = User.find(params[:user_id])
  	@address = Address.new
  end

  def create
    @user = User.find(params[:address][:user_id])
  	@user.address = Address.new(address_params)
  	if @user.save
  		redirect_to address_path(@user.address)
  	else
  		render :new
  	end
  end

  def edit
  	@address = Address.find(params[:id])
  end

  def update
  	@address = Address.find(params[:id])
  	if @address.update(address_params)
  		redirect_to address_path(@address)
  	else
  		render :edit
  	end
  end

  def show
  	@address = Address.find(params[:id])
  end

  private

  	def address_params
  		params.require(:address).permit(:city, :state, :zip, :street, :user_id)
  		
  	end
end
