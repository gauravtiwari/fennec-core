Rails.application.routes.draw do

  devise_for :users

  namespace :director do
    get 'projects/trash'
    resources :projects

    get 'dashboard' => 'dashboard#index'
    get '/' => 'dashboard#index'
  end

  get 'news/index'
  get 'welcome/about'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
