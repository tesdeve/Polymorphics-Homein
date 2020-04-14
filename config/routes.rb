Rails.application.routes.draw do
  resources :contactos
  root "visitantes#index"
  
  resources :residentes do 
    resources :detallespersonas, module: :residentes
   end 

  resources :visitantes do 
    resources :detallespersonas, module: :visitantes
   end 


end
