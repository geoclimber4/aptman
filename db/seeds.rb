User.create({
	user_name: 'geo',
	email: 'geo@geo.com',
	password: 'geo',
	phone: '1234567890',
	title: 'Mr. Boss Man'
	})

5.times do
	Property.create({
		name: Faker::StarWars.specie,
		phone: '5555555555',
		building_address: Faker::HitchhikersGuideToTheGalaxy.location
	})

end