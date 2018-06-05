class BookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_chapter, only: [:create]

# Cette methode ne fonctionne pas je l'ai donc commenter pour ne pas faire de conflit lors de la vue d'un chapitre

  def create
    # if bookmark_params != nil
    #   @chapterSeen = Bookmark.new
    #   @chapterSeen.user = current_user
    #   @chapterSeen.chapter = @chapter
    #
    #   if @chapterSeen.valid?
    #     @chapterSeen.save!
    #     redirect_to chapter_path(@chapter)
    #   end
    # else
    #   redirect_to chapter_path(@chapter)
    # end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:chapter_id, :user_id)
  end

  def find_chapter
    @chapter = Chapter.find(params[:chapter_id])
  end
end
