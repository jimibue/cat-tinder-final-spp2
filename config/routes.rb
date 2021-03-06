Rails.application.routes.draw do
  # generates all devise routes
  mount_devise_token_auth_for 'User', at: 'api/auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    get 'everyone', to:'cats#everyone'
    get 'my_cats', to:'cats#my_cats'
    resources :cats, only: [:index, :update]
  end
end
