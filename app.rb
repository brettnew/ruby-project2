require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")
require("./lib/dealership")

get("/") do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:word)
end

post("/words") do
  description = params.fetch("new_word")
  new_word = Word.new(word)
  new_word.save()
  erb(:definition_form)
end

post("/definition") do
  description = params.fetch("new_definition")
  new_definition = Definition.new(definition)
  new_definition.save()
  erb(:index)
end
