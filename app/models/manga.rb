class Manga < ApplicationRecord

  # On ajoute un uploader pour bien charger les photos lors des seed
  mount_uploader :photo, PhotoUploader
  has_many :tomes
  has_many :favorites

  validates :photo, presence: true
end
