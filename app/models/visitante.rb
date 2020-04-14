class Visitante < ApplicationRecord
  has_many :detallespersonas, as: :personable
  has_one :contacto, as: :contactable
  accepts_nested_attributes_for :detallespersonas, allow_destroy: true
  accepts_nested_attributes_for :contacto, allow_destroy: true
end

