class Tome < ApplicationRecord
  belongs_to :mangas
  has_many :chapters
end
