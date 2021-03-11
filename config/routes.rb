Rails.application.routes.draw do

  devise_for :parent_users, controllers: {
    sessions: 'parent_users/sessions',
    registrations: 'parent_users/registrations'
  }

  devise_for :teacher_users, controllers: {
    sessions: 'teacher_users/sessions',
    registrations: 'teacher_users/registrations'
  }


  
  root to: "contacts#index"
  
  resources :contacts, only: [:index, :new, :create ]

end
