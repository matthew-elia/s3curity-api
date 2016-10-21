Rails.application.routes.draw do

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do
        resources :users
        namespace :users do
          get :api_key
        end
      end
    end
  end

end


