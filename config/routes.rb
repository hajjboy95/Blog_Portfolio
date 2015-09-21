Rails.application.routes.draw do
  get 'contact/index'

  resources :posts
  resources :projects
  root 'home#index'

end
