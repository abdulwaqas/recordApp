class HomeController < ApplicationController
   
    before_action :tenant_session

    def index
        if !current_user
         redirect_to user_session_path
        end
        
    end
    
private
    def tenant_session
        if !session[:tenant]
          redirect_to [:new, :tenant_session]
        end
      end
end
