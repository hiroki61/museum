class Museum < ApplicationRecord
	attachment :image
	has_many :favorites 
    has_many :users, through: :favorites
end
