# Five route methods - GET, POST, UPDATE, PATCH, DELETE


# Display new user form

get '/users/new' do
	erb :"user/new"
end

# Create new user

post '/users' do
		user = User.create(name: params[:name], email: params[:email], password: params[:password])
		redirect "users/#{user.id}"
end

# View user profile

get '/users/:id' do
	@user = User.find(params[:id])
	erb :"user/show"
end

# Display user edit form

get '/users/:id/edit' do
	@user = User.find(params[:id])
	erb :'user/edit'
end

# Update user

patch '/users/:id' do

end

# Delete user

delete '/users/:id' do

end


