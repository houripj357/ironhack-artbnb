jack, pablo, vincent = Artist.create([
	{name: 'Jack Hourihan', email: 'jack@example.com', location: 'USA', medium: 'Mixed', password: 'password', password_confirmation: 'password'},
	{name: 'Pablo Picasso', email: 'pablo@example.com', location: 'Spain', medium: 'Paint', password: 'password', password_confirmation: 'password'},
	{name: 'Vincent van Gogh', email: 'vincent@example.com', location: 'France', medium: 'Paint', password: 'password', password_confirmation: 'password'}
])

patrick = Artist.create([
	{name: 'Patrick Hourihan', email: 'patrick@keyportdigital.com', location: 'Miami, FL', medium: 'Code', password: 'password', password_confirmation: 'password'}
])