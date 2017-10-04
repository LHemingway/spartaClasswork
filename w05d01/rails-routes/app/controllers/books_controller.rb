class BooksController < ApplicationController

	def index
		@books = ["book1", "book2"]
  end	

  def show
  	@book_id = params[:id]
  end

  def new
  end
	
	def edit
	end

	def create
	end

	def update
	end

	def destroy
	end

end