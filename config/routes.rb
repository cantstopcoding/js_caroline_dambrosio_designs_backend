Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # namespace the routes
  # namespacing is important because we'll want our backend routes to be associated with an api
  # http://cdamdesigns.com/api to indicates that it's an api endpoint and not just a front end endpoint
  # also good to indicate which versions you're working on i.e. http://cdamdesigns.com/api/v1/items
  # source: https://github.com/AyanaZaire/seeda_syllabus_backend/blob/master/project-build-part2-notes.md
  # source: https://www.youtube.com/watch?v=sLrFiwhMPZU&feature=youtu.be 20:50

  namespace :api do 
    namespace :v1 do 
      resources :items, only: [:index, :create]
      resources :categories, only: [:index]
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
end
