class Chapter < ApplicationRecord
  belongs_to :tome
  has_many :comments
  has_many :bookmarks
end
