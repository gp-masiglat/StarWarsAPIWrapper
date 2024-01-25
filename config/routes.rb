Rails.application.routes.draw do
  namespace :api do
    get 'characters', to: 'star_wars#characters'
    get 'planets', to: 'star_wars#planets'
    get 'starships', to: 'star_wars#starships'
    get 'films', to: 'star_wars#films'
    get 'species', to: 'star_wars#species'
    get 'vehicles', to: 'star_wars#vehicles'
  end
end
