WeboTrack::Engine.routes.draw do
  get 'webousers/new'
  post 'webousers/create'
  get 'webousers/index', as: 'users'
  get 'webousers/assign_asset/:id' => 'webousers#edit_user_to_assign_asset', as: 'assign_asset'
  put 'webousers/assign_asset/:id' => 'webousers#assign_asset_to_user', as: 'assign_asset_update'

  get 'assets/new'
  get 'assets/index', as: 'assets'
  post 'assets/create'
end
