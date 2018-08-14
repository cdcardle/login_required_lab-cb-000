class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name] == ""
      redirect_to '/login'
    else
      current_user = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

  private

  def current_user
    session[:name]
  end
end
