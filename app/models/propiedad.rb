class Propiedad < ApplicationRecord
  belongs_to :conjunto
  belongs_to :residente
end
