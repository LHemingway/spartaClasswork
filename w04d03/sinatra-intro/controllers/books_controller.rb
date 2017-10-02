class BooksController < Sinatra::Base

	configure :development do
      register Sinatra::Reloader
  end

	# Index
	get "/books" do
		"<h1>All the books!</h1>"
	end

	# Create
	post "/books" do
		"Post new book"
	end

	# New
	get "/books/new" do
		"<h1>Add a new en</h1>"
	end

	# Edit
	get "/books/:id/edit" do
		id = params[:id]
		"<h1>Edit this one #{id} ?</h1>"
	end

	# Show
	get "/books/:id" do
		id = params[:id]
		"<h1>All the books! #{id}</h1>"
	end

	# Update
	put "/books/:id" do
		id = params[:id]
		"<h1>updating this #{id}</h1>"
	end

	# Delete
	delete "/books/:id" do
		id = params[:id]
		"<h1>Deleting this #{id}</h1>"
	end
end