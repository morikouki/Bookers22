class BookCommentsController < ApplicationController

	before_action :ensure_correct_user, only: [:create, :destroy]

	def create
		book = Book.find(params[:book_id])
		comment = current_user.book_comments.new(book_comment_params)
		comment.book_id = book.id
	    comment.save
	end

	def destroy
		book = Book.find(params[:book_id])
		comment = current_user.book_comments.find_by(params[book_id: book.id])
		comment.destroy
	end

	private

	def book_comment_params
		params.require(:book_comment).permit(:comment)
	end

	def ensure_correct_user
		@book = Book.find(params[:book_id])
	end
end
