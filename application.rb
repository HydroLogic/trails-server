require 'sinatra'
require 'json'
require 'rack/cors'

use Rack::Cors do |config|
  config.allow do |allow|
    allow.origins '*'
    allow.resource '*',
      methods: [:get, :post, :put, :delete],
      headers: :any,
      max_age: 0
  end
end

RESOURCES = %w( trails trailheads trailsegments stewards notifications photos ).freeze

RESOURCES.each do |resource|
  get "/#{resource}.json" do
    content_type :json
    File.read( File.expand_path("../data/#{resource}.json", __FILE__) )
  end
end

get "/" do
  "Available Resources: #{ RESOURCES.join(", ") }"
end
