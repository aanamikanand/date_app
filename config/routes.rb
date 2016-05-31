Rails.application.routes.draw do
  get 'interests/index'

  get 'interests/show'

  get 'interests/new'

  get 'interests/edit'

  root 'users#index'

  resources :addresses

  resources :users do
    resources :interests
  end
end
