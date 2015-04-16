class RegistrationsController < ApplicationController

  def login
    begin
      @user = User.find_by(:username => params[:username])
      session[:user_id] = @user.id
    rescue
      flash[:invaliduser] = "Invalid username. Please try again or create a new account."
    end
    redirect_to root_path
  end

  def logout
    session[:user_id] = ""
    redirect_to root_path
  end

	def newuser
		@user = User.create(params[:user])
    session[:user_id] = @user.id
    flash[:newuser] = "Thank you for registering for this site! We're thrilled to have you!"
    redirect_to root_path
	end

  def useraccount
    @user = current_user
  end

	def newuserform
		@user = User.new
	end	

end