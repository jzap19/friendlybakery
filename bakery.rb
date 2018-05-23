require 'sinatra'
# require 'sendgrid'
require 'rubocop'
require './bakedgoods'
require 'mailgun'

get('/') do
  erb(:index)
end

post('/') do
  mg_client = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

  # Define your message parameters
  message_params = { from: 'jz3255@gmail.com',
                     to:   params[:email_name],
                     subject: 'Bitter Sweets Newsletter!',
                     text:    'Thank you, you are on your first path to embracing Bitter sweetness!
                   Here a list of our full catalogs: Cookies: Chocolate Chip Cookie, Kitchen Sink Cookie, Brownie Cookie.
                   Cakes: Strawberry Shortcake, Napolean Cake, Red Velvet Cake.
                   Muffins:  BlueBerry Muffin, Double Chocolate Chip Muffin, Apple Cinnamon Muffin.' }

  # Send your message through the client
  mg_client.send_message(ENV['MAILGUN_API_DOMAIN'], message_params)

  redirect '/'
end

get('/cookies') do
  diffcookie = Cookie.new('Chocolate Chip Cookie', 'The OG of cookies and a staple in the baking biz. Can never go wrong with this classic.', '$40.00', '/images/chocolatechip.jpg')
  diffcookie2 = Cookie.new('Kitchen Sink', 'A little bit of everything. You name it you can have it mixed with rasins, peanut butter chips and nuts.', '$40.00', '/images/kitchensink.jpg')
  diffcookie3 = Cookie.new('Brownie Cookie', 'The full chocolatey experience.', '$40.00', '/images/browniecookie.jpg')
  @my_cookies = [diffcookie, diffcookie2, diffcookie3]
  erb(:cookies)
end

get('/cakes') do
  diffcake = Cake.new('Strawberry Shortcake', 'The staple in many bakery shops. The Strawberry Shortcake is not anything but short.', '$40.00', '/images/shortcake.jpg')
  diffcake2 = Cake.new('Napolean Cake', 'A French Delight thats hard to miss.', '$40.00', '/images/napolean.jpg')
  diffcake3 = Cake.new('Red Velvet Cake', 'The Red velvet cake is as sweet as they come.', '$40.00', '/images/redvelvet.jpg')
  @my_cakes = [diffcake, diffcake2, diffcake3]
  erb(:cakes)
end
get('/muffins') do
  diffmuffin = Muffin.new('Blueberry Muffin', 'A delicious pick me up and with a boost of anti-oxidants to start off your day right.', '$40.00', '/images/blueberry.jpg')
  diffmuffin2 = Muffin.new('Double Chocolate Chip Muffins', 'Double the chocolate double the trouble. Every bite that doubles down on the classic.', '$40.00', '/images/double.jpg')
  diffmuffin3 = Muffin.new('Apple Cinnamon Muffins', 'With the perfect amount of cinnamon, little pockets of apples, and a sweet crumb topping, these Apple Cinnamon Muffins are the perfect way to start your day.', '$40.00', '/images/apple.jpg')
  @my_muffins = [diffmuffin, diffmuffin2, diffmuffin3]

  erb(:muffins)
end
get('/catalog') do
  diffcookie = Cookie.new('Chocolate Chip Cookie', 'The OG of cookies and a staple in the baking biz. Can never go wrong with this classic.', '$40.00', '/images/chocolatechip.jpg')
  diffcookie2 = Cookie.new('Kitchen Sink', 'A little bit of everything. You name it you can have it mixed with rasins, peanut butter chips and nuts.', '$40.00', '/images/kitchensink.jpg')
  diffcookie3 = Cookie.new('Brownie Cookie', 'The full chocolatey experience.', '$40.00', '/images/browniecookie.jpg')
  @my_cookies = [diffcookie, diffcookie2, diffcookie3]
  diffcake = Cake.new('Strawberry Shortcake', 'The staple in many bakery shops. The Strawberry Shortcake is not anything but short.', '$40.00', '/images/shortcake.jpg')
  diffcake2 = Cake.new('Napolean Cake', 'A French Delight thats hard to miss.', '$40.00', '/images/napolean.jpg')
  diffcake3 = Cake.new('Red Velvet Cake', 'The Red velvet cake is as sweet as they come.', '$40.00', '/images/redvelvet.jpg')
  @my_cakes = [diffcake, diffcake2, diffcake3]
  diffmuffin = Muffin.new('Blueberry Muffin', 'A delicious pick me up and with a boost of anti-oxidants to start off your day right.', '$40.00', '/images/blueberry.jpg')
  diffmuffin2 = Muffin.new('Double Chocolate Chip Muffins', 'Double the chocolate double the trouble. Every bite that doubles down on the classic.', '$40.00', '/images/double.jpg')
  diffmuffin3 = Muffin.new('Apple Cinnamon Muffins', 'With the perfect amount of cinnamon, little pockets of apples, and a sweet crumb topping, these Apple Cinnamon Muffins are the perfect way to start your day.', '$40.00', '/images/apple.jpg')
  @my_muffins = [diffmuffin, diffmuffin2, diffmuffin3]
  erb(:catalog)
end
