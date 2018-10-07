require "sinatra"
require_relative "config/application"
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

get '/' do
  redirect '/projects'
end

get '/projects' do
  @projects = Project.all
  erb :index
end

get '/projects/:id' do
  @projects = Project.find(params[:id])
  @users = @projects.users
  @tasks = @projects.tasks
  erb :show
end
