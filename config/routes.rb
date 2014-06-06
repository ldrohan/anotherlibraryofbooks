Rails.application.routes.draw do
  
  root 'pages#index'

  resources :libraries do
    resources :books
  end
end


#  Prefix Verb   URI Pattern                                     Controller#Action
#              root GET    /                                               pages#index
#     library_books GET    /libraries/:library_id/books(.:format)          books#index
#                   POST   /libraries/:library_id/books(.:format)          books#create
#  new_library_book GET    /libraries/:library_id/books/new(.:format)      books#new
# edit_library_book GET    /libraries/:library_id/books/:id/edit(.:format) books#edit
#      library_book GET    /libraries/:library_id/books/:id(.:format)      books#show
#                   PATCH  /libraries/:library_id/books/:id(.:format)      books#update
#                   PUT    /libraries/:library_id/books/:id(.:format)      books#update
#                   DELETE /libraries/:library_id/books/:id(.:format)      books#destroy
#         libraries GET    /libraries(.:format)                            libraries#index
#                   POST   /libraries(.:format)                            libraries#create
#       new_library GET    /libraries/new(.:format)                        libraries#new
#      edit_library GET    /libraries/:id/edit(.:format)                   libraries#edit
#           library GET    /libraries/:id(.:format)                        libraries#show
#                   PATCH  /libraries/:id(.:format)                        libraries#update
#                   PUT    /libraries/:id(.:format)                        libraries#update
#                   DELETE /libraries/:id(.:format)                        libraries#destroy
