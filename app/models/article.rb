class Article < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'user_id'
  has_many   :images, as: :imageable
  has_many   :videos, as: :videoable

  validates_presence_of :text
end
