Rails.application.routes.draw do
  get 'contact/index'

  get 'articles/index'
  get 'articles/show'

  root 'home#index'

end
