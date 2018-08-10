Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles # creates a recource and routes for articles. A controller needs to be generated via cmd

  root 'welcome#index' # this sets the roof file to index (which is an action)
end
