# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
root to: 'teas#index'

get '/teas/new', to: 'teas#new'
post '/teas', to: 'teas#create'
get '/teas/:id', to: 'teas#show'

get '/teas/:tea_id/brewings/new', to: 'brewings#new'
post '/brewings', to: 'brewings#create'
