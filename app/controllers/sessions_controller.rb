class SessionsController < ApplicationController
  def new

  end

  def create
    name = params[:name]
    if name && name.present? then
      session[:name] = params["name"]
      redirect_to "/"
    else
      redirect_to "/login"
    end
  end

  def destroy
    session.delete :name
  end
end
