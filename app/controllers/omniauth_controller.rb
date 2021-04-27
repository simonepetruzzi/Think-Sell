class OmniauthController < ApplicationController
    
    def new
    end
    
    def destroy
    end

    def facebook 
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        sign_in_and_redirect @user
      else
        flash[:error] = 'There was a problem signin you in through facebook, please register or try signin later.'
        redirect_to new_user_registration_url
      end
    end


    def google_oauth2
    @user = User.create_from_provider_data(request.env['omniauth.auth'])
      if @user.persisted?
        sign_in_and_redirect @user
      else
        flash[:error] = 'There was a problem signin you in through facebook, please register or try signin later.'
        redirect_to new_user_registration_url
      end
    end


    def failure
        flash[:error] = 'There was a problem signin you in through facebook, please register or try signin later.'
        redirect_to new_user_registration_url
    end

end
