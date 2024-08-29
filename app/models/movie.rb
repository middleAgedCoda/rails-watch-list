class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :restrict_with_error
  validates_uniqueness_of :title
  validates :overview, presence: true
end
