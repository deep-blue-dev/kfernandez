class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show]
  before_action :set_user, only: [:index, :create, :new, :edit, :update, :destroy]

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = @user.id

    if @profile.save
      redirect_to user_profile_path(@user, @profile)
      flash[:notice] = "You have successfully created a new account"
    else
      render :new
      flash[:notice] = "There was an error try again"
    end
  end

  def show
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def profile_params
    params.require(:profile).permit(:user_id, :name, :spouse_name, :address)
  end
end
