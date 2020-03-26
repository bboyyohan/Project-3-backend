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

    def update
        match = Match.find(params[:id])
        match.update(match_params)
        # byebug
        render json: match
    end 

    def getUserMatches
        user = User.all.find(params[:id])
        render json: user.matches.to_json(:include => {
            :liker => { 
                :except => [:created_at, :updated_at]
            }
        },
        :except => [:created_at, :updated_at])
        
        # render json: user.matches.to_json(:include => :liker)
        # works ^

        # (:include => {
        #     :liker_id => {
        #         :except => [:created_at, :updated_at]
        #     }
        # }, :except => [:created_at, :updated_at])
    end 

    def getMutualMatches
        user = User.all.find(params[:id])
        allMatches = user.matches + user.interests
        approvedMatches = allMatches.select{|a| a.approval == true}
        render json: approvedMatches.to_json(:include => {
            :liker => { 
                :except => [:created_at, :updated_at]
            },
            :liked => { 
                :except => [:created_at, :updated_at]
            }
        },
        :except => [:created_at, :updated_at])
    end 

    def destroy
        match = Match.find(params[:id])
        match.destroy
    end 

    private

    def match_params
        params.require(:match).permit(:liker_id, :liked_id, :approval)
    end 
end
