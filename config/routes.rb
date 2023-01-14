Rails.application.routes.draw do
  root 'results#index'

  get '/results/:query', to: 'results#show'
end
