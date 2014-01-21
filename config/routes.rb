Spitly::Application.routes.draw do

  root :to => 'urls#index'

  resources :urls

  match '/:code', to: 'urls#redirection'
  match '/:code/preview', to: 'urls#preview', as: 'preview'



end
