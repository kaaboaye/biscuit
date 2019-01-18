# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

get '/teas/new', to: 'teas#new'
post '/teas', to: 'teas#create'
# get '/teas', to: 'teas#index'

root to: 'teas#index'
get '/teas/:id', to: 'teas#show'
