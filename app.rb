require 'rubygems'
require 'sinatra'
require 'haml'

# Helpers
require './lib/render_partial'

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'
set :haml, {:format => :html5, :layout => :'layouts/layout'} # default Haml format is :xhtml

# Application routes
get '/' do
  haml :index
end

get '/about' do
  haml :about
end
