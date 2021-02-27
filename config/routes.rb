Rails.application.routes.draw do
  resources :teams
 # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'teams#index'
  devise_for :users, :controllers => { :registrations => 'users/registrations' }
resources :shifts do
  collection do
    get :get_members,to: "shifts#get_members"
  end
end
end
