class Director < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    validates :country, presence: true
    validates :has_oscars, inclusion: { in: [true, false] }
    has_many :movies , :dependent => :destroy
    has_many :rankings, :dependent => :destroy
end
