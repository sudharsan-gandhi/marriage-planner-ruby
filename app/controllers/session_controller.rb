
class SessionController < ApplicationController
	layout 'session'

	before_action :checklogin,:except => [:login,:logout,:handler,:index]
  def login
  end

  def logout
	session[:EmailID]=nil
  	session[:username]=nil
  	flash[:notice]="sucessfully logged out"
  	redirect_to(:action => 'login')
  end

  def handler
  	puts "im in"
  		if params[:user][:email].present? && params[:user][:password].present?
  			
  			user=User.where(:EmailID=>params[:user][:email]).first
  			puts user.FirstName
  				if user && user.authenticate(params[:user][:password])
  					session[:EmailID]=user.EmailID
            session[:User_ID]=user.ID
            session[:username]=user.FirstName
            redirect_to(:action =>'index')
          else
            flash[:notice]="check your credentials"
            redirect_to(:action => 'login')
  				end
  		end
 	end

  def index
  
  end


end
