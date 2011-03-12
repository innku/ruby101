require 'sinatra'
require 'rubygems'
require 'sinatra'

get '/' do
  "Hola desde Sinatra"
end

get '/erb' do
  @name = 'Adrian'
  erb :hi
end

helpers do
  def dime_hola
    'Hola'
  end
end