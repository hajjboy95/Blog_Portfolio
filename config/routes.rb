Rails.application.routes.draw do
  root 'home#index'
  resources :posts
  resources :projects
  resources :contacts , only:[:new,:create]

end
