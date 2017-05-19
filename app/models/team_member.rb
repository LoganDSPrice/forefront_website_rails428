class TeamMember < ApplicationRecord
  has_many :images, as: :imageable
  # has_many :videos, as: :videoable #I doubt videos will be requested for team members

  validates_presence_of :first_name
end
