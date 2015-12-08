class PagesController < ApplicationController
  def index
    session[:user_params] ||= {}
    @user = User.new
  end
end
