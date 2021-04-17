Rails.application.routes.draw do
  constraints subdomain: 'api' do
  end
  api_version(:module => "V1", :path => {:value => "v1"}) do
    resources :todo_projects
    resources :projects do
      resources :todo_projects
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
