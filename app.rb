require("sinatra")
require("sinatra/reloader")
require("./lib/tamagotchis")
require("pry")
also_reload("lib/**/*.rb")

get("/") do
  erb(:main)
end

get("/nap") do
  erb(:nap)
end

get("/feed") do
  erb(:feed)
end

get("/play") do
  erb(:play)
end

get("/dayplus") do
  erb(:dayplus)
end

post("/name") do
  @name = params[:name]
  example = Tamagotchi.new({ :name => @name, :food_level => 10, :sleep_level => 10, :activity_level => 10 })
  example.save()
  erb(:name)
end

get("/name") do
  erb(:name)
end
