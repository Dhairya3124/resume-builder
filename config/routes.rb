Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'signup'  => 'users#new'
  post   'signup'  => 'users#create'
  get    'projects/new/:experience_id' => 'projects#new'       

  resources :profiles , only: [:update, :show]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
    # catch all other routes 
  get    '*path'  => redirect("/")
end
