class SessionsController < ApplicationController
  def new
  end

  def create
    # render params.inspect
    @user = User.find_by(email: permit[:email])   
    if @user && @user.authenticate(permit[:password])     
      log_in @user
      redirect_to '/'
    else      
       flash.now[:errors] = 'Invalid Email or password'
       render 'new'    
    end
  end

  def permit
    params.require(:session).permit(:email, :password)
  end
end
