class Residente < ApplicationRecord
  has_many :detallespersonas, as: :personable
  has_one :contacto, as: :contactable
  has_many :propiedades
  has_many :conjuntos, through: :propiedades 
  accepts_nested_attributes_for :detallespersonas, allow_destroy: true
  accepts_nested_attributes_for :contacto, allow_destroy: true
end
