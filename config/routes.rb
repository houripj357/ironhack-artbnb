Rails.application.routes.draw do
  devise_for :artists
  root "static_pages#home"

  get "about" => 'static_pages#about', as: :about
  get "contact" => 'static_pages#contact', as: :contact

  get "artists" => 'artists#index'
  get "artists/:id", to: 'artists#show'


end
