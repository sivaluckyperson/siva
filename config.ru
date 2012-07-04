# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment',  __FILE__)
require 'rack/bug'
   use Rack::Bug, :secret_key => "someverylongandveryhardtoguesspreferablyrandomstring"
   
run Sample::Application