class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :chapter

  validates :user, presence: true
  validates :chapter, presence: true
  validates :commentary, length: { minimum: 5 }
end
