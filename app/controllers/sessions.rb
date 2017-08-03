
get '/sessions/login' do
  erb :'users/login'
end

post '/sessions/login' do

  if User.authenticate(params[:user_name], params[:password])
    @user = User.authenticate(params[:user_name], params[:password])
    session[:user_id]=@user.id
    redirect "/users/:id"
  else
    redirect '/sessions/login'
  end
end

get '/sessions/logout' do
  session.delete(:user_id)
  redirect '/'
end
