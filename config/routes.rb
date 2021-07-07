Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :student, only: [:index, :show, :new, :create, :edit, :update]
  
  patch 'students/:id', to: 'students#update'
  
  get 'about', to: 'static#about'
end
