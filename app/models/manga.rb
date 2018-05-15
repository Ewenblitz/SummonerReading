class Manga < ApplicationRecord
  has_many :tomes
  has_many :favorites
end
