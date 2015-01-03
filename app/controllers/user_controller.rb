class UserController < ApplicationController

  def new

  end

  def create
    @user = User.new(params[:User])
    if @user.save
      flash[:notice]="Sign up Successful!!"
    else
      flash[:notice]="Invalid form."
    end
    #render 'new'
  end
end