Rails.application.routes.draw do

  get 'messages/create'
  devise_for :parent_users, controllers: {
    sessions: 'parent_users/sessions',
    registrations: 'parent_users/registrations'
  }

  devise_for :teacher_users, controllers: {
    sessions: 'teacher_users/sessions',
    registrations: 'teacher_users/registrations'
  }

  resources :contacts

  resources :messages, only: [:create ]

  root to: "contacts#index"

end
