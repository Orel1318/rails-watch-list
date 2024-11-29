class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "This movie is already bookmarked in this list" }
  
  belongs_to :movie
  belongs_to :list
end
