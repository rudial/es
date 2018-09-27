Rails.application.routes.draw do
  get 'main_page/index'

  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'main_page#index', as: 'main_page'
end
