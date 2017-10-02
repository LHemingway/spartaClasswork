class UsersController < Sinatra::Base

	 # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end

  $users = [{
      id: 0,
      email: "user1@mail.com",
      first_name: "user1",
      last_name: "pass1",
      age: 21
  },
  {
      id: 1,
      email: "user2@mail.com",
      first_name: "user2",
      last_name: "pass2",
      age: 43
  },
  {
      id: 2,
      email: "user3@mail.com",
      first_name: "user3",
      last_name: "pass3",
      age: 11
  }]

  get '/users' do

      @email = "Email"

      @users = $users
  
      erb :'users/index'
  
  end

  get '/users/new'  do

    # create an empty user
    @user = {
      id: "",
      email: "",
      first_name: "",
      last_name: "",
      age: ""

    }

    erb :'users/new'
    
  end
    
  get '/users/:id' do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single user object available in the template
    @user = $users[id]
    
    erb :'users/show'
    
  end
    
  post '/users/' do
    
    new_user = {
    	id: $users.length,
    	email: params[:email],
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age]
    }

    $users.push new_user

    redirect "/users"
    
  end
    
  put '/users/:id'  do
    
    # data is gathered in the params object
    id = params[:id].to_i
      
    # get the user object from our data store
    user = $users[id]
      
    # update the values of the object with data from the request
    user[:email] = params[:email]
    user[:first_name] = params[:first_name]
    user[:last_name] = params[:last_name]
    user[:age] = params[:age]
      
    # save the user back to our data store ( at the spot it came from this time )
    $users[id] = user;
      
    # redirect the user to a GET route. We'll go back to the INDEX.
    redirect "/users"
    
  end
    
  delete '/users/:id'  do
    
    # get the ID
    id = params[:id].to_i

    # delete the user from the array
    $users.delete_at(id)

    # redirect back to the homepage
    redirect "/users"
    
  end
    
  get '/users/:id/edit'  do
    
    # get the ID and turn it in to an integer
    id = params[:id].to_i

    # make a single user object available in the template
    @user = $users[id]

    erb :'users/edit'
    
  end
	
	
end