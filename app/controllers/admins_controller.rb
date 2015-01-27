class AdminsController < ApplicationController

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = admin.new(user_params)
    if @admin.save
      log_in @admin
      flash[:success] = "Welcome Twisted Bit Studios!"
      redirect_to @admin
    else
      render 'new'
    end
  end

  def admin_params
    params.require(:admin).permit(:name, :email, :password,
                                  :password_confirmation)
  end
end
