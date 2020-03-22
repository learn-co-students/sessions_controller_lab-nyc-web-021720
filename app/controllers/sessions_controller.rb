class SessionsController < ApplicationController
  def new
  end

  def create 
    # return redirect_to(controller: 'sessions',
    #                    action: 'new') if !params[:name] || params[:name].empty?
    # session[:name] = params[:name]
    # redirect_to controller: 'application', action: 'hello'
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
    elsif session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    end

  end

  def destroy 
    session.delete :name
    redirect_to controller: 'application', action: 'hello'
  end
end
