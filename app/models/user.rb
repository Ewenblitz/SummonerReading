class User < ApplicationRecord
  has_many :comments
  has_many :bookmarks
  has_many :favorites
end
