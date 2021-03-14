Rails.application.routes.draw do

resources :voices, only:[:index]
root to: 'voices#index'


end
