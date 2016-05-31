class UsersController < ApplicationController
  def index
  	@users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.all.order('created_at DESC')
    end
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new

  end

  def create
  	@user = User.new(user_params)

    if @user.save
      flash[:success] = "User name: #{@user.name} created!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "User with name: #{@user.name} updated!"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to users_path
  end

  private

  	def user_params
  		params.require(:user).permit(:name, 
  			:gender, :age, 
  			:religion, :country, 
  			:status, :image, 
  			:email, :password)
  	end
end
