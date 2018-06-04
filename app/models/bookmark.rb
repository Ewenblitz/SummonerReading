class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :chapter

  validates :user, presence: true
  validates :chapter, presence: true
  validates :bookmark, presence: true
end
