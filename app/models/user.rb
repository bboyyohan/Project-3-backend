class User < ApplicationRecord
    has_many :interests, :class_name => "Match", :foreign_key => "liker_id"
    has_many :matches, :foreign_key => "liked_id"

    # def likers

    # end 
end
