module SessionsHelper

     # save logged in user to session
     def log_in(user)
        session[:user_id] = user.id
    end

    # get current logged in user 
    def current_user
        if session[:user_id]
            @current_user ||= User.find_by(id: session[:user_id])
        end
    end

    # boolean => return if user is logged in
    def logged_in?
        !current_user.nil?
    end

    # redirect to login unless logged in
    def authenticate
        redirect_to '/login' unless current_user
      end
end
