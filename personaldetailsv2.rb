require 'sinatra'

get '/' do
	
	erb :home2
end

post '/name' do
	name = params[:user_name]
	redirect '/age?user_name=' + name
end

get '/age' do
	name = params[:user_name]
	erb :get_age2, :locals=>{:name => name}
end

post '/age' do
	age = params[:age]
	name = params[:user_name]
	redirect '/hair_color?user_name=' + name + '&age=' + age
end

get '/hair_color' do
	age = params[:age]
	name = params[:user_name]
	erb :hair_color, :locals=>{:name => name, :age => age}
end

post '/hair_color' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	redirect '/eye_color?user_name=' + name + '&age=' + age + '&hair_color=' + hair_color
end

get '/eye_color' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	erb :eye_color, :locals=>{:name => name, :age => age, :hair_color => hair_color}
end

post '/eye_color' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	redirect 'food?user_name=' + name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color' + eye_color
end

get '/food' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	erb :food, :locals=>{:name => name, :age => age, :hair_color => hair_color, :eye_color => eye_color}
end

post '/food' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	food = params[:food]
	redirect 'drink?user_name=' + name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color' + eye_color + '&food=' + food
end

get '/drink' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	food = params[:food]
	erb :drink, :locals=>{:name => name, :age => age, :hair_color => hair_color, :eye_color => eye_color, :food => food}
end

post '/drink' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	food = params[:food]
	drink = params[:drink]
	redirect 'three_nums2?user_name=' + name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color' + eye_color + '&food=' + food + '&drink=' + drink
end

get '/three_nums2' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	food = params[:food]
	drink = params[:drink]
	erb :three_nums2, :locals=>{:name => name, :age => age, :hair_color => hair_color, :eye_color => eye_color, :food => food, :drink => drink}
end

post '/three_nums2' do
	age = params[:age]
	name = params[:user_name]
	hair_color = params[:hair_color]
	eye_color = params[:eye_color]
	food = params[:food]
	drink = params[:drink]
	num1 = params[:fav_num1]
	num2 = params[:fav_num2]
	num3 = params[:fav_num3]
	redirect 'results?user_name=' + name + '&age=' + age + '&hair_color=' + hair_color + '&eye_color' + eye_color + '&food=' + food + '&drink=' + drink + '&fav_num1=' + num1 + '&fav_num2=' + num2 + '&fav_num3=' + num3
end