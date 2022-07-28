Rails.application.routes.draw do
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

root "dashboard#index"
resources :genders do
  resources :clothes
end
 

  # Defines the root path route ("/")
  # root "articles#index"
end
