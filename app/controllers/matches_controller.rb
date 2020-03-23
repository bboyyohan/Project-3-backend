class MatchesController < ApplicationController
    def index
        matches = Match.all
        render json: matches
    end 

    def create
        #shows matches where user have been already liked
      
        duplicateMatch = Match.all.select do |match|
            match.liked_id == params[:liker_id]
        end

        foundMatch = duplicateMatch.find do |match|
            match.liker_id == params[:liked_id].to_i
        end 
        # byebug
        if foundMatch 
            render json: foundMatch
        else 
            match = Match.create(match_params)
            render json: match
        end 
    end 

    def getUserMatches
        user = User.all.find(params[:id])
        render json: user.matches.to_json(:include => :liker)
        # (:include => {
        #     :liker_id => {
        #         :except => [:created_at, :updated_at]
        #     }
        # }, :except => [:created_at, :updated_at])
    end 

    private

    def match_params
        params.require(:match).permit(:liker_id, :liked_id)
    end 
end
