class User < ApplicationRecord
  has_and_belongs_to_many :movies
  has_many :pets
end
