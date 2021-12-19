Rails.application.routes.draw do
  get 'inicio/index'
  get 'apartment/index'
  get 'apartment/show'
  get 'apartment/new'
  post 'apartment/new' => 'apartment#create'
  get 'apartment/:id' => "apartment#show"
  
  get 'building/index'
  get 'building/show'
  get 'building/new'
  post 'building/new' => 'building#create'
  get 'building/:id' => "building#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
