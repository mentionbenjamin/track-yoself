require('sinatra')
require( 'sinatra/contrib/all' )
require_relative('../models/todo')
require_relative('../models/note')
require_relative('../models/day')
require('pry')
also_reload("./models/*")


#INDEX
get '/notes' do
  @notes = Note.all
  erb(:'notes/index')
end

#FIND BY ID
get '/notes/:id' do
  @note = Note.find(params['id'].to_i)
  erb(:'notes/show')
end

#EDIT
get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb(:edit)
end

#DELETE
post '/notes/:id/delete' do
  note = Note.find(params[:id])
  note.delete()
  redirect to '/notes'
end