Rails.application.routes.draw do
  scope 'products' do
    get '/', to: 'product#index'
    get '/:id', to: 'product#show'
    get '/search/:name', to: 'product#search'
    # add route for union
  end
  scope 'colors' do
    # add route for colors
  end
end
