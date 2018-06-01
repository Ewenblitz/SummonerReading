class ChaptersController < ApplicationController

  def show
    @chapter = Chapter.find(params[:id])
    @new_comment = Comment.new
  end
end
