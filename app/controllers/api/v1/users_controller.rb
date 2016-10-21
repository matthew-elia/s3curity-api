# app/controllers/api/v1/users_controller.rb

module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      render json: User.all
    end

    def create
      user = User.find_or_create_by(email: params[:email])
      user.save
      render :json => user
	end

    def show
    	redirect_to '/users'
    end

  end
end
