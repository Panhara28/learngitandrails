Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#index"
  get "about"=>"pages#about"
  get "help"=>"pages#help"
  get "contact"=>"pages#contact"
  get "login"=>"pages#login"
  get "signup"=>"users#new"

end
