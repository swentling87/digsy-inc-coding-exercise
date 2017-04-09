Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'welcome#index'
  match 'admin' => 'welcome#admin', via: [:get]
  resources :actions
end
