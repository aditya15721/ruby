Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get '/hello', to: 'hello#world'
  get '/about', to: 'hello#about'

  resources :contacts
  root 'contacts#index'

end
