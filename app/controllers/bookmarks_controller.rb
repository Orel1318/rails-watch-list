class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to list_path(@bookmark)
    else
      render  :new, status: :unprocessable_entity
  end

  def show
    def show
      @bookmark = Bookmark.find(params[:id])
    end
  end


  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.'
  end

  private
  def bookmark_params
    params.require(:bookmark).permit(:comment)
  end
end
