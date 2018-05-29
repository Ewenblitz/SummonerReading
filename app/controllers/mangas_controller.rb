class MangasController < ApplicationController
  def index
    @mangas = Manga.all
  end

  def show
    @mangas = Manga.find(params[:id])

  end


  # before_action :authenticate_user!, ecept: [:index, :show]


end
