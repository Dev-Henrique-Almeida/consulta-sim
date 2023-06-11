Rails.application.routes.draw do
  resources :medicos do
    get 'consultas_agendadas', on: :member
  end

  resources :consulta
  resources :medicos
  resources :pacientes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #  # Defines the root path route ("/")
  root "pacientes#home"
end
