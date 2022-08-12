Rails.application.routes.draw do

  namespace :admin do
    get 'preferences/index'
  end

  namespace :admin do
    get 'preferences/show'
  end

  namespace :admin do
    get 'preferences/new'
  end

  namespace :admin do
    get 'preferences/edit'
  end

  namespace :admin do
    get 'preferences/create'
  end

  namespace :admin do
    get 'preferences/update'
  end

  namespace :admin do
    get 'preferences/destroy'
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end
end
