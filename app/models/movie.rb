class Movie < ApplicationRecord
    #searchkick
    resourcify
    belongs_to :user
    has_many :reviews
    validates :title,:director_name,:director_dob, :actor_name, :actor_dob, :genra, :year, :image, :presence => true

    has_attached_file :image, styles: { medium: "400x600#" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
    #CATEGORY = ["Drama", "Comedy", "Action", "Adventure", "Horror"]
end
