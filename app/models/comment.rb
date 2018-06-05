class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :chapter

  validates :user, presence: true
  validates :chapter, presence: true
  validates :commentary, length: { minimum: 5 }
  validates :rating, presence: true

  # On vérifie la présnce des validateur et ont set le minimum de texte qui doit être rensigner pour un commentaire
end
