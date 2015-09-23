SwaggerYard::Engine.routes.draw do
   get '/swagger.json', to: 'swagger#index'
   get '/doc', to: 'swagger#doc'

   get '/api', to: 'swagger#index'
   get '/api/*resource', to: 'swagger#show'
end
