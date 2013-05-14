class UsersController < ApplicationController
  
def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
end
  
  def index
    @user = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user }
    end
  end
  
end
