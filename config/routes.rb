Rails.application.routes.draw do
  
  resources :users
  root 'users#index'
  get 'users/:id/profile_photo' => 'users#serve_photo', as: :profile_photo

end
