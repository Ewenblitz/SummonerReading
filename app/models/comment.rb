class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :chapter

  validates :user, presence: true
  validates :mangas, presence: true
  validates :text, length: { minimum: 5 }
end
