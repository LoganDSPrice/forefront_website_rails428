class Video < ApplicationRecord
  belongs_to :videoable, polymorphic: true

  validates_presence_of :url
end
