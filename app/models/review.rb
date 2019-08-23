class Review < ApplicationRecord
    belongs_to :user
    belongs_to :movie
    belongs_to :reserve
    validates :movie_id, uniqueness: { scope: :user_id, message: "You've already reviewed this movie!" }

end
