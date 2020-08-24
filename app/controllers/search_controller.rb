class SearchController < ApplicationController

	def search
		@user_or_book = params[:model]
		@how_search = params[:method]
		if @user_or_book == "1"
		   @users = User.search(params[:content], @user_or_book, @how_search)
		else
		   @books = Book.search(params[:content], @user_or_book, @how_search)
		end
	end
end
