class Bookmark < ApplicationRecord
  belongs_to :users
  belongs_to :chapters
end
