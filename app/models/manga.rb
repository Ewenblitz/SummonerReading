class Manga < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :tomes
  has_many :favorites

  validates :photo, presence: true
end
