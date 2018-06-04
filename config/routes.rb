Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :owners, only: :index
  get 'better_owners', to: 'owners#better_index'

end
