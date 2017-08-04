
get '/properties' do 
	@properties = Property.all

	erb :'/properties/index'
end

get '/properties/new' do 
	erb :'/properties/new'
end

post '/properties' do 
	logged_in?

	@property = Property.create(name: params[:name], phone: params[:phone], building_address: params[:building_address])
	if @property.save
    redirect '/properties/:id'
  else
    erb :'/properties/new'
  end
end

get '/properties/:id' do
	@tenants = Tenant.all
	@property = Property.find(params[:id])
	@manager = PropertyManager.find_by property_id: params[:id]

	erb :'/properties/profile'
end