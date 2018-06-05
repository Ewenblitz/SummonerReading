class CommentsController < ApplicationController
  before_action :authenticate_user!

# Controller pour la création de commentaire, une condition est mise en place
# pour vérifier si le commentaire répond bien aux bonnes conditions

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @new_comment = Comment.new(comment_params)
    @new_comment.chapter = @chapter
    @new_comment.user = current_user

    if @new_comment.valid?
      @new_comment.save!
      flash[:notice] = "Votre commentaire a bien été ajouté ! Merci de votre retour ;)"
      redirect_to chapter_path(@chapter)
    else
      render "chapters/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:commentary, :rating)
  end
end
