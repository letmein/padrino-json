padrino-json
============

Tiny JSON helper for Padrino 

Instead of writing 
```ruby
JSON.parse(request.body.string)
```
use the helper
```ruby
json_data
```

In Gemfile
```ruby
gem "padrino-json", "~> 0.0.1", :require => "padrino_json"
```

In app.rb
```ruby
register Padrino::JSON
```

Use it
```ruby
put :update, :map => '/foos/:id' do
  Foo.find(params[:id]).update_attributes(json_data['foo'])
end
```
