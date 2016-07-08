require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/word")
require("./lib/definition")

get("/") do
  @words = Word.all()
  erb(:index)
end

get('/words/new') do
  erb(:word)
end

get('/words') do
  @words = Word.all()
  erb(:index)
end

post("/words") do
  new_word = params.fetch("new_word")
  Word.new(new_word).save()
  @words = Word.all
  erb(:index)
end

get("/definitions/:id") do
  @definition = Definition.find(params.fetch('id').to_i())
  erb(:definition)
end

get("/words/:id") do
  @word = Word.find(params.fetch('id').to_i())
  erb(:word)
end

get('/words/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definition_form)
end

post("/definitions") do
  definition = params.fetch("new_definition")
  @definition = Definition.new(definition)
  @definition.save()



end
