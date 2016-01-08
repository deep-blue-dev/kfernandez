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
    p @user.current_step
    p session[:user_step]
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
    if @user.new_record?
        # byebug
        render "new"
    else
      session[:user_step] = session[:user_params] = nil
      flash[:notice] = "User saved"
      redirect_to @user
    end
  end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
     format.html
    #  format.pdf do
    #    render :pdf => "show",
    #           :template => 'users/show.pdf.erb',
    #           :layout => 'pdf'
    #  end
     format.pdf do
        @pdf = render_to_string :pdf => "show",
            :template => 'users/show.pdf.erb',
            :encoding => "UTF-8"
        send_data(@pdf, :filename => @user.name,  :type=>"application/pdf")
      end
   end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation,
                                  :residence, :spouse_agreement, :children, :locate_spouse,
                                  :uncontested, :date_of_birth, :address, :spouse_name,
                                  :spouse_dob, :spouse_address, :spouse_email)
  end
end
