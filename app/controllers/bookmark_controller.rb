class BookmarksController < ApplicationController
    
    def create
        bookmark = Bookmark.create(bookmark_params)
        render json: { message: "Bookmark created"}
    end
    
    def bookmark_params
        params.require(:bookmark).permit(:article_id, :user_id)
    end
end