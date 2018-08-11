Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :articles do # creates a resource and routes for articles. A controller needs to be generated via cmd
  	resources :comments #second resource and route
  end

  root 'welcome#index' # this sets the root file to index (which is an action)
end
