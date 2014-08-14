require 'rubygems'
require 'sinatra'

# Index Page
get '/' do
  @page_title = 'Page Title'
  erb(:index)
end

# Results page
get '/item/:uuid' do
  params['uuid']
end

# Serve data
get '/data/*' do
  @data_directory = 'data'
  send_file @data_directory + '/' + params[:splat].join('/')
end

