class LoginController < ApplicationController
  layout 'application'
  
  def new
  end

  def create
    @user=User.new(params_value)
    if @user.save
      flash[:notice]= "successfully registered in as #{@user.FirstName}"
      redirect_to(:controller=>'session',:action =>'login')
    else
      render('create')
    end
  end

 

  def show

  end

  private
    def params_value
      params.require(:user).permit(:FirstName,:MiddleName,:LastName,:password,:password_confirmation,:DateOfBirth,:Gender,:EmailID)
    end
end
