
get '/tenants/new' do
  if !logged_in?
    erb :'tenants/new'
  else
    redirect '/tenants/:id'
  end
end

post '/tenants' do
	logged_in?

  @tenant = Tenant.new(email: params[:email],  tenant_name: params[:tenant_name], phone: params[:phone], title: params[:title])
  if @tenant.save
    session[:tenant_id]= @tenant.id
    redirect '/tenants/:id'
  else
    erb :'/tenants/new'
  end
end

# Basic functionality added
get '/tenants/:id' do
  @tenant = Tenant.find(params[:id])
  erb :'/tenants/profile'
end
