class ChaptersController < ApplicationController

  def show
    @new_comment = Comment.new
  end
end
