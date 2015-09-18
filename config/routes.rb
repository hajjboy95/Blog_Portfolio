Rails.application.routes.draw do
  get 'contact/index'

  resources :posts

  root 'home#index'

end
