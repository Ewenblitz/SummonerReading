class TomesController < ApplicationController

  def show
    @tomes = Tome.all
    @tomes = Tome.find(params[:id])

    @chapters = Chapter.all
    @chapters = Chapter.where(tome_id: @tomes)
  end
end
