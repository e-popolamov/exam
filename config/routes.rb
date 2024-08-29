Rails.application.routes.draw do
  scope 'products' do
    get '/', to: 'product#index'
    get '/:id', to: 'product#show'
    get '/search/:name', to: 'product#search'
    post 'union_colors', to: 'product#union_colors'
  end
  scope 'colors' do
    post 'union_product', to: 'colors#union_product'
  end
end
