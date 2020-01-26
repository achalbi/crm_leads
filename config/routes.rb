Rails.application.routes.draw do
  resources :enquiries
  resources :orders
  resources :customers
  resources :amcs
  resources :respondents
  resources :employees

  root 'respondents#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
