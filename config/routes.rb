Rails.application.routes.draw do
  resources :videos
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'static#home'
end
