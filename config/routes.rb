Rails.application.routes.draw do
  
  get 'artists'  => 'artists#index'
  get 'artists/:artist_id' => 'artists#show'
  post 'artists' => 'artists#create'
  get 'artists/:artist_id/edit' => 'artists#edit'
  put 'artists/:artist_id' => 'artists#update'
  delete 'artists/:artist_id' => 'artists#destroy'


  get 'tours' => 'tours#index'
  get 'tours/:tour_id' => 'tours#show'
  post 'tours' => 'tours#create'
  get 'tours/:tour_id/edit' => 'tours#edit'
  get 'tours/:tour_id/total_artists' => 'tours#total_artists'
  put 'tours/:tour_id' => 'tours#update'
  delete 'tours/:tour_id' => 'tours#destroy'

  get 'events' => 'events#index'
  get 'events/:event_id' => 'events#show'
  post 'events' => 'events#create'
  get 'events/:event_id/edit' => 'events#edit'
  put 'events/:event_id' => 'events#update'
  delete 'events/:event_id' => 'events#destroy'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
