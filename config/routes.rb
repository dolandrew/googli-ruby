Rails.application.routes.draw do
  root "results#index"

  get "/results/:query", to: "results#show"
  # get "/results/:query", to: "results#show"
  # get "/results", to: "results#edit"
end
