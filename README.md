## Trails Server

A mock trails server for the Summit County mobile trail application

## Installation

Clone the GitHub repository:

```
git clone git@github.com:rclosner/trails-server ./trails-server
```

Install the dependencies:

```
cd trails-server
bundle install
```

Start the server:

```
ruby ./application.rb -p 4567
```

Go to the specified endpoints:

```
open http://localhost:4567/trails.json
```

## Resources

* Trails
* Trailheads
* Trailsegments
* Stewards
* Notifications
* Photos

## Contributing

1. Fork it ( http://github.com/<my-github-username>/gtfs/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
