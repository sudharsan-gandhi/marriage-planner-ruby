Rails.application.routes.draw do
  get 'bridge/options'

  post 'bridge/save'

  get 'session/login'

  get 'session/logout'

  post 'session/handler'

  post 'session/index'

  get 'login/new'

  post 'login/create'

  get 'login/index'

  get 'login/show'

  get 'login/edit'

  get 'login/update'

  get 'login/delete'

  get 'login/destroy'

  get 'itemcategory/new'

  get 'itemcategory/create'

  get 'itemcategory/show'

  get 'itemcategory/index'

  get 'itemcategory/edit'

  get 'itemcategory/update'

  get 'itemcategory/delete'

  get 'itemcategory/destroy'

  get 'item/new'

  get 'item/create'

  get 'item/index'

  get 'item/show'

  get 'item/edit'

  get 'item/update'

  get 'item/delete'

  get 'item/destroy'

  match ':controller(/:action(/:id))', :via => :get

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
