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
