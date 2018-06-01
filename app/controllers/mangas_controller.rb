class MangasController < ApplicationController
  def index
    @mangas = Manga.all
    @tomes = Tome.all
    @chapters = Chapter.all
  end

  def show
    @mangas = Manga.find(params[:id])
    @tomes = Tome.where(manga_id: params[:id])
    @chapters = Chapter.where(tome_id: @tomes)
  end


  # before_action :authenticate_user!, ecept: [:index, :show]


end
