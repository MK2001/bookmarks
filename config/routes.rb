Rails.application.routes.draw do
  get '/bookmarks/:id' => 'application#show'
  get 'new_bookmarks' => 'application#new'
end
