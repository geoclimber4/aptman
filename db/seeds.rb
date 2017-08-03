User.create({
	user_name: 'geo',
	email: 'geo@geo.com',
	password: 'geo',
	phone: '1234567890',
	title: 'Mr. Boss Man'
	})

5.times do
	property = Property.create({
		name: Faker::StarWars.specie,
		phone: '5555555555',
		building_address: Faker::HitchhikersGuideToTheGalaxy.planet
	})

PropertyManager.create({
		user_id: 1,
		property_id: property.id
	})
end

index = 1
10.times do
Tenant.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: '5555555555',
	unit_id: index
	})
	index += 1 
end


index = 1
10.times do 
	Unit.create({
		address: Faker::HitchhikersGuideToTheGalaxy.location,
		name: index,
		size: "1BR",
		rent_amount: "$" + Faker::Number.number(4),
		property_id: Property.all.sample.id
		})
	index += 1 
end