class UsersController < ApplicationController
  def new
    session[:user_params] ||= {}
    @user = User.new
    @user.current_step = session[:user_step]
  end

  def create
    session[:user_params].deep_merge!(user_params) if user_params

    @user = User.new(session[:user_params])
    @user.current_step = session[:user_step]

    p "*" * 100
    # p session[:user_params].each_value { |f| print f if f == "true" }
    p qualified?(session[:user_params])
    p session[:user_params]
    p "*" * 100

    if params[:back_button]
      @user.previous_step
    elsif @user.last_step?
      @user.save
    else
      @user.next_step
    end
    # byebug
    session[:user_step] = @user.current_step
    if @user.new_record? #|| !qualified?(session[:user_params])
        render "new"
    else
      session[:user_step] = session[:user_params] = nil
      flash[:notice] = "User saved"
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation,
                                  :residence, :spouse_agreement, :children, :locate_spouse,
                                  :uncontested)
  end
end
