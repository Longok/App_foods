module SessionsHelper

    def log_in user
        session[:user_id] = user.id
    end

    def current_user
        @current_user ||= User.find_by id: session[:user_id]
    end

    def logged_in?
        if current_user.present? || @current_cart
            current_user
            @cart
        else
            current_user
        end
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
