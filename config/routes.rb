Rails.application.routes.draw do
  get '/flows', to: 'flows#index'
  get '/flows/:id', to: 'flows#by_id'
end
