class Visitante < ApplicationRecord
  has_many :detallespersonas, as: :personable
end
