class UsersController < ApplicationController
  layout "signed-out"

  def show
    require_authentication!; set_sidebar
    @profile_user = User.find(params[:id])
    render layout: 'application'
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:show_register_notice] = false
      flash[:notice] = 'You have registered successfully!'
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    render layout: 'edit_user' if require_authentication!
  end

  def update
    require_authentication!

    if @user.update(user_params)
      flash[:notice] = 'Your profile has been updated!'
      redirect_to root_path
    else
      flash[:notice] = 'Please fill out all fields!'
      redirect_to edit_user_path
    end
  end

  private

  def user_params
    params[:user].permit(:username, :password, :first_name, :last_name, :bio, :frequency)
  end
end
