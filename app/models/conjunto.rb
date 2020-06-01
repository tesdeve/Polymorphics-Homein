class Conjunto < ApplicationRecord
  has_many :propiedades
  has_many :residentes, through: :propiedades 
end
