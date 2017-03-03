Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :fizz_buzz, only: [:new, :create]

  root to: 'fizz_buzz#new'
end
