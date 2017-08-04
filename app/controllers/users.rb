
get '/users/new' do
  if !logged_in?
    erb :'users/new'
  else
    redirect '/users/:id'
  end
end

post '/users' do
  @user = User.new(email: params[:email], password: params[:password], user_name: params[:user_name], phone: params[:phone], title: params[:title])
  if @user.save
    session[:user_id]= @user.id
    redirect '/users/:id'
  else
    erb :'/users/new'
  end
end

# Basic functionality added
get '/users/:id' do
  @user = User.find(session[:user_id])
  erb :'/users/profile'
end