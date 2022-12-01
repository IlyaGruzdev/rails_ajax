Rails.application.routes.draw do
  resources :palindroms, only: [:index, :new, :create]
  root 'palindroms#index'
end
