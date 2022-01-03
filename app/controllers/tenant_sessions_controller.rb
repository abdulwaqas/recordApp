class TenantSessionsController < ApplicationController
  
  
    #layout 'devise'
  
    def new
 
      reset_session
    end
  
    def create
      
      if Shop.find_by(name: params[:name])
        session[:tenant] = params[:name]
        redirect_to root_path
      else
        flash[:notice] = "Shop not found"
        redirect_to [:new, :tenant_session]
      end
    end
  
   
  end