class InterestsController < ApplicationController
  before_action :user
  before_action :interest, only: [:show, :edit, :update, :destroy]

  def index
  	@interests = @user.interests
  end

  def show
  end

  def new
  	@interest = Interest.new
  end

  def create
    @interest = @user.interests.new(interest_params)
    if @interest.save
      redirect_to user_interest_path(@user, @interest)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      redirect_to user_interest_path(@user, @interest)
    else
      render :edit
    end
  end

  def destroy
    @interest.destroy
    redirect_to user_interests_path(@user)
  end
  
  private
    def interest_params
      params.require(:interest).permit(:name, :description)
    end

    def interest
      @interest = @user.interests.find(params[:id])
    end

    def user
      @user = User.find(params[:user_id])
    end
end
