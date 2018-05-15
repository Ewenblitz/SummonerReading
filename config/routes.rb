Rails.application.routes.draw do
  devise_for :users
  resources :favorites
  resources :bookmarks
  resources :chapters
  resources :tomes
  resources :mangas
  resources :comments
  resources :users
  get 'welcome/index'
  root 'mangas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
