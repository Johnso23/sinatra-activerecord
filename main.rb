require 'sinatra' 
require 'sinatra/activerecord'

set :database, "sqlite3:test.sqlite3"
	

 class User < ActiveRecord::Base   
 end

require './models'

User.create(email: "brian@nycda.com", fname: "Brian")

 {email: "brian@nycda.com", fname: "Brian"}

 User.find(10).update_attributes(fname: "BRIAN!!!", email: "brian@brianfountain.com")

 get '/' do   @users = User.all   erb :index end
# in index.erb <% @users.each do |user| %>   Name: <%= user.fname %> <% end %>
