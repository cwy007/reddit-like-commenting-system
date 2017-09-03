class Story < ApplicationRecord
  has_many :comments, as: :commentable 
end
