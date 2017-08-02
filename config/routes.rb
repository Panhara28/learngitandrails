Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "homes#index"
  get "about"=>"pages#about"
  get "help"=>"pages#help"
  get "contact"=>"pages#contact"
  get "login"=>"pages#login"
end
