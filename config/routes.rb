Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :user
  root 'home#index'
  devise_scope :user do
  	root to: "user#new"
  end
  # get 'devise/signUp' => 'devise/registrations#new' 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
		