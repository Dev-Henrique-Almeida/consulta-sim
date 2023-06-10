Rails.application.routes.draw do
  resources :medicos
  resources :consulta
  resources :pacientes
  resources :enderecos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #  # Defines the root path route ("/")
  root "consulta#index"
end
