class Movie < ApplicationRecord
    validates :title, presence: true
    validates :sinopsis, presence: true
    validates :duration, presence: true
    validates :premiere, presence: true
    validates :director, presence: true
    belongs_to :director 
end
