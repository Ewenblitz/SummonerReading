class Chapter < ApplicationRecord
  belongs_to :tomes
  has_many :comments
  has_many :bookmarks
end
