Rails.application.routes.draw do
  root "visitantes#index"
  
  resources :residentes do 
    resources :detallespersonas, module: :residentes
   end 

  resources :visitantes do 
    resources :detallespersonas, module: :visitantes
   end 


end
