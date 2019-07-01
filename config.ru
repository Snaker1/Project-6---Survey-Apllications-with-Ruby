#! usr/bin/env ruby
require 'rack'
load 'authentication.rb'
load 'app.rb'

use Authentication, "posts" do |username, password|
	(username == 'super') && (password == 'secret')
end

run App.new
