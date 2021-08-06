Rails.application.routes.draw do
  resources :job_titles
  resources :magazines
  resources :wine_oenologists
  resources :oenologists
  devise_for :users
  resources :winestrains
  resources :strains
  resources :wines

  root 'wines#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
