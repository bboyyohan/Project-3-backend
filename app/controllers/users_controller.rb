class UsersController < ApplicationController
    def index
        users = User.all
        render json: users.to_json(:include => {
            :matches => {
                :except => [:created_at, :updated_at]
            },
            :interests => {
                :except => [:created_at, :updated_at]
            }
        }, :except => [:created_at, :updated_at])
    end 

    def create
        user = User.create(user_params)
        render json: user
    end 

    private 
    
    def user_params
        params.require(:user).permit(:name, :email, :gender, :dob, :description, :picture)
    end 
end
