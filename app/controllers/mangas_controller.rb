class MangasController < ApplicationController
  def index
    @mangas = Manga.all
  end

  def show
    @mangas = Manga.find(params[:id])
    @new_comment = Comment.new
  end


  # before_action :authenticate_user!, ecept: [:index, :show]


end
