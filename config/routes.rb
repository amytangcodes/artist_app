Rails.application.routes.draw do
  root 'artists#index'

  get 'artists'  => 'artists#index'
  get 'artists/:artist_id' => 'artists#show'
  post 'artists' => 'artists#create'
  get 'artists/:artist_id/edit' => 'artists#edit'
  put 'artists/:artist_id' => 'artists#update'
  delete 'artists/:artist_id' => 'artists#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
