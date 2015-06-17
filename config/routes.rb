Rails.application.routes.draw do
  root 'hn#index'

  resources :hn, except: [:show], path: "/" do
    collection do
      get 'loadentries' => 'hn#loadentries' 
      get 'about' => 'hn#about' 
    end
  end
end
