Rails.application.routes.draw do
  resources :friends
  resources :exercises
  resources :workouts
  resources :routines
  resources :athletes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
