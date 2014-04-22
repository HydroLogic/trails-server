require 'sinatra'
require 'json'

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
