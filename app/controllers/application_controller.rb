class ApplicationController < ActionController::Base
	helper_method :current_user
	helper_method :signed_in?

	protect_from_forgery with: :exception
	def current_user
		if cookies[:user_id]
			user_id = cookies.signed[:user_id]
			User.find_by_id(user_id)
		end 
	end
	def sign_in user
	cookies.signed[:user_id] = user.id 
end	
	private
	def deck_params
		params.require(:deck).permit(:name)
  	end
  	def card_params
    params.require(:card).permit(:front, :back)
  end

def signed_in?
	current_user 
	end
	def authenticate
	if !signed_in?
	redirect_to new_session_path
	end
end
end

 

