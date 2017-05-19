class Project < ApplicationRecord
  has_many :images, as: :imageable
  has_many :videos, as: :videoable
  has_many :taggings
  has_many :tags, through: :taggings

end
