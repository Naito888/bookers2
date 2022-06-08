Rails.application.routes.draw do
  devise_for :books
  get 'homes/top'
  root to: 'homes#top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
