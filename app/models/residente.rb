class Residente < ApplicationRecord
  has_many :detallespersonas, as: :personable
end
